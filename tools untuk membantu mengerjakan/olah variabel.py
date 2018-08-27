list = ['id', 'foto_penitip', 'foto_barang_titipan', 'foto_ktp_asli', 'isi_kode_ktp_asli', 'username', 'nomor_antrian', 'verifikasi', 'verifikasi_reload']
for x in list:
	print '${0}\t=\t$this->input->post(\'{0}\');'.format(x)