<?php
	$this->load->view('elemen/anti_tabel');
?>
<form method="post" action="<?= base_url() ?>index.php/titip/ambil_nomor_antrian_do" enctype='multipart/form-data'>
	<table class="table">
		<tr>
			<td>Foto Penitip (Foto Sekarang)</td>
			<td>
				<input type="file" name="foto_penitip">
			</td>
		</tr>
		<tr>
			<td>Foto Barang Titipan</td>
			<td>
				<input type="file" name="foto_barang_titipan">
			</td>
		</tr>
		<tr>
			<td>Foto KTP Asli</td>
			<td>
				<input type="file" name="foto_ktp_asli">
			</td>
		</tr>
		<tr>
			<td>Isi Kode KTP Asli (KTP Penitip)</td>
			<td>
				<input type="text" name="isi_kode_ktp_asli" class='form-control'>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="submit" name="selesai" value="Selesai" class="btn btn-default">
			</td>
		</tr>
	</table>
</form>