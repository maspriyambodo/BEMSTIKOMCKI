<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Mgallery extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    private function SqlQuery1() {
        try {
            $this->db->select('*');
            $this->db->select('posting.id AS PostID');
            $this->db->select('Count(post_comments.id) AS totalkomen');
            $this->db->from('posting');
            $this->db->join('post_comments', 'posting.id = post_comments.post_id', 'LEFT JOIN');
            $this->db->join('posts_image', 'posting.post_image = posts_image.id');
            $this->db->limit(5);
            $this->db->where('posting.post_status', 1);
            $this->db->group_by('posting.id');
            $this->db->order_by('posting.id DESC');
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

    function ViewNews() {
        try {
            $this->SqlQuery1();
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

}
