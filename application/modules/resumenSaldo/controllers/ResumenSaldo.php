<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class ResumenSaldo extends MX_Controller{

    private $user;

    function __construct(){
        parent::__construct();
        //$this->load->model('dashboardModel','model');
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

            

            $this->load->view('include/header',$header);
            $this->load->view('resumenSaldoView', array("title" => 'Resumen Saldo'));
            $this->load->view('include/footer');
            //$this->load->view('dashboardScript');
        }else{
            redirect(base_url() , 'refresh');
        }

    }

} 