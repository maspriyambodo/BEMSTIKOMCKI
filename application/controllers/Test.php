<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Test extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('mTest');
        $this->load->helper(array('captcha'));
    }

    public function index() {
        try {
            $vals = array(
                'img_path' => './assets/captcha/',
                'img_url' => base_url('assets/captcha/'),
                'img_width' => '200',
                'img_height' => '50',
                'expiration' => 7200,
            );
            $captcha = create_captcha($vals);
            $data['images'] = $captcha['image'];
            $this->load->view('vTest', $data);
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

}
