<!DOCTYPE html>
<html align="center">
    <style>
    body {
    background: url(background.jpg) no-repeat center center fixed !important;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
    }
    </style>
    <head>
        <?php
session_start();
$username = $_SESSION['username'];
$isLoggedIn = $_SESSION['isLoggedIn'];
if ($isLoggedIn != '1') {
	session_destroy();
	header('Location: login.php');
}
include 'database.php';
$sql = "select * from nilai where username='" . $username . "'";
if ($query = mysql_query($sql)) {
	while ($row = mysql_fetch_assoc($query)) {
		$_SESSION['score'] = $row;
	}
}
?>
        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
        <link rel="stylesheet" type="text/css" href="semantic/semantic.min.css">
        <link rel="stylesheet" type="text/css" href="semantic/custom.css">
        <script
        src="https://code.jquery.com/jquery-3.1.1.min.js"
        integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
        crossorigin="anonymous"></script>
        <script src="semantic/semantic.min.js"></script>
        <title>Telkom Quiz</title>
    </head>
    <body>
        <div class="ui rail">
            <div class="ui sticky">
                <img src="logotelkom.jpeg" alt="Logo Telkom" width="100px" style="margin-top: 7.5px">
            </div>
        </div>
        <div class="row">
            <div align="right" style="margin: 1.5em 8em 0 0">
                <a href="logout.php" class="ui tiny button red">Logout</a>
            </div>
        </div>
        <div class="ui three column centered grid" style="margin-top: <?=!isset($_SESSION['score']) ? '1em' : '5em'?>">
            <div class="column ui segment">
                <h2 align="center"><span class="text red"> <?php echo strtoupper($_SESSION['userdata']['nama']); ?></span></h3>
                <div class="ui divided items" style="margin-top: 2em">
                    <div class="item">
                        <div class="ui tiny image">
                            <span class="text red">Sekolah</span>
                        </div>
                        <div class="middle aligned content">
                            : <?=$_SESSION['userdata']['sekolah']?>
                        </div>
                    </div>
                    <div class="item">
                        <div class="ui tiny image">
                            <span class="text red">Jurusan</span>
                        </div>
                        <div class="middle aligned content">
                            : <?=$_SESSION['userdata']['jurusan']?>
                        </div>
                    </div>
                    <div class="item">
                        <div class="ui tiny image">
                            <span class="text red">Kelas</span>
                        </div>
                        <div class="middle aligned content">
                            : <?=$_SESSION['userdata']['kelas']?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div align="center" style="margin-top: 2em">
            <?php if (!isset($_SESSION['score'])) {?>
            <div class="ui message" style="max-width: 400px">
                <div class="header">
                    Catatan
                </div>
                <ul class="list">
                    <li>Durasi Yang Diberikan Sebanyak 30 Menit</li>
                    <li>Siapkan Kertas Untuk Coretan</li>
                    <li>Soal Yang Diberikan : </li>
                    <ul>
                        <li>5 Soal Bahasa Indonesia</li>
                        <li>5 Soal Bahasa Inggris</li>
                        <li>5 Soal Matematika</li>
                        <?php if ($_SESSION['userdata']['jurusan'] == "IPA") {?>
                        <li>5 Soal Fisika</li>
                        <li>5 Soal Kimia</li>
                        <li>5 Soal Biologi</li>
                        <?php } else {?>
                        <li>5 Soal Ekonomi</li>
                        <li>5 Soal Geografi</li>
                        <li>5 Soal Sejarah</li>
                        <?php }?>
                    </ul>
                </ul>
            </div>
            <?php } else {?>
            <div class="ui message" style="max-width: 400px">
                <div class="header">
                    Nilai Anda
                </div>
                <div class="content">
                    <h1><?=number_format($_SESSION['score']['nilai'], 2, ',', '.')?></h1>
                </div>
            </div>
            <?php }?>
        </div>
        <?php if (!isset($_SESSION['score'])) {?>
        <div style="margin-top: 1em">
            <a href="cekpartisipasi.php" class="ui button red">Mulai Quiz</a>
        </div>
        <?php } ?>
        <script type="text/javascript">
        $( document ).ready(function() {
            $('.ui.sticky')
            .sticky({
                offset: 15,
                context: '#quiz',
                pushing: true
            });
        });
        </script>
    </body>
</html>