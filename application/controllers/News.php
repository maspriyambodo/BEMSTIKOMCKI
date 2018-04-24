<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class News extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('M_News');
        $this->load->helper('text');
        $this->load->library('pagination');
    }

    function index() {
        try {
            $config = array('base_url' => base_url('News/index/'), 'total_rows' => $this->db->count_all('anggota_bem'), 'per_page' => 12, 'uri_segment' => 3, 'first_link' => 'First', 'last_link' => 'Last', 'next_link' => 'Next', 'prev_link' => 'Prev', 'full_tag_open' => '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">', 'full_tag_close' => '</ul></nav></div>', 'num_tag_open' => '<li class="page-item"><span class="page-link">', 'num_tag_close' => '</span></li>', 'cur_tag_open' => '<li class="page-item active"><span class="page-link">', 'cur_tag_close' => '<span class="sr-only">(current)</span></span></li>', 'next_tag_open' => '<li class="page-item"><span class="page-link">', 'next_tagl_close' => '<span aria-hidden="true">&raquo;</span></span></li>', 'prev_tag_open' => '<li class="page-item"><span class="page-link">', 'prev_tagl_close' => '</span>Next</li>', 'first_tag_open' => '<li class="page-item"><span class="page-link">', 'first_tagl_close' => '</span></li>', 'last_tag_open' => '<li class="page-item"><span class="page-link">', 'last_tagl_close' => '</span></li>');
            $this->pagination->initialize($config);
            $newdata = array(
                'data' => $this->M_News->ViewNews($config["per_page"], ($this->uri->segment(3)) ? $this->uri->segment(3) : 0),
                'FootRecentPost' => $this->M_News->ViewNews(5, 0),
                'TitlePage' => "News BEM STIKOM CKI ",
                'year' => date("Y"),
                'pagination' => $this->pagination->create_links()
            );
            $this->load->view('vNews', $newdata);
        } catch (Exception $newdata) {
            var_dump($newdata->getMessage());
        }
    }

    function Read($id) {
        try {
            $this->uri->segment(3);
            foreach ($this->M_News->ReadNews($id) as $value) {
                $title = $value->post_title;
            }
            $newdata = array(
                'TitlePage' => $title,
                'View' => $this->M_News->ReadNews($id),
                'Komentar' => $this->M_News->komentar($id),
                'FootRecentPost' => $this->M_News->ViewNews(5, 0),
                'Related' => $this->M_News->RelatedPost($title)
            );
            $this->load->view('vBlog', $newdata);
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

}
