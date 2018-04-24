<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('Mblog');
    }

    function index() {
        try {
            $newdata = array(
                'FootRecentPost' => $this->Mblog->ViewNews(),
                'TitlePage' => "Blog - BEM STIKOM CKI ",
                'year' => date("Y")
            );
            $this->load->view('vBlog', $newdata);
        } catch (Exception $e) {
            var_dump($e->getMessage());
        }
    }

}
