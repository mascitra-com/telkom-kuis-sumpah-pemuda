<!DOCTYPE html>
<html align="center">
<head>

    <?php
    session_start();
    $username = $_SESSION['username'];
    $isLoggedIn = $_SESSION['isLoggedIn'];

    if ($isLoggedIn != '1') {
        session_destroy();
        header('Location: login.php');
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

    <div class="row">
        <div align="right" style="margin: .5em 1em 0 0">
            <h3>Semangat pagi, <span class="text red"><?php echo ucwords($username); ?></span>!</h3>
            <a href="logout.php" class="ui tiny button red">Logout</a>
        </div>
    </div>

    <img src="big-logo.jpg" width="250px">
    <div align="center">
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
                <li>5 Soal Fisika</li>
                <li>5 Soal Kimia</li>
                <li>5 Soal Biologi</li>
<!--                <li>5 Soal Ekonomi</li>-->
<!--                <li>5 Soal Geografi</li>-->
<!--                <li>5 Soal Sejarah</li>-->
            </ul>
        </ul>
    </div>
    </div>
    <div style="margin-top: 1em">
    <a href="cekpartisipasi.php" class="ui button red">Mulai Quiz</a>
    </div>

</head>
<body>

</body>
</html>


