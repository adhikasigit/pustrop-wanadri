<?php
	$id = $_POST['id_supplier']
	$nama = $_POST['nama_supplier'];
	$telefon = $_POST['telefon_supplier'];
	$alamat = $_POST['alamat_supplier'];

	mysql_connect("localhost","root","");
	@mysql_select_db("pustrop_si") or die( "Unable to select database");

	$query = "UPDATE supplier SET nama_supplier='".$nama."',telefon_supplier='".$telefon."',alamat_supplier='".$alamat."' WHERE id_supplier='".$id."';";

	mysql_query($query);
	header("Location: daftar_supplier.php");
?>