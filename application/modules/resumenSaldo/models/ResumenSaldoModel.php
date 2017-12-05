<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class ResumenSaldoModel extends CI_Model{

    function __construct(){
        parent::__construct();
    }

    function obtenerEmpresasNoInversoras(){

        $string = "SELECT id,empresa
                    FROM empresas
                    WHERE status = '1'
                    AND inversor = '0'
                    AND ghost ='0'";

        $result = $this->db->query($string);

        if($result->num_rows() > 0){
            return $result->result();
        }else{
            return false;
        }

    }

    
}
?>
