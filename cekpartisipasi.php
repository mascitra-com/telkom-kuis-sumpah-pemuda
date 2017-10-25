<?php 
session_start();
include 'database.php';

$username = $_SESSION['username'];

$sql = "select * from user where done < 1 and username='".$username."' ";

$hasil=mysql_query($sql);

if (mysql_num_rows($hasil) > 0)
{
	
	date_default_timezone_set('Asia/Jakarta');
	$tanggal=date("Y-m-d H:i:s");

	$_SESSION['waktuawal']=$tanggal;

	#masukkin tanggal submit & update status

	mysql_query("UPDATE `user` SET `done`='1', `tglpartisipasi`='".$tanggal."' where `username`='".$username."' ");

	echo '<script>alert("Jangan lupa siapkan lembar coretan sendiri OK!!!");</script>';

	echo '<meta http-equiv="refresh" content="0;URL=assignsoal.php" />';
}
else
{
	$sql="select tglpartisipasi from user where username='".$username."'";
	$tanggal=mysql_query($sql);

	while($row=mysql_fetch_array($tanggal))
	{
		$vtanggal=$row['tglpartisipasi'];
		echo '<script>alert("Anda telah melakukan quiz.");</script>';
		echo '<meta http-equiv="refresh" content="0;URL=index.php" />';
	};
	
	
}




?>