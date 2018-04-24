<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class M_News extends CI_Model {

    private function SqlQuery() {
        try {
            $exc = array(
                        $this->db->select('*')
                        ->select('posting.id AS PostID')
                        ->select('posts_image.pict1 AS gmb1')
                        ->select('posts_image.pict2 AS gmb2')
                        ->select('Count(post_comments.id) AS totalkomen')
                        ->from('posting')
                        ->join('post_comments', 'post_comments.post_id = posting.id', 'LEFT JOIN')
                        ->join('posts_image', 'posting.post_image = posts_image.id')
                        ->join('anggota_bem', 'posting.post_author = anggota_bem.id')
                        ->where('posting.post_status', 1)
                        ->group_by('posting.id')
                        ->order_by('posting.post_date DESC')
            );
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

    function ReadNews($id) {
        try {
            $this->SqlQuery();
            $this->db->where('posting.id', $id);
            $this->db->where('post_comments.post_id', $id);
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $sql) {
            var_dump($sql->getMessage());
        }
    }

    function Komentar($id) {
        $this->db->select('*');
        $this->db->from('post_comments');
        $this->db->where('post_comments.post_id', $id);
        $this->db->where('post_comments.status', 1);
        $sql = $this->db->get();
        return $sql->result();
    }

    function RelatedPost($title) {
        $this->db->select('*')
                ->select('posting.id AS PostID')
                ->select('posts_image.id AS imgID')
                ->select('post_comments.id AS cmntID')
                ->select('Count(post_comments.id) AS totalkomen')
                ->from('posting')
                ->like('post_title', '' . $title . '')
                ->or_like('post_content', '' . $title . '')
                ->join('posts_image', 'posting.post_image = posts_image.id', 'INNER JOIN')
                ->join('post_comments', 'posting.id = post_comments.post_id', 'INNER JOIN')
                ->group_by('posting.id')
                ->order_by('posting.post_date DESC');
        $sql = $this->db->get();
        return $sql->result();
    }

    function ViewNews($limit, $start) {
        try {
            $this->SqlQuery();
            $this->db->limit($limit, $start);
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $sql) {
            var_dump($sql->getMessage());
        }
    }

}
