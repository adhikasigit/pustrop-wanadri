<?php
	$id = $_POST['']
	$kode = $_POST['e_kode'];
	$judul = $_POST['e_judul'];
	$kodekat = $_POST['e_id_kategori'];
	$pengarang = $_POST['e_pengarang'];
	$penerbit = $_POST['e_penerbit'];
	$tahunterbit = $_POST['e_tahunterbit'];
	$halamanbuku = $_POST['e_halaman'];
	$hargajual = $_POST['e_harga'];
	$jumlah = $_POST['e_jumlah'];
	$keterangan = $_POST['e_keterangan'];

	mysql_connect("localhost","root","");
	@mysql_select_db("pustrop_si") or die( "Unable to select database");
	//$query = "SELECT id_admin FROM t_admin WHERE nama='".$admin."'";
	//$result = mysql_query($query);
	//$id_admin = mysql_result($result,0,"id_admin");
	$query1 = "INSERT INTO buku (kode_buku,judul_buku,pengarang_buku,penerbit_buku,tahun_terbit,halaman_buku,harga_jual,keterangan,id_kat_buku,jumlah_eksemplar) 
				VALUES ('".$kode."','".$judul."','".$pengarang."','".$penerbit."','".$tahunterbit."','".$halamanbuku."','".$hargajual."','".$keterangan."','".$kodekat."','".$jumlah."')";
	$query = "UPDATE buku
				SET 
				kode_buku = '".$kode."',
				judul_buku = '".$judul."',
				pengarang = '".$pengarang"',
				penerbit_buku = '".$penerbit"',
				tahun_terbit = '".$tahunterbit"',
				halaman_buku ='".$halamanbuku"',
				harga_jual ='".$hargajual"',
				id_kat_buku ='".$kodekat"',
				keterangan ='".$keterangan"',
				jumlah_eksemplar ='".$jumlah"'

				WHERE id_buku = '".$id."'";
	mysql_query($query1);
	header("Location: katalog_buku.php");
?>