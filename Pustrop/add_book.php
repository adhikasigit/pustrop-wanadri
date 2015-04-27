<?php
	$kode = $_POST['idbuku'];
	$judul = $_POST['judul'];
	$kategori = $_POST['kategori'];
	$kodekat = $_POST['kodekategori'];
	$pengarang = $_POST['pengarang'];
	$penerbit = $_POST['penerbit'];
	$tahunterbit = $_POST['tahunterbit'];
	$halamanbuku = $_POST['halaman'];
	$hargabeli = $_POST['hargabeli'];
	$hargajual = $_POST['hargajual'];
	$tanggalmasuk = $_POST['tanggalmasuk'];
	$supplier = $_POST['supplier'];
	$jumlah = $_POST['jumlah_buku'];
	$keterangan = $_POST['keterangan'];

	mysql_connect("localhost","root","");
	@mysql_select_db("pustrop_si") or die( "Unable to select database");
	//$query = "SELECT id_admin FROM t_admin WHERE nama='".$admin."'";
	//$result = mysql_query($query);
	//$id_admin = mysql_result($result,0,"id_admin");
	$query1 = "INSERT INTO buku (kode_buku,judul_buku,pengarang_buku,penerbit_buku,tahun_terbit,halaman_buku,harga_jual,keterangan,id_kat_buku,jumlah_eksemplar) 
				VALUES ('".$kode."','".$judul."','".$pengarang."','".$penerbit."','".$tahunterbit."','".$halamanbuku."','".$hargajual."','".$keterangan."','".$kodekat."','".$jumlah."')";
	mysql_query($query1);
	$query2 = "INSERT INTO inventarisasi_buku (tanggal_masuk, id_supplier, harga_beli, kode_buku) 
				VALUES (NOW(),'".$supplier."','".$hargabeli."','".$kode."')";
	mysql_query($query2);
	header("Location: tambah_buku.php");
?>