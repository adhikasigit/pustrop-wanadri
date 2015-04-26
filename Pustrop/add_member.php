<?php
	$nama = $_POST['nama'];
	$notel = $_POST['no_tel'];
	$alamat = $_POST['alamat'];
	$kategori = $_POST['kat_anggota'];
	
	mysql_connect("localhost","root","");
	@mysql_select_db("pustrop_si") or die( "Unable to select database");
	//$query = "SELECT id_admin FROM t_admin WHERE nama='".$admin."'";
	//$result = mysql_query($query);
	//$id_admin = mysql_result($result,0,"id_admin");
	$query = "INSERT INTO anggota (nama_anggota,telefon_anggota,alamat_anggota,id_kat_ang)
	 VALUES ('".$nama."','".$notel."','".$alamat."','".$kategori."')";
	mysql_query($query);
	header("Location: tambah_anggota.php");
?>