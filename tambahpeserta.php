<?php 

/*
define('DB_NAME', 'quizsumpahpemuda');
define('DB_USER', 'root');
define('DB_PASSWORD', 'root');
define('DB_HOST', 'localhost');

$link = mysql_connect(DB_HOST, DB_USER, DB_PASSWORD);

if (!$link) {
	die('Could not connect : ' . mysql_error());
}

$db_selected = mysql_select_db(DB_NAME, $link);

if (!$db_selected) {
	die('Can\'t use ' . DB_NAME . ': ' . mysql_error());
}
*/

include 'database.php';

	$snama = $_POST['nama'];
	$salamat = $_POST['alamat'];
	$snotelp = $_POST['notelp'];
	$snohape = $_POST['nohape'];
	$spekerjaan = $_POST['pekerjaanortu'];
	$ssekolah = $_POST['sekolah'];
	$snoinduk = $_POST['noinduk'];
	$sjurusan = $_POST['jurusan'];
	$skelas = $_POST['kelas'];
	$susername = $_POST['username'];
	$spassword = $_POST['password'];
	$slangganan = $_POST['langganan'];

$sql = "INSERT INTO `user`(`nama`, `alamat`, `notelportu`,`pekerjaanortu`,`notelp`, `sekolah`, `noinduk`, `jurusan`, `kelas`, `username`, `password`, `langganan`, `done`) VALUES ('".$snama."','".$salamat."','".$snotelp."','".$spekerjaan."','".$snohape."','".$ssekolah."','".$snoinduk."','".$sjurusan."','".$skelas."','".$susername."','".$spassword."','".$slangganan."','0')";



$result=mysql_query($sql);

if($result===false)
{
	echo '<script>alert("Registrasi gagal, pastikan data terisi lengkap atau gunakan username lain.");</script>';
	echo '<meta http-equiv="refresh" content="0;URL=formregistrasi.php" />';
} else
{
	echo '<script>alert("Registrasi berhasil.");</script>';
	echo '<meta http-equiv="refresh" content="0;URL=login.php" />';
};





?>