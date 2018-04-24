<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Mblog extends CI_Model {

    private function SqlQuery1() {
        try {
            $data = [
                'select1' => $this->db->select('*'),
                'select2' => $this->db->select('posting.id AS PostID'),
                'select3' => $this->db->select('posting.id AS PostID'),
                'select4' => $this->db->select('Count(post_comments.id) AS totalkomen'),
                'from' => $this->db->from('posting'),
                'join1' => $this->db->join('post_comments', 'posting.id = post_comments.post_id', 'LEFT JOIN'),
                'join2' => $this->db->join('posts_image', 'posting.post_image = posts_image.id'),
                'limit' => $this->db->limit(5),
                'where' => $this->db->where('posting.post_status', 1),
                'group_by' => $this->db->group_by('posting.id'),
                'order_by' => $this->db->order_by('posting.id DESC')
            ];
        } catch (Exception $data) {
            var_dump($data->getMessage());
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
