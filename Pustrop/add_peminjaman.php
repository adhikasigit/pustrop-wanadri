<?php
	$id = $_POST['id_peminjam'];
	$kode= $_POST['kode_buku'];
	$tgl =$_POST['tgl_pinjam'];
	
	mysql_connect("localhost","root","");
	@mysql_select_db("pustrop_si") or die( "Unable to select database");
	/*$query = "SELECT id_admin FROM t_admin WHERE nama='".$admin."'";
	$result = mysql_query($query);
	$id_admin = mysql_result($result,0,"id_admin");*/
	$query = "INSERT INTO peminjaman (id_peminjam,id_buku,tanggal_pinjam,tanggal_kembali_harus) 
	VALUES ('".$id."','".$kode."',NOW(), '".$tgl."')";
	mysql_query($query);

	$query2="UPDATE buku
				SET jumlah_eksemplar = jumlah_eksemplar-1
					WHERE kode_buku = (SELECT id_buku FROM peminjaman WHERE id_peminjaman = ".$kode.")";
	mysql_query($query2);
	header("Location: formulir_peminjaman.php");

?>