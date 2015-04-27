<?php
	$id = $_POST['id_pinjam'];
	
	mysql_connect("localhost","root","");
	@mysql_select_db("pustrop_si") or die( "Unable to select database");
	/*$query = "SELECT id_admin FROM t_admin WHERE nama='".$admin."'";
	$result = mysql_query($query);
	$id_admin = mysql_result($result,0,"id_admin");*/

	//TAMBAHIN NGITUNG DENDA


	$query1 = "UPDATE peminjaman
				SET tanggal_kembali_real = NOW(), kembali = true;
					WHERE id_peminjaman = ".$id."";
	mysql_query($query);

	$query2 = "UPDATE buku
				SET jumlah_eksemplar = jumlah_eksemplar+1
					WHERE kode_buku = (SELECT id_buku FROM peminjaman WHERE id_peminjaman = ".$id.")"


	header("Location: formulir_peminjaman.php");
?>