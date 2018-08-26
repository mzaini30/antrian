<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Titip extends CI_Controller {

	// cek login

	public function __construct(){
		parent::__construct();
		$this->load->library('Session/session');
		if ($this->session->userdata('status') != 'login'){
			redirect(base_url().'index.php/login');
		}
		function tampil($judul, $isi, $parameter){

			// https://stackoverflow.com/questions/27384117/codeigniter-using-this-when-not-in-object-context-in-function

			$ci =& get_instance();

			$ci->load->view('layout/default', array(
				'judul' => $judul,
				'isi' => $isi,
				'isi_parameter' => $parameter
			));	
		}
	}

	public function index(){
		if (strtolower($this->session->userdata('username')) == 'admin'){
			redirect(base_url().'index.php/admin');
		}
		$this->tampil_antrian();
	}

	public function tampil_antrian(){
		$data_antrian = $this->user_database->tampil_data('antrian_titip');
		$sekarang = $data_antrian[0]->nomor_antrian;
		$username = $this->session->userdata('username');
		$data_titip = $this->user_database->tampil_data_where('titip', array('username' => $username))->result();
		$nomor_antrian = $data_titip[0]->nomor_antrian;

		// olah data, ada qrcode juga di sini

		$id = $data_titip[0]->id;
		$foto_penitip = $data_titip[0]->foto_penitip;
		$foto_barang_titipan = $data_titip[0]->foto_barang_titipan;
		$foto_ktp_asli = $data_titip[0]->foto_ktp_asli;
		$isi_kode_ktp_asli = $data_titip[0]->isi_kode_ktp_asli;
		$username = $data_titip[0]->username;

		// permainan verifikasi?

		$verifikasi = $data_user[0]->verifikasi;

		if ($nomor_antrian == 0 && $verifikasi == 'iya'){
			redirect(base_url().'index.php/titip/masuk_antrian');
		}
		$sisa = '';
		if ($nomor_antrian >= $sekarang){
			$sisa = (int)$nomor_antrian - (int)$sekarang;
		} else {
			$sisa = '-';
		}

		// giliran masukkan data

		$data = array(
			'foto_penitip' => $foto_penitip,
			'foto_barang_titipan' => $foto_barang_titipan,
			'foto_ktp_asli' => $foto_ktp_asli,
			'isi_kode_ktp_asli' => $isi_kode_ktp_asli,
			'username' => $username,
			'nomor_antrian' => $nomor_antrian,
			'verifikasi' => $verifikasi
		);

		// $this->load->view('tampil_antrian.php', $data);
		$this->load->view('layout/default', array(
			'judul' => 'Tampil Antrian',
			'isi' => 'titip/tampil_antrian',
			'isi_parameter' => $data
		));
	}

	// main ajax untuk tampil antrian

	public function antrian_sekarang(){
		$data_antrian = $this->user_database->tampil_data('antrian_titip');
		$sekarang = $data_antrian[0]->nomor_antrian;
		$data = array(
			'tertinggi' => $sekarang
		);
		$this->load->view('titip/data_tertinggi', $data);
	}

}
