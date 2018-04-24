<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class M_ContactUS extends CI_Model {

    function Insert($data) {
        try {
            $this->db->trans_start();
            $sql = $this->db->insert('suara_mahasiswa', $data);
            $this->db->trans_complete();
            if ($this->db->trans_status() === FALSE) {
                return $sql;
            } else {
                echo '<!DOCTYPE html>
<html dir="ltr" lang="en-US">
    <head>
        <meta charset="UTF-8">
        <title>Success</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="author" content="BEMSTIKOMCKI">
        <link href="' . base_url('assets/style.css') . '" type="text/css" rel="stylesheet">
        <link href="' . base_url('assets/css/magnific-popup.css') . '" type="text/css" rel="stylesheet">
    <body class="stretched">
        <div class="modal-on-load" data-target="#myModal1"></div>
        <div class="modal1 mfp-hide" id="myModal1">
            <div class="block divcenter" style="background-color: #FFF; max-width: 500px;">
                <div class="center" style="padding: 50px;">
                    <h3>
                    Terima Kasih ' . $data['nama'] . ' !
                    </h3>
                    <p class="text-justify nobottommargin">
                        Kami merasa senang atas kunjungan anda dan kami bangga atas kepercayaan anda pada kami,merupakan suatu kehormatan dan tanggung jawab kami dalam melayani teman mahasiswa agar puas dan tidak kecewa dengan<br> <b>BEM STIKOM CKI</b>
                    </p>
                </div>
                <div class="section center nomargin" style="padding: 30px;">
                    <a href="' . base_url() . '" class="button" onClick="$(location).attr("href",' . base_url() . ');return false;">OK</a>
                </div>
            </div>
        </div>
        <div id="gotoTop" class="icon-angle-up"></div>
        <script src="' . base_url('assets/js/jquery.js') . '"></script>
        <script src="' . base_url('assets/js/plugins.js') . '"></script>
        <script src="' . base_url('assets/js/functions.js') . '"></script>
    </body>
</html>';
            }
        } catch (Exception $sql) {
            var_dump($sql);
        }
    }

}
