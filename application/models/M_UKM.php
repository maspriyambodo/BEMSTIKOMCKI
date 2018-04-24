<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class M_UKM extends CI_Model {

    private function SqlQuery() {
        $this->db->select('*');
        $this->db->from('m_ukm');
//        $this->db->join('ukm', 'ukm ON m_ukm.nama_ukm = ukm.nama_ukm');
        return;
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

    function IT() {
        try {
            $this->SqlQuery();
            $this->db->where('m_ukm.nama_ukm', 'IT');
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

    function JoinIT() {
        try {
            $this->SqlQuery();
            $this->db->where('m_ukm.nama_ukm', 'IT');
            $this->db->join('ukm', 'ukm ON m_ukm.nama_ukm = ukm.nama_ukm');
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

    function PCR() {
        try {
            $this->SqlQuery();
            $this->db->where('m_ukm.nama_ukm', 'PCR');
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

    function JoinPCR() {
        try {
            $this->SqlQuery();
            $this->db->where('m_ukm.nama_ukm', 'PCR');
            $this->db->join('ukm', 'ukm ON m_ukm.nama_ukm = ukm.nama_ukm');
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

    function LDK() {
        try {
            $this->SqlQuery();
            $this->db->where('m_ukm.nama_ukm', 'LDK');
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

    function JoinLDK() {
        try {
            $this->SqlQuery();
            $this->db->where('m_ukm.nama_ukm', 'LDK');
            $this->db->join('ukm', 'ukm ON m_ukm.nama_ukm = ukm.nama_ukm');
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

    function Rokris() {
        try {
            $this->SqlQuery();
            $this->db->where('m_ukm.nama_ukm', 'Rokris');
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

    function JoinRokris() {
        try {
            $this->SqlQuery();
            $this->db->where('m_ukm.nama_ukm', 'Rokris');
            $this->db->join('ukm', 'ukm ON m_ukm.nama_ukm = ukm.nama_ukm');
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

    function CPC() {
        try {
            $this->SqlQuery();
            $this->db->where('m_ukm.nama_ukm', 'CPC');
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

    function JoinCPC() {
        try {
            $this->SqlQuery();
            $this->db->where('m_ukm.nama_ukm', 'CPC');
            $this->db->join('ukm', 'ukm ON m_ukm.nama_ukm = ukm.nama_ukm');
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

    function OlahRaga() {
        try {
            $this->SqlQuery();
            $this->db->where('m_ukm.nama_ukm', 'OlahRaga');
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

    function JoinOlahRaga() {
        try {
            $this->SqlQuery();
            $this->db->where('m_ukm.nama_ukm', 'OlahRaga');
            $this->db->join('ukm', 'ukm ON m_ukm.nama_ukm = ukm.nama_ukm');
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

    function Matras() {
        try {
            $this->SqlQuery();
            $this->db->where('m_ukm.nama_ukm', 'Matras');
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

    function JoinMatras() {
        try {
            $this->SqlQuery();
            $this->db->where('m_ukm.nama_ukm', 'Matras');
            $this->db->join('ukm', 'ukm ON m_ukm.nama_ukm = ukm.nama_ukm');
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

    function Musik() {
        try {
            $this->SqlQuery();
            $this->db->where('m_ukm.nama_ukm', 'Musik');
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

    function JoinMusik() {
        try {
            $this->SqlQuery();
            $this->db->where('m_ukm.nama_ukm', 'Musik');
            $this->db->join('ukm', 'ukm ON m_ukm.nama_ukm = ukm.nama_ukm');
            $sql = $this->db->get();
            return $sql->result();
        } catch (Exception $exc) {
            var_dump($exc->getMessage());
        }
    }

}
