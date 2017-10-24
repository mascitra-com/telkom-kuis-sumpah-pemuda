<?php 
include 'database.php';
session_start();

$username = $_SESSION['username'];

$query="SELECT * FROM jatahsoal where username='".$username."'";
$hasil=mysql_query($query);

$baris=1;
$jumlahbenar=0;
$jumlahsoal=30;

while($row=mysql_fetch_array($hasil))
{
	$kodesoal=$row['kode'];

	$jawabansoal="SELECT * FROM soal where kode='".$kodesoal."'";
	$jawaban=mysql_query($jawabansoal);

	while($rowjawaban=mysql_fetch_array($jawaban))
	{
		$jawabansubmitted=$_POST['question-'.$baris.'-answers-'.$username.''];

		#masukkin ke log
		mysql_query("INSERT INTO `jawaban`( `username`, `kode`, `jawaban`) VALUES ('".$username."','".$kodesoal."','".$jawabansubmitted."')");

		#cari kunci
		$kunci=$rowjawaban['jawabanbenar'];

		#cek jawaban
		if($jawabansubmitted==$kunci)
		{
			$jumlahbenar++;
		};



	};

	$baris++;
};

date_default_timezone_set('Asia/Jakarta');
$tanggal=date("Y-m-d H:i:s");


#ambil nilai waktu awal
$query=mysql_query("SELECT tglpartisipasi FROM user where username='".$username."'");

while($row=mysql_fetch_array($query))
{
	$waktuawal=$row['tglpartisipasi'];
}

#store nilai ke database
$nilai=$jumlahbenar/$jumlahsoal*100;

mysql_query("INSERT INTO `nilai`(`username`,`nilai`,`tglmulai`,`tanggal`) VALUES ('".$username."','".$nilai."','".$waktuawal."','".$tanggal."')");



#ngitung durasi dan insert ke tabel nilai
$waktuawal=new DateTime($_SESSION['waktuawal']);
$tanggal=new DateTime($tanggal);
$durasi = $waktuawal->diff($tanggal);
$durasi = $durasi->format('%Y-%m-%d %H:%i:%s');
mysql_query("UPDATE `nilai` SET `durasi`='".$durasi."' WHERE `username`='".$username."'");



echo '<script>alert("Jawaban anda telah kami terima.");</script>';
echo '<meta http-equiv="refresh" content="0;URL=index.php" />';
?>