<?php
	$id = $_POST['id_anggota']
	$nama = $_POST['nama_anggota'];
	$telefon = $_POST['telefon_anggota'];
	$alamat = $_POST['alamat_anggota'];
	$tanggal = $_POST['tanggal_daftar'];
	$idkategori = $_POST['id_kat_ang'];

	mysql_connect("localhost","root","");
	@mysql_select_db("pustrop_si") or die( "Unable to select database");

	$query = "UPDATE anggota SET nama_anggota='".$nama."',telefon_anggota='".$telefon."',alamat_anggota='".$alamat."',tanggal_daftar='".$tanggal."',id_kat_ang='".$idkategori."' WHERE id_anggota='".$id."';";

	mysql_query($query);
	header("Location: daftar_anggota.php");
?>