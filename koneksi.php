<?php
	$host='localhost';
	$user='root';
	$pass='root';
	$hasil=mysql_connect($host,$user,$pass) or die("gagal");
	$namadb='chat';
	$db=mysql_select_db($namadb);	
?>