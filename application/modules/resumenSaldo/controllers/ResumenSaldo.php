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

            

            $this->load->view('include/header',$header);
            $this->load->view('resumenSaldoView', $data);
            $this->load->view('include/footer');
            //$this->load->view('dashboardScript');
        }else{
            redirect(base_url() , 'refresh');
        }

    }

    private function generarTabla($empresas){
        $html = '';

        $html .= "<table class='table table-bordered'>";

        $html .= "<tr><th style='background: #000'></th>";

        foreach ($empresas as $empresa) {
            $html .= "<th colspan='2' style='background: grey; text-align: center'>".$empresa->empresa."</th>";
        }

        $html .= "</tr><tr><td style='background: #000'></td>";

        foreach ($empresas as $empresa) {
            $html .= "<td align='center' style='background: #D9D9D9'>FAVOR</td><td align='center' style='background: #D9D9D9'>CONTRA</td>";
        }

        $html .= "</tr></table>";

        return $html;

    }

} 