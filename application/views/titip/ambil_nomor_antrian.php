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
		<?php if ($jenis_besuk == 'besuk_tahanan'){ ?>
			<tr>
				<td>Surat Besukan (gunakan format gambar)</td>
				<td>
					<input type="file" name="surat_besukan">
				</td>
			</tr>
		<?php } ?>
		<tr>
			<td>Nama yang Ingin Dibesuk <em>(gunakan <strong>bin</strong>)</em></td>
			<td>
				<input type="text" name="nama_dibesuk" required class='form-control'>
			</td>
		</tr>
		<tr>
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
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="submit" name="selesai" value="Selesai" class="btn btn-default">
			</td>
		</tr>
	</table>
</form>