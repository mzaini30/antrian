list = ['id', 'foto_penitip', 'foto_barang_titipan', 'foto_ktp_asli', 'isi_kode_ktp_asli', 'username', 'nomor_antrian']
for x in list:
	print '${0} = $data_user[0]->{0};'.format(x)