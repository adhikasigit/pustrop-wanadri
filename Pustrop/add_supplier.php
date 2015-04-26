<?php
	$nama = $_POST['nama_supplier'];
	$notel = $_POST['telf_supplier'];
	$alamat = $_POST['alamat_supplier'];


	mysql_connect("localhost","root","");
	@mysql_select_db("pustrop_si") or die( "Unable to select database");
	//$query = "SELECT id_admin FROM t_admin WHERE nama='".$admin."'";
	//$result = mysql_query($query);
	//$id_admin = mysql_result($result,0,"id_admin");
	$query = "INSERT INTO supplier (nama_supplier, telefon_supplier, alamat_supplier)
	 VALUES ('".$nama."','".$notel."','".$alamat."')";
	mysql_query($query);
	header("Location: tambah_supplier.php");
?>