<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class UKM extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('M_UKM');
    }

    public function IT() {
        try {
            $newdata = array(
                'ukm' => $this->M_UKM->IT(),
                'FootRecentPost' => $this->M_UKM->ViewNews(),
                'JoinUkm' => $this->M_UKM->JoinIT(),
                'TitlePage' => "UKM IT"
            );
            $this->load->view('vUKM', $newdata);
        } catch (Exception $ex) {
            var_dump($ex->getMessage());
        }
    }

    public function PCR() {
        try {
            $newdata = array(
                'ukm' => $this->M_UKM->PCR(),
                'FootRecentPost' => $this->M_UKM->ViewNews(),
                'JoinUkm' => $this->M_UKM->JoinPCR(),
                'TitlePage' => "UKM PCR"
            );
            $this->load->view('vUKM', $newdata);
        } catch (Exception $ex) {
            var_dump($ex->getMessage());
        }
    }

    public function LDK() {
        try {
            $newdata = array(
                'ukm' => $this->M_UKM->LDK(),
                'FootRecentPost' => $this->M_UKM->ViewNews(),
                'JoinUkm' => $this->M_UKM->JoinLDK(),
                'TitlePage' => "UKM LDK"
            );
            $this->load->view('vUKM', $newdata);
        } catch (Exception $ex) {
            var_dump($ex->getMessage());
        }
    }

    public function Rokris() {
        try {
            $newdata = array(
                'ukm' => $this->M_UKM->Rokris(),
                'FootRecentPost' => $this->M_UKM->ViewNews(),
                'JoinUkm' => $this->M_UKM->JoinRokris(),
                'TitlePage' => "UKM Rokris"
            );
            $this->load->view('vUKM', $newdata);
        } catch (Exception $ex) {
            var_dump($ex->getMessage());
        }
    }

    public function CPC() {
        try {
            $newdata = array(
                'ukm' => $this->M_UKM->CPC(),
                'FootRecentPost' => $this->M_UKM->ViewNews(),
                'JoinUkm' => $this->M_UKM->JoinCPC(),
                'TitlePage' => "UKM CPC"
            );
            $this->load->view('vUKM', $newdata);
        } catch (Exception $ex) {
            var_dump($ex->getMessage());
        }
    }

    public function OlahRaga() {
        try {
            $newdata = array(
                'ukm' => $this->M_UKM->OlahRaga(),
                'FootRecentPost' => $this->M_UKM->ViewNews(),
                'JoinUkm' => $this->M_UKM->JoinOlahRaga(),
                'TitlePage' => "UKM Olah Raga"
            );
            $this->load->view('vUKM', $newdata);
        } catch (Exception $ex) {
            var_dump($ex->getMessage());
        }
    }

    public function Matras() {
        try {
            $newdata = array(
                'ukm' => $this->M_UKM->Matras(),
                'FootRecentPost' => $this->M_UKM->ViewNews(),
                'JoinUkm' => $this->M_UKM->JoinMatras(),
                'TitlePage' => "UKM Matras"
            );
            $this->load->view('vUKM', $newdata);
        } catch (Exception $ex) {
            var_dump($ex->getMessage());
        }
    }

    public function Musik() {
        try {
            $newdata = array(
                'ukm' => $this->M_UKM->Musik(),
                'FootRecentPost' => $this->M_UKM->ViewNews(),
                'JoinUkm' => $this->M_UKM->JoinMusik(),
                'TitlePage' => "UKM Musik"
            );
            $this->load->view('vUKM', $newdata);
        } catch (Exception $ex) {
            var_dump($ex->getMessage());
        }
    }

}
