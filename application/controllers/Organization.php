<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Organization extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('Morganization');
    }

    public function Structure() {
        try {
            $newdata = array(
                'str' => $this->Morganization->ViewAnggota(),
                'bil1' => $this->Morganization->ganjil(),
                'bil2' => $this->Morganization->genap(),
                'FootRecentPost' => $this->Morganization->ViewNews(),
                'TitlePage' => " - Structure Organization BEM STIKOM CKI ". date("Y")
            );
            $this->load->view('vOrganization', $newdata);
        } catch (Exception $newdata) {
            var_dump($newdata->getMessage());
        }
    }

    public function Visi() {
        try {
            $newdata = array(
                'TitlePage' => "Visi & Misi"
            );
            $this->load->view('vVisiMisi', $newdata);
        } catch (Exception $newdata) {
            var_dump($newdata->getMessage());
        }
    }

}
