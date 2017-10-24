<?php 
session_start();
include 'database.php';

$username = $_SESSION['username'];

#ngambil info jurusan, kelas, dll
$query=mysql_query("SELECT * FROM user where username='".$username."'");

while($row=mysql_fetch_array($query))
{
	$jurusan=$row['jurusan'];
	$kelas=$row['kelas'];

};



#assign soal2 b indo
$query=mysql_query("SELECT * FROM soal where jurusan='Umum' and kelas='".$kelas."' and mapel='Indonesia'");

while($row=mysql_fetch_array($query))
{
	$kode=$row['kode'];
	mysql_query("INSERT INTO `jatahsoal`(`username`, `kode`) VALUES ('".$username."','".$kode."')");

}


#assign soal2 matem
$query=mysql_query("SELECT * FROM soal where jurusan='Umum' and kelas='".$kelas."' and mapel='Matematika'");

while($row=mysql_fetch_array($query))
{
	$kode=$row['kode'];
	mysql_query("INSERT INTO `jatahsoal`(`username`, `kode`) VALUES ('".$username."','".$kode."')");

}


#assign soal2 english
$query=mysql_query("SELECT * FROM soal where jurusan='Umum' and kelas='".$kelas."' and mapel='English'");

while($row=mysql_fetch_array($query))
{
	$kode=$row['kode'];
	mysql_query("INSERT INTO `jatahsoal`(`username`, `kode`) VALUES ('".$username."','".$kode."')");

}


#assign per masing2 jurusan dan kelas
if($jurusan=="IPA")
{
	#assign soal fisika
	$query=mysql_query("SELECT * FROM soal where jurusan='".$jurusan."' and kelas='".$kelas."' and mapel='Fisika'");

	while($row=mysql_fetch_array($query))
	{
		$kode=$row['kode'];
		mysql_query("INSERT INTO `jatahsoal`(`username`, `kode`) VALUES ('".$username."','".$kode."')");

	}

	#assign soal kimia
	$query=mysql_query("SELECT * FROM soal where jurusan='".$jurusan."' and kelas='".$kelas."' and mapel='Kimia'");

	while($row=mysql_fetch_array($query))
	{
		$kode=$row['kode'];
		mysql_query("INSERT INTO `jatahsoal`(`username`, `kode`) VALUES ('".$username."','".$kode."')");

	}

	#assign soal biologi
	$query=mysql_query("SELECT * FROM soal where jurusan='".$jurusan."' and kelas='".$kelas."' and mapel='Biologi'");

	while($row=mysql_fetch_array($query))
	{
		$kode=$row['kode'];
		mysql_query("INSERT INTO `jatahsoal`(`username`, `kode`) VALUES ('".$username."','".$kode."')");

	}
}
else
{
	#assign soal sejarah
	$query=mysql_query("SELECT * FROM soal where jurusan='".$jurusan."' and kelas='".$kelas."' and mapel='Sejarah'");

	while($row=mysql_fetch_array($query))
	{
		$kode=$row['kode'];
		mysql_query("INSERT INTO `jatahsoal`(`username`, `kode`) VALUES ('".$username."','".$kode."')");

	}

	#assign soal Geografi
	$query=mysql_query("SELECT * FROM soal where jurusan='".$jurusan."' and kelas='".$kelas."' and mapel='Geografi'");

	while($row=mysql_fetch_array($query))
	{
		$kode=$row['kode'];
		mysql_query("INSERT INTO `jatahsoal`(`username`, `kode`) VALUES ('".$username."','".$kode."')");

	}

	#assign soal ekonomi
	$query=mysql_query("SELECT * FROM soal where jurusan='".$jurusan."' and kelas='".$kelas."' and mapel='Ekonomi'");

	while($row=mysql_fetch_array($query))
	{
		$kode=$row['kode'];
		mysql_query("INSERT INTO `jatahsoal`(`username`, `kode`) VALUES ('".$username."','".$kode."')");

	}
}


echo '<meta http-equiv="refresh" content="0;URL=startquiz.php" />';

?>