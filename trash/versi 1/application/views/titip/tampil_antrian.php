<span class="reload"></span>
<?php
$this->load->view('elemen/anti_tabel');
?>
<!-- <h1 class="text-center"><?= $jenis_besuk ?></h1> -->

<!-- masih diedit -->

<!-- info -->
<?php
$belum_verifikasi = 'tidak';
?>
<?php if ($verifikasi == $belum_verifikasi) { ?>
<div class="alert alert-warning">Silahkan menuju ke Pelayanan dengan membawa semua persyaratan asli</div>
<?php } ?>

<h1 class="text-center">

	<!-- ini diapain lah -->

	<?php
	if ($jenis_besuk == 'besuk_tahanan'){
		echo 'Besuk Tahanan';
	} else if ($jenis_besuk == 'besuk_napi'){
		echo 'Besuk Napi';
	}
	?>		

</h1>
<hr>
<table class="table">
	<tr>
		<td width="250">
			<span class="thumbnail">
				<img src="<?= base_url() ?>gambar/foto_diri/<?= $foto_diri ?>" style="width: 250px; max-width: 100%;">
			</span>
		</td>
		<?php if ($verifikasi == $belum_verifikasi){ ?>
		<td style="display: none;">
			<?php } else { ?>
			<td>
				<?php } ?>
				<p class="text-center">Sisa antrian:</p>
				<h1 class="text-center"><span class='antrian-sisa'><?= $sisa ?></span></h1>
			</td>
			<?php if ($verifikasi == $belum_verifikasi){ ?>
			<td style="display: none;">
				<?php } else { ?>
				<td>
					<?php } ?>
					<p>Antrian Anda: <strong><span class='antrian-user'><?= $nomor_antrian ?></span></strong></p>
					<p>Antrian terakhir: <strong><span class='antrian-sekarang'><?= $sekarang ?></span></strong></p>
				</td>
			</tr>
		</table>
		<table class="table">
			<tr>
				<td>Foto Penitip</td>
				<td><?= $foto_penitip ?></td>
			</tr>
			<tr>
				<td>Foto Barang Titipan</td>
				<td><?= $foto_barang_titipan ?></td>
			</tr>
			<tr>
				<td>Foto KTP Asli</td>
				<td><?= $foto_ktp_asli ?></td>
			</tr>
			<tr>
				<td>Isi Kode KTP Asli</td>
				<td><?= $isi_kode_ktp_asli ?></td>
			</tr>
		</table>
	<center>
		<div class="thumbnail" style="max-width: 250px;">
			<img src="<?= base_url() ?>gambar/cache/<?= $qrcode ?>">
		</div>
	</center>
	<?php
	$this->load->view('elemen/tombol_logout');
	?>
	<?php
	$this->load->view('elemen/script');
	?>
	<script type="text/javascript">
		refresh = function (){
			setInterval(function(){
				$('.antrian-sisa').load('<?= base_url() ?>index.php/titip/antrian_sisa');
				$('.antrian-user').load('<?= base_url() ?>index.php/titip/antrian_user');
				$('.antrian-sekarang').load('<?= base_url() ?>index.php/titip/antrian_sekarang');
				$('.reload').load('<?= base_url() ?>index.php/titip/reload');
			}, 1000);
		}
		refresh();
	</script>