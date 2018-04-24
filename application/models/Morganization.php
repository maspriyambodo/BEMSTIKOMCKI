<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Morganization extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    private function SqlQuery() {
        try {
            $sqlQuery = [
                'select1' => $this->db->select('*'),
                'select2' => $this->db->select('anggota_bem.id AS anggota_bem_id'),
                'from' => $this->db->from('anggota_bem'),
                'join1' => $this->db->join('tjabatan', 'anggota_bem.jabatan = tjabatan.id', 'INNER JOIN'),
                'join2' => $this->db->join('sosial_media', 'anggota_bem.id = sosial_media.id', 'INNER JOIN'),
                'join3' => $this->db->join('skills', 'anggota_bem.id = skills.id', 'INNER JOIN'),
                'join4' => $this->db->join('m_kelas', 'anggota_bem.kelas = m_kelas.id', 'INNER JOIN'),
                'where' => $this->db->where('status', 1),
                'group_by' => $this->db->group_by('anggota_bem.id'),
                'order_by' => $this->db->order_by('anggota_bem.id ASC')
            ];
            return $sqlQuery;
        } catch (Exception $sqlQuery) {
            var_dump($sqlQuery->getMessage());
        }
    }

    private function SqlQuery1() {
        try {
            $SqlQuery1 = [
                'select1' => $this->db->select('*'),
                'select2' => $this->db->select('posting.id AS PostID'),
                'select3' => $this->db->select('Count(post_comments.id) AS totalkomen'),
                'from' => $this->db->from('posting'),
                'join' => $this->db->join('post_comments', 'posting.id = post_comments.post_id', 'LEFT JOIN'),
                'join1' => $this->db->join('posts_image', 'posting.post_image = posts_image.id'),
                'limit' => $this->db->limit(5),
                'where' => $this->db->where('posting.post_status', 1),
                'group_by' => $this->db->group_by('posting.id'),
                'order_by' => $this->db->order_by('posting.id DESC'),
            ];
            return $SqlQuery1;
        } catch (Exception $SqlQuery1) {
            var_dump($SqlQuery1->getMessage());
        }
    }

    function ganjil() {
        try {
            $query = $this->db->query('SELECT * FROM `tjabatan` WHERE `id` %2 <> 0');
            $result = $query->result();
            return $result;
        } catch (Exception $result) {
            var_dump($result->getMessage());
        }
    }

    function genap() {
        try {
            $query = $this->db->query('SELECT * FROM `tjabatan` WHERE `id` %2 = 0');
            $result = $query->result();
            return $result;
        } catch (Exception $result) {
            var_dump($result->getMessage());
        }
    }

    function ViewAnggota() {
        try {
            $this->SqlQuery();
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $sql) {
            var_dump($sql->getMessage());
        }
    }

    function ViewNews() {
        try {
            $this->SqlQuery1();
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $sql) {
            var_dump($sql->getMessage());
        }
    }

}
