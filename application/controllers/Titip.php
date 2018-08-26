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

		$id = $data_user[0]->id;
		$foto_penitip = $data_user[0]->foto_penitip;
		$foto_barang_titipan = $data_user[0]->foto_barang_titipan;
		$foto_ktp_asli = $data_user[0]->foto_ktp_asli;
		$isi_kode_ktp_asli = $data_user[0]->isi_kode_ktp_asli;
		$username = $data_user[0]->username;
		$nomor_antrian = $data_user[0]->nomor_antrian;

		// permainan verifikasi?

		$verifikasi = $data_user[0]->verifikasi;

		if ($nomor_antrian == 0 && $verifikasi == 'iya'){
			redirect(base_url().'index.php/user/masuk_antrian');
		}
		$sisa = '';
		if ($nomor_antrian >= $sekarang){
			$sisa = (int)$nomor_antrian - (int)$sekarang;
		} else {
			$sisa = '-';
		}

		// giliran masukkan data

		$data = array(
			'sekarang' => $sekarang,
			'nomor_antrian' => $nomor_antrian,
			'sisa' => $sisa,
			'nama_alias' => $nama_alias,
			'ktp_alias' => $ktp_alias,
			'foto_diri' => $foto_diri,
			'pengikut_nama' => $pengikut_nama,
			'pengikut_ktp' => $pengikut_ktp,
			'pengikut_foto_diri' => $pengikut_foto_diri,
			'pengikut_foto_ktp' => $pengikut_foto_ktp,
			'jenis_besuk' => $jenis_besuk,
			'qrcode' => $qrcode,
			'surat_besukan' => $surat_besukan,
			'verifikasi' => $verifikasi
		);

		// $this->load->view('tampil_antrian.php', $data);
		$this->load->view('layout/default', array(
			'judul' => 'Tampil Antrian',
			'isi' => 'tampil_antrian',
			'isi_parameter' => $data
		));
	}

}
