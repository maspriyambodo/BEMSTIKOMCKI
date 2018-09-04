<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Event extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->helper('text');
        $this->load->library('pagination');
    }

    function paswa() {
        $newdata = array(
            'TitlePage' => " PASWA 2018 - BEM STIKOM CKI " . date("Y"),
        );
        $this->load->view('vPaswa', $newdata);
    }

    function external() {
        $newdata = array(
            'TitlePage' => "CKI competition External ",
        );
        $this->load->view('vExternal', $newdata);
    }

}

?>