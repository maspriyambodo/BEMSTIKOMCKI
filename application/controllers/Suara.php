<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Suara extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('M_ContactUS');
        $this->load->library('email', 'security');
        $this->load->helper('captcha');
    }

    private function ConfigCaptcha() {
        $vals = array(
            'img_path' => './assets/captcha/',
            'img_url' => base_url('assets/captcha/'),
            'img_width' => '200',
            'img_height' => '50',
            'expiration' => 7200,
            'font_path' => FCPATH . './assets/css/fonts/Ubuntu-C.ttf',
            'colors' => array(
                'background' => array(255, 131, 0),
                'border' => array(255, 255, 255),
                'text' => array(255, 255, 255),
                'grid' => array(255, 0, 0))
        );
        return $vals;
    }

    function RefreshCaptcha() {
        $vals = array(
            'words' => 'word',
            'img_path' => './assets/captcha/',
            'img_url' => base_url('assets/captcha/'),
            'img_width' => '200',
            'img_height' => '50',
            'expiration' => 7200,
            'font_path' => FCPATH . './assets/css/fonts/Ubuntu-C.ttf',
            'colors' => array(
                'background' => array(255, 131, 0),
                'border' => array(255, 255, 255),
                'text' => array(255, 255, 255),
                'grid' => array(255, 0, 0))
        );
        $captcha = create_captcha($vals);
        $this->session->set_userdata($vals);
        echo $captcha['image'], '<a href="javascript:void(0);" style="margin:0px 10px;" title="Refresh Code" class="refreshCaptcha" ><img src="' . base_url('assets/images/preloader-dark.gif') . '"/></a>';
    }

    public function index() {
        try {

            $captcha = create_captcha($this->ConfigCaptcha());
            $newdata = array(
                'TitlePage' => "Contact Us",
                'id' => "",
                'nama' => $this->input->post('nametxt'),
                'E_Mail' => $this->input->post('emailtxt'),
                'tlp' => $this->input->post('phtxt'),
                'judul' => $this->input->post('sbjtxt'),
                'nim' => $this->input->post('nimtxt'),
                'pesan' => $this->input->post('msgtxt'),
                'tgl' => date("Y-m-d H:i:s"),
                'ipaddress' => $this->input->ip_address(),
                'images' => $captcha['image'],
                'words' => $captcha['word']
            );
            $this->session->set_userdata($newdata);
            $this->load->view('vContactUs', $this->security->xss_clean($newdata));
        } catch (Exception $e) {
            var_dump($e->getMessage());
        }
    }

    function SendMessage() {
        if ($this->input->post('captchatxt') == $_SESSION['words']) {

            $data = array(
                'id' => "",
                'nama' => $this->input->post('nametxt'),
                'E_Mail' => $this->input->post('emailtxt'),
                'tlp' => $this->input->post('phtxt'),
                'judul' => $this->input->post('sbjtxt'),
                'nim' => $this->input->post('nimtxt'),
                'pesan' => $this->input->post('msgtxt'),
                'tgl' => date("Y-m-d H:i:s"),
                'ipaddress' => $this->input->ip_address()
            );
            if (empty($data['nama'])) {
                echo'<script>alert("Anda belum mengisi Nama Lengkap");</script>';
                redirect(base_url('Suara'), 'refresh');
            } elseif (empty($data['E_Mail'])) {
                echo'<script>alert("Anda belum mengisi Email");</script>';
                redirect(base_url('Suara'), 'refresh');
            } elseif (empty($data['tlp'])) {
                echo'<script>alert("Anda belum mengisi Telpon");</script>';
                redirect(base_url('Suara'), 'refresh');
            } elseif (empty($data['judul'])) {
                echo'<script>alert("Anda belum mengisi Judul");</script>';
                redirect(base_url('Suara'), 'refresh');
            } elseif (empty($data['nim'])) {
                echo'<script>alert("Anda belum mengisi N I M");</script>';
                redirect(base_url('Suara'), 'refresh');
            } elseif (empty($data['pesan'])) {
                echo'<script>alert("Anda belum mengisi Pesan");</script>';
                redirect(base_url('Suara'), 'refresh');
            } else {
                $this->M_ContactUS->Insert($data);
            }
        } else {
            echo '<script>alert("Error, try again");</script>';
            redirect(base_url('Suara'), 'refresh');
        }
    }

}
