<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('Mhome');
        $this->load->model('M_News');
    }

    public function index() {
        try {
            $newdata = array(
                'Anggota' => $this->Mhome->ViewAnggota(),
                'FootRecentPost' => $this->Mhome->ViewNews(),
                'TitlePage' => " - BEM STIKOM CKI " . date("Y"),
            );
            $this->load->view('vHome', $newdata);
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

    public function View($id) {
        try {
            $newdata = array(
                'profile' => $this->Mhome->ViewProfile($id)
            );
            $this->load->view('Profile', $newdata);
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

}
