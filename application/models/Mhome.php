<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Mhome extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    private function SqlQuery() {
        try {
            $sqlQuery = ['select1' => $this->db->select('*'),
                'select2' => $this->db->select('anggota_bem.id AS anggota_bem_id'),
                'from' => $this->db->from('anggota_bem'),
                'join1' => $this->db->join('tjabatan', 'anggota_bem.jabatan = tjabatan.id', 'INNER JOIN'),
                'join2' => $this->db->join('sosial_media', 'anggota_bem.id = sosial_media.id', 'INNER JOIN'),
                'join3' => $this->db->join('skills', 'anggota_bem.id = skills.id', 'INNER JOIN'),
                'join4' => $this->db->join('m_kelas', 'anggota_bem.kelas = m_kelas.id', 'INNER JOIN'),
                $this->db->where('status', 1)
            ];
            return $sqlQuery;
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
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

    function ViewAnggota() {
        try {
            $this->SqlQuery();
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

    function ViewProfile($id) {
        try {
            $this->SqlQuery();
            $this->db->where('anggota_bem.id', $id);
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

}
