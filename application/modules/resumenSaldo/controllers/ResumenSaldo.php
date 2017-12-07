<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class ResumenSaldo extends MX_Controller{

    private $user;

    function __construct(){
        parent::__construct();
        $this->load->model('ResumenSaldoModel','model');
        $this->user = $this->session->userdata('logged_in');
        if(! ini_get('date.timezone'))
        {
            date_default_timezone_set('America/Caracas');
        }
    }

    public function index(){
        
        if($this->user){

            $header['session']      = $this->user;
            $header['red']          = $this->generalModel->obtenerMenuRed();

            $empresas = $this->model->obtenerEmpresasNoInversoras();
            $data['table'] = $this->generarTabla($empresas);
            $data['detalles'] = $this->model->obtenerResumenSaldoContra(3,7);

            

            $this->load->view('include/header',$header);
            $this->load->view('resumenSaldoView', $data);
            $this->load->view('include/footer');
            $this->load->view('resumenSaldoScript');
        }else{
            redirect(base_url() , 'refresh');
        }

    }

    public function detallesSaldo(){

        $detalles = '';
        $json = '';

        switch ($this->input->post('op')) {
            case '1':
                $detalles = $this->model->obtenerResumenSaldoFavor($this->input->post('origen'), $this->input->post('destino'));
                break;
            
            case '2':
                $detalles = $this->model->obtenerResumenSaldoContra($this->input->post('origen'), $this->input->post('destino'));
                break;
        }

        $json = array('data' => $detalles);
        
        echo json_encode($json);
    }

    private function generarTabla($empresas){
        $html = '';
        $idsEmpresasCol = array();

        $html .= "<table class='table tabla table-striped table-bordered table-hover'>";

        $html .= "<thead>";

        $html .= "<tr><th></th>";

        foreach ($empresas as $empresa) {
            array_push($idsEmpresasCol, $empresa->id);
            $html .= "<th colspan='2' style='text-align: center'>".$empresa->empresa." (".$empresa->id.")</th>";
        }

        $html .= "</tr><tr><td></td>";

        foreach ($empresas as $empresa) {
            $html .= "<td align='center' style='background: #D9D9D9'>FAVOR</td><td align='center' style='background: #D9D9D9'>CONTRA</td>";
        }

        $html .= "</tr></thead><tbody>";

        foreach ($empresas as $empresa) {
            $html .= "<tr><td style='text-align: center; font-weight: bold'>" . $empresa->empresa . " (".$empresa->id.")</td>";
            for ($i=0; $i < count($idsEmpresasCol) ; $i++) { 
                $favor = $this->getFavor($empresa->id, $idsEmpresasCol[$i]);
                if ($favor == 0) {
                    $html .= "<td align='center'>".$favor."</td>";
                }else {
                    $html .= "<td align='center'><a class='detalleSaldo' href='#' data-toggle='modal' data-target='#view-resumen-saldo' data-op='1' data-origen='".$empresa->id."' data-destino='".$idsEmpresasCol[$i]."' nombre-origen='".$this->model->obtenerNombreEmpresa($empresa->id)."' nombre-destino='".$this->model->obtenerNombreEmpresa($idsEmpresasCol[$i])."'>".formato_salida($favor)."</a></td>";
                }
                $contra = $this->getContra($empresa->id, $idsEmpresasCol[$i]);
                if ($contra == 0) {
                    $html .= "<td align='center'>".$contra."</td>";
                }else {
                    #$html .= "<td>---</td>";
                    $html .= "<td align='center'><a class='detalleSaldo' href='#' data-toggle='modal' data-target='#view-resumen-saldo' data-op='2' data-origen='".$empresa->id."' data-destino='".$idsEmpresasCol[$i]."' nombre-origen='".$this->model->obtenerNombreEmpresa($empresa->id)."' nombre-destino='".$this->model->obtenerNombreEmpresa($idsEmpresasCol[$i])."'>".formato_salida($contra)."</a></td>";
                }
            }
            $html .= "</tr>";
        }

        $html .= "</tbody></table>";

        return $html;

    }

    private function getFavor($empOrigen, $empDestino){
        $sumaFavor = 0;
        $resultFavor = $this->model->obtenerResumenSaldoFavor($empOrigen, $empDestino);

        if ($resultFavor) {
            foreach ($resultFavor as $m) {
                $sumaFavor += $m->monto;
            }
            return $sumaFavor;
        } else {
            return 0;
        }
    }

    private function getContra($empOrigen, $empDestino){
        $sumaContra = 0;
        $resultContra = $this->model->obtenerResumenSaldoContra($empOrigen, $empDestino);

        if ($resultContra) {
            foreach ($resultContra as $m) {
                $sumaContra += $m->monto;
            }
            return $sumaContra;
        } else {
            return 0;
        }
    }

} 