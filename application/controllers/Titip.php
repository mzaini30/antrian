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

	public function antrian_user(){
		$username = $this->session->userdata('username');
		$data_user = $this->user_database->tampil_data_where('titip', array('username' => $username))->result();
		$nomor_antrian_user = $data_user[0]->nomor_antrian;
		$data = array(
			'tertinggi' => $nomor_antrian_user
		);
		$this->load->view('titip/data_tertinggi', $data);
	}

	public function antrian_sisa(){
		$data_antrian = $this->user_database->tampil_data('antrian_titip');
		$sekarang = $data_antrian[0]->nomor_antrian;
		$username = $this->session->userdata('username');
		$data_user = $this->user_database->tampil_data_where('titip', array('username' => $username))->result();
		$nomor_antrian_user = $data_user[0]->nomor_antrian;
		$verifikasi = $data_user[0]->verifikasi;
		if ($nomor_antrian_user == 0 && $verifikasi != 'tidak'){
			echo '<script>location = \''.base_url().'index.php/titip/masuk_antrian\';</script>';
		}
		$sisa = '';
		if ($nomor_antrian_user >= $sekarang){
			$sisa = (int)$nomor_antrian_user - (int)$sekarang;
		} else {
			$sisa = '-';
		}
		$data = array(
			'tertinggi' => $sisa
		);
		$this->load->view('titip/data_tertinggi', $data);
	}

	public function reload(){
		$username = $this->session->userdata('username');
		$data_verifikasi = $this->db->get_where('titip', array(
			'username' => $username
		))->result();
		$verifikasi_reload = $data_verifikasi[0]->verifikasi_reload;
		if ($verifikasi_reload == 'mulai'){
			echo '<script>location.reload();</script>';
			$this->db->update('titip', array(
				'verifikasi_reload' => ''
			), array(
				'username' => $username
			));
		}
	}

	// masuk antrian

	public function masuk_antrian(){
		$username = $this->session->userdata('username');
		$data_user = $this->user_database->tampil_data_where('titip', array('username' => $username))->result();
		$nomor_antrian = $data_user[0]->nomor_antrian;
		if ($nomor_antrian != 0){
			redirect(base_url().'index.php/titip/tampil_antrian');
		}
		$data_tertinggi = $this->user_database->tampil_data('titip', 'order by nomor_antrian desc');
		$nomor_antrian_tertinggi = $data_tertinggi[0]->nomor_antrian;
		$sisa_nomor_antrian = 160 - $nomor_antrian_tertinggi;
		$data = array(
			'nomor_antrian_tertinggi' => $nomor_antrian_tertinggi,
			'sisa_nomor_antrian' => $sisa_nomor_antrian
		);
		// $this->load->view('masuk_antrian', $data);
		$this->load->view('layout/default', array(
			'judul' => 'Masuk Antrian',
			'isi' => 'titip/masuk_antrian',
			'isi_parameter' => $data
		));
	}

	public function data_tertinggi(){

		// ajax data tertinggi (untuk user)

		$data_tertinggi = $this->user_database->tampil_data('titip', 'order by nomor_antrian desc');
		$nomor_antrian_tertinggi = $data_tertinggi[0]->nomor_antrian;
		$data = array(
			'tertinggi' => $nomor_antrian_tertinggi
		);
		$this->load->view('titip/data_tertinggi', $data);
	}

	public function sisa_antrian(){

		// ajax sisa antrian

		$data_tertinggi = $this->user_database->tampil_data('titip', 'order by nomor_antrian desc');
		$nomor_antrian_tertinggi = $data_tertinggi[0]->nomor_antrian;
		$sisa_antrian = 160 - $nomor_antrian_tertinggi;
		$data = array(
			'tertinggi' => $sisa_antrian
		);
		$this->load->view('titip/data_tertinggi', $data);	
	}

	// ambil nomor antrian

	public function ambil_nomor_antrian(){

		// cek jamnya dulu baru jalankan yang lain. Kalau jamnya salah, redirect ke blog yang menerangkan jam besuk yang benar

		// <div class="alert alert-info">Maksimal besukan 160 orang (di luar pengikut). Mengambil nomor antrian hanya diperbolehkan pada pukul 08.00-09.00 dan 14.00-16.00</div>

		$waktu_1 = 8;
		// $waktu_1 = 10;
		$waktu_awal_2 = 14;
		$waktu_akhir_2 = 15;
		// $waktu_akhir_2 = 17;

		// $waktu = gmdate("H", time()+60*60*8);
		$waktu = date("H");

		if (!($waktu == $waktu_1) && !($waktu_awal_2 <= $waktu && $waktu <= $waktu_akhir_2)){
			// redirect(base_url().'index.php/info/bukan_waktu_daftar_besukan');

			// waktunya dimatikan dulu ya

			// echo $waktu;
		}

		$username = $this->session->userdata('username');
		$where = array(
			'username' => $username
		);
		$data = $this->user_database->tampil_data_where('titip', $where)->result();
		$tampil_data = array(

			// data sebelumnya

			'nama' => $data[0]->nama,
			// 'ktp' => $data[0]->ktp,
			'username' => $data[0]->username

			// data baru

			// 'id' => $data[0]->id,
			// 'foto_penitip' => $data[0]->foto_penitip,
			// 'foto_barang_titipan' => $data[0]->foto_barang_titipan,
			// 'foto_ktp_asli' => $data[0]->foto_ktp_asli,
			// 'isi_kode_ktp_asli' => $data[0]->isi_kode_ktp_asli,
			// 'username' => $data[0]->username,
			// 'nomor_antrian' => $data[0]->nomor_antrian,
			// 'verifikasi' => $data[0]->verifikasi,
			// 'verifikasi_reload' => $data[0]->verifikasi_reload

		);
		$data_tertinggi = $this->user_database->tampil_data('titip', 'order by nomor_antrian desc');
		$nomor_antrian_tertinggi = $data_tertinggi[0]->nomor_antrian;
		if ($nomor_antrian_tertinggi >= 160){
			// $this->load->view('antrian_habis');
			$this->load->view('layout/default', array(
				'judul' => 'Antrian Habis',
				'isi' => 'titip/antrian_habis',
				'isi_parameter' => ''
			));
		} else {
			// $this->load->view('ambil_nomor_antrian', $tampil_data);
			$this->load->view('layout/default', array(
				'judul' => 'Ambil Nomor Antrian',
				'isi' => 'titip/ambil_nomor_antrian',
				'isi_parameter' => $tampil_data
			));
		}
	}

	public function ambil_nomor_antrian_do(){
		
		// ambil data dari input. kalau kosong berarti disiapkan untuk gambar

		// data lama

		// $nama_alias = $this->input->post('nama_alias');
		// $ktp_alias = $this->input->post('ktp_alias');
		// $nama_dibesuk = $this->input->post('nama_dibesuk');
		// $pengikut_nama = $this->input->post('pengikut_nama');
		// $pengikut_ktp = $this->input->post('pengikut_ktp');

		// // yang foto-foto atau gambar-gambar kosongkan dulu

		// $surat_besukan = '';
		// $pengikut_foto_diri = '';
		// $pengikut_foto_ktp = '';
		// $qrcode = '';
		// $username = $this->session->userdata('username');
		// // $waktu = gmdate("Y-m-d H:i:s", time()+60*60*8);
		// $waktu = date("Y-m-d H:i:s");
		// $verifikasi = 'tidak';

		// data baru

		$id = $this->input->post('id');
		$foto_penitip = '';
		$foto_barang_titipan = '';
		$foto_ktp_asli = '';
		$isi_kode_ktp_asli = $this->input->post('isi_kode_ktp_asli');
		$username = $this->session->userdata('username');
		$nomor_antrian = $this->input->post('nomor_antrian');
		$waktu = date("Y-m-d H:i:s");
		$verifikasi = 'tidak';
		// $verifikasi_reload = $this->input->post('verifikasi_reload');

		// buat nomor antrian
		// skip dulu bagian ini. Bagian ini aktif setelah diverifikasi oleh petugas

		// $data_tertinggi = $this->user_database->tampil_data('user', 'order by nomor_antrian desc');
		// $nomor_antrian_tertinggi = $data_tertinggi[0]->nomor_antrian;
		// $nomor_antrian = $nomor_antrian_tertinggi + 1;

		// di atas: kuncinya di nomor antrian

		// main upload gambar

		$this->upload->initialize(array(
			'upload_path' => './gambar/surat_besukan',
			'allowed_types' => 'gif|jpg|png',
			'encrypt_name' => TRUE
		));
		if ($this->upload->do_upload('surat_besukan')){
			$surat_besukan = $this->upload->data()['file_name'];
		}

		// upload gambar pengikut

		$this->upload->initialize(array(
			'upload_path' => './gambar/pengikut/foto_diri',
			'allowed_types' => 'gif|jpg|png',
			'encrypt_name' => TRUE
		));
		if ($this->upload->do_upload('pengikut_foto_diri')){
			$pengikut_foto_diri = $this->upload->data()['file_name'];
		}

		$this->upload->initialize(array(
			'upload_path' => './gambar/pengikut/foto_ktp',
			'allowed_types' => 'gif|jpg|png',
			'encrypt_name' => TRUE
		));
		if ($this->upload->do_upload('pengikut_foto_ktp')){
			$pengikut_foto_ktp = $this->upload->data()['file_name'];
		}

		// main qr code (=> booking)

        $config['imagedir']     = './gambar/cache/'; //direktori penyimpanan qr code
        $this->ciqrcode->initialize($config);
        
        $nama_qrcode = $username.'_booking.png'; //buat name dari qr code sesuai dengan username
        
        $params['data'] = base_url().'index.php/qr/a/'.$username; //data yang akan di jadikan QR CODE
        $params['level'] = 'H'; //H=High
        $params['size'] = 10;
        $params['savename'] = FCPATH.$config['imagedir'].$nama_qrcode; //simpan image QR CODE ke folder assets/images/
        $this->ciqrcode->generate($params); // fungsi untuk generate QR CODE

		// masukkan database

        $data = array(
        	'nama_alias' => $nama_alias,
        	'ktp_alias' => $ktp_alias,
        	'nama_dibesuk' => $nama_dibesuk,
			// 'foto_diri' => $foto_diri, // foto diri tiba-tiba hilang weh
        	'pengikut_nama' => $pengikut_nama,
        	'pengikut_ktp' => $pengikut_ktp,
        	'surat_besukan' => $surat_besukan,
        	'pengikut_foto_diri' => $pengikut_foto_diri,
        	'pengikut_foto_ktp' => $pengikut_foto_ktp,
        	'jenis_besuk' => $jenis_besuk,
        	// 'nomor_antrian' => $nomor_antrian,
        	'qrcode' => $nama_qrcode,
        	'waktu' => $waktu,
        	'verifikasi' => $verifikasi
        );
        $this->user_database->edit_data('user', $data, array('username' => $username));
        redirect(base_url().'index.php/user/tampil_antrian');
    }	

}
