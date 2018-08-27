<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('ademin/M_Dashboard');
    }

    function index() {
        try {
            $newdata = array(
                'Suara' => $this->M_Dashboard->SuaraMahasiswa(),
                'TitlePage' => " Administrator BEM STIKOM CKI",
                'year' => date("Y")
            );
            $this->load->view('ademin/vDashboard', $newdata);
        } catch (Exception $e) {
            var_dump($e->getMessage());
        }
    }

}
