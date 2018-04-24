<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Gallery extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('Mgallery');
    }

    function index() {
        try {
            $newdata = array(
                'FootRecentPost' => $this->Mgallery->ViewNews(),
                'TitlePage' => "Gallery - BEM STIKOM CKI ",
                'year' => date("Y")
            );
            $this->load->view('vGallery', $newdata);
        } catch (Exception $newdata) {
            var_dump($newdata->getMessage());
        }
    }

}
