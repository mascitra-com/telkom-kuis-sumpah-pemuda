<!DOCTYPE html>
<html>
<head>
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
	<title>Registrasi</title>
	
	<!-- include css file here-->
	<link rel="stylesheet" href="css/style.css"/>

	<!-- include JavaScript file here-->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/metode.js"></script>



	


</head>	
<body>
	<div class="container">
		<div class="main">
			<form  method="POST" action="tambahpeserta.php" id="form">
				<h2>Registrasi Peserta</h2><hr/>		

				<label>Nama</label>
				<input type="text" name="nama" id="nama" />

				<label>Alamat Rumah</label>
				<input type="text" name="alamat" id="alamat" />
				

				<label>Nomor Telepon Orang Tua</label>
				<input type="text" name="notelp" id="notelp" />

				<label>Pekerjaan Orang Tua</label>
				<input type="text" name="pekerjaanortu" id="pekerjaanortu" />

				<label>Nomor Handphone Pribadi</label>
				<input type="text" name="nohape" id="nohape" />

				<label>Asal Sekolah</label>
				<div>
					<?php

					echo "<select class='form-dropdown' style='width:100%' id='sekolah' name='sekolah'>";

					include 'database.php';

					$query = "SELECT * FROM sekolah";
					$hasil = mysql_query($query);

					$menu=" "; 

					while ($row = mysql_fetch_array($hasil))

					{

						$menu.= '<option>'. $row['namasekolah'].'</option>';

					}

					echo $menu;


					echo "</select><div><br></div>";

					?>
				</div>


				<label>Nomor Induk Siswa</label>
				<input type="text" name="noinduk" id="noinduk" />


				<label>Jurusan :</label>


				<div>
					<?php

					echo "<select class='form-dropdown' style='width:100%' id='jurusan' name='jurusan'>";

					include 'database.php';

					$query = "SELECT * FROM jurusan";
					$hasil = mysql_query($query);

					$menu=" "; 

					while ($row = mysql_fetch_array($hasil))

					{

						$menu.= '<option>'. $row['jurusan'].'</option>';

					}

					echo $menu;


					echo "</select><div><br></div>";

					?>
				</div>


				<label>Kelas :</label>


				<div>
					<?php

					echo "<select class='form-dropdown' style='width:100%' id='kelas' name='kelas'>";

					include 'database.php';

					$query = "SELECT * FROM kelas";
					$hasil = mysql_query($query);

					$menu=" "; 

					while ($row = mysql_fetch_array($hasil))

					{

						$menu.= '<option>'. $row['kelas'].'</option>';

					}

					echo $menu;


					echo "</select><div><br></div>";

					?>
				</div>

				<label>Username</label>
				<input type="text" name="username" id="username" />

				<label>Password</label> <br>
				<input type="password" name="password" id="password" style='width:100%' />

				<br><br>
				

				<label>Sudah berlangganan IndiHome? :</label>


				<div>
					<select class='form-dropdown' style='width:100%' id='langganan' name='langganan'>


						<option value="sudah">Sudah</option>
						<option value="belum">Belum</option>


					</select><div><br></div>

					
				</div>

				

				


				<input type="submit" name="submit" id="submit" value="Register">
				<br>
				<a href="login.php" align="center">Kembali</a>
			</form>

			<?php //include "proses.php";?>
		</div>
	</div>

</body>
</html>