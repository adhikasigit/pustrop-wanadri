<?php
	$sum = $_POST['sum'];
	
	mysql_connect("localhost","root","");
	@mysql_select_db("pustrop_si") or die( "Unable to select database");
	for($i=0 ; $i<$sum ; $i++){
		if (isset($_POST['check'.$i])){
			$id=$_POST['check'.$i];
			$query = "DELETE FROM peminjaman WHERE id_peminjaman='".$id."';";
			mysql_query($query);
		}
	}
	header("Location: daftar_peminjaman.php");
?>