<?php
session_start();
include 'database.php';

if (!empty($_POST)) {

	$username = $_POST['username'];
	$password = $_POST['password'];

	$sql = "select * from user where username='" . $username . "' and password='" . $password . "'";
	#$sql = "select * from user where username='www' and password='www'";
	#echo $sql."<br />";
	$query = mysql_query($sql) or die(mysql_error());

	// pengecekan query valid atau tidak
	if ($query) {
		$row = mysql_num_rows($query);

		// jika $row > 0 atau username dan password ditemukan
		if ($row > 0) {
			$_SESSION['isLoggedIn'] = 1;
			$_SESSION['username'] = $username;

			$sql = "select * from user where username='" . $username . "'";
			$query = mysql_query($sql) or die(mysql_error());
			while ($row = mysql_fetch_assoc($query)) {
				$_SESSION['userdata'] = $row;
			}
			header('Location: index.php');

		} else {
			echo '<script>alert("Username atau password belum terdaftar.");</script>';
		}
	}
}
?>

<!DOCTYPE html>
<html align="center">
<head>
   <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
    <link rel="stylesheet" type="text/css" href="semantic/semantic.min.css">
    <link rel="stylesheet" type="text/css" href="semantic/custom.css">
    <script
            src="https://code.jquery.com/jquery-3.1.1.min.js"
            integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
            crossorigin="anonymous"></script>
    <script src="semantic/semantic.min.js"></script>
   <title>Quiz Sumpah Pemuda Telkom Jember</title>


    <style type="text/css">
        body {
            background-color: #FFF;
        }
        body > .grid {
            height: 100%;
        }
        .image {
            margin-top: -100px;
        }
        .column {
            max-width: 450px;
        }
        body {
            background: url(background.jpg) no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }
    </style>
    <script>
        $(document)
            .ready(function() {
                $('.ui.form')
                    .form({
                        fields: {
                            email: {
                                identifier  : 'email',
                                rules: [
                                    {
                                        type   : 'empty',
                                        prompt : 'Please enter your e-mail'
                                    }
                                ]
                            },
                            password: {
                                identifier  : 'password',
                                rules: [
                                    {
                                        type   : 'empty',
                                        prompt : 'Please enter your password'
                                    },
                                    {
                                        type   : 'length[6]',
                                        prompt : 'Your password must be at least 6 characters'
                                    }
                                ]
                            }
                        }
                    })
                ;
            })
        ;
    </script>
</head>
<body>
<div class="ui middle aligned center aligned grid">
    <div class="column">
        <img src="logotelkom.jpeg" class="image">
        <h2 class="ui teal image header">
            <div class="content">
                <span class="text red">Login Kuis Sumpah Pemuda</span>
            </div>
        </h2>
        <form class="ui large form" action="" method="post">
            <div class="ui stacked segment">
                <div class="field">
                    <div class="ui left icon input">
                        <i class="user icon"></i>
                        <input type="text" name="username" placeholder="Username">
                    </div>
                </div>
                <div class="field">
                    <div class="ui left icon input">
                        <i class="lock icon"></i>
                        <input type="password" name="password" placeholder="Password">
                    </div>
                </div>
                <div class="ui fluid large red submit button">Login</div>
            </div>

            <div class="ui error message"></div>

        </form>

        <div class="ui message">
            Belum terdaftar? Klik <button onclick="show_register()" class="ui button mini red">disini</button> untuk membuat akun.
        </div>
    </div>
</div>
<div class="ui tiny modal">
    <i class="close icon"></i>
    <div class="header">
        <span class="text red">Registrasi Peserta Baru</span>
    </div>
    <div class="content">
        <form action="tambahpeserta.php" class="ui form" id="registration_form" method="post">
            <div class="field">
                <label>Name</label>
                <input type="text" name="nama" placeholder="Nama Depan" required>
            </div>
            <div class="field">
                <label>Alamat</label>
                <textarea rows="2" name="alamat" required></textarea>
            </div>

            <div class="two fields">
                <div class="field">
                    <label>Nomor Telepon Orang Tua</label>
                    <input type="text" placeholder="Nomor Telepon Orang Tua" name="notelp" required>
                </div>
                <div class="field">
                    <label>Pekerjaan Orang Tua</label>
                    <input type="text" placeholder="Pekerjaan Orang Tua" name="pekerjaanortu" required>
                </div>
            </div>
            <div class="field">
                <label>Nomor Hanphone Pribadi</label>
                <input type="text" name="nohape" placeholder="Nomor Handphone Pribadi" required>
            </div>
            <div class="field">
                <label>Sekolah</label>
                <div class="ui selection dropdown">
                    <input type="hidden" name="sekolah">
                    <i class="dropdown icon"></i>
                    <div class="default text"></div>
                    <div class="menu">
                        <?php
include 'database.php';

$query = "SELECT * FROM sekolah";
$hasil = mysql_query($query);
while ($row = mysql_fetch_array($hasil)) {
	echo '<div class="item" data-value="' . $row['namasekolah'] . '">' . $row['namasekolah'] . '</div>';
}
?>
                    </div>
                </div>
            </div>
            <div class="field">
                <label>Nomor Induk</label>
                <input type="text" name="noinduk" placeholder="Nomor Induk" required>
            </div>
            <div class="field">
                <label>Jurusan</label>
                <div class="ui selection dropdown">
                    <input type="hidden" name="jurusan">
                    <i class="dropdown icon"></i>
                    <div class="default text"></div>
                    <div class="menu">
                        <?php
include 'database.php';

$query = "SELECT * FROM jurusan";
$hasil = mysql_query($query);
while ($row = mysql_fetch_array($hasil)) {
	echo '<div class="item" data-value="' . $row['jurusan'] . '">' . $row['jurusan'] . '</div>';
}
?>
                    </div>
                </div>
            </div>
            <div class="field">
                <label>Kelas</label>
                <div class="ui selection dropdown">
                    <input type="hidden" name="kelas">
                    <i class="dropdown icon"></i>
                    <div class="default text"></div>
                    <div class="menu">
                        <?php
include 'database.php';

$query = "SELECT * FROM kelas";
$hasil = mysql_query($query);
while ($row = mysql_fetch_array($hasil)) {
	echo '<div class="item" data-value="' . $row['kelas'] . '">' . $row['kelas'] . '</div>';
}
?>
                    </div>
                </div>
            </div>
            <div class="field">
                <label>Username</label>
                <input type="text" name="username" placeholder="Username" required>
            </div>
            <div class="field">
                <label>Password</label>
                <input type="password" name="password" placeholder="Password" required>
            </div>
            <div class="inline field">
                <div class="ui checkbox">
                    <input type="checkbox" tabindex="0" class="hidden">
                    <label>Sudah Berlangganan IndiHome?</label>
                </div>
            </div>
        </form>
    </div>
    <div class="actions">
        <div class="ui button">Cancel</div>
        <button type="submit" form="registration_form" class="ui button">Simpan</button>
    </div>
</div>
<script>

    $( document ).ready(function() {
        $('.dropdown').dropdown();
        $('.ui.checkbox').checkbox();
        $('.ui.tiny.modal').modal();
    });
    function show_register() {
        $('.ui.tiny.modal')
            .modal({
                inverted: true
            })
            .modal('show')
        ;
    }
</script>
</body>
</html>


