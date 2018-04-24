<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class M_Dashboard extends CI_Model {

    function SuaraMahasiswa() {
        $this->db->select('*')
                ->from('suara_mahasiswa')
                ->where('suara_mahasiswa.stts_read', 1)
                ->group_by('suara_mahasiswa.id')
                ->order_by('suara_mahasiswa.tgl DESC');
        $sql = $this->db->get();
        return $sql->result();
    }

}
