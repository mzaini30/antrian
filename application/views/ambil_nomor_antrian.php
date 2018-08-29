<?php
	$this->load->view('elemen/anti_tabel');
?>
<form method="post" action="<?= base_url() ?>index.php/user/ambil_nomor_antrian_do" enctype='multipart/form-data'>
	<table class="table">
		<tr>
			<td>Nama</td>
			<td>
				<input type="text" name="nama_alias" value="<?= $nama ?>" required class='form-control' autofocus>
			</td>
		</tr>
		<tr>
			<td>Nomor KTP</td>
			<td>
				<input type="number" name="ktp_alias" value="<?= $ktp ?>" required class='form-control'>
			</td>
		</tr>
		<tr>
			<td>Nomor HP</td>
			<td>
				<input type="number" name="nomor_hp_alias" value="<?= $nomor_hp ?>" required class='form-control'>
			</td>
		</tr>
		<tr>
			<td>Titipan Ini untuk <em>(gunakan <strong>bin</strong>)</em></td>
			<td>
				<input type="text" name="nama_dibesuk" required class='form-control'>
			</td>
		</tr>
		<tr>
			<td>Foto Barang Titipan</td>
			<td>
				<input type="file" name="foto_barang_titipan" required>
			</td>
		</tr>
		<tr>
			<td>Foto Penitip</td>
			<td>
				<input type="file" name="foto_penitip" required>
			</td>
		</tr>
		<tr>
			<td>Foto KTP Penitip</td>
			<td>
				<input type="file" name="foto_ktp_penitip" required>
			</td>
		</tr>
		<!-- <tr>
			<td><strong>Identitas Pengikut</strong> (opsional)</td>
			<td></td>
		</tr>
		<tr>
			<td>Nama</td>
			<td>
				<input type="text" name="pengikut_nama" class='form-control'>
			</td>
		</tr>
		<tr>
			<td>No. KTP</td>
			<td>
				<input type="number" name="pengikut_ktp" class='form-control'>
			</td>
		</tr>
		<tr>
			<td>Foto Diri (gunakan format gambar)</td>
			<td>
				<input type="file" name="pengikut_foto_diri">
			</td>
		</tr>
		<tr>
			<td>Foto KTP (gunakan format gambar)</td>
			<td>
				<input type="file" name="pengikut_foto_ktp">
			</td>
		</tr> -->
		<tr>
			<td></td>
			<td>
				<input type="submit" name="selesai" value="Selesai" class="btn btn-default">
			</td>
		</tr>
	</table>
</form>