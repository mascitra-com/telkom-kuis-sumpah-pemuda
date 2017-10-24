<!DOCTYPE html>





<html align="center">
<head>
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
	<title>Telkom Quiz</title>
	<link rel="stylesheet" href="css/bootstrap.css">



</head>



<?php 
include 'database.php';
session_start();
$username = $_SESSION['username'];



echo '<h1>Selamat mengerjakan, '.$username.'!!!</h1>';

#nyari jatah soal
$query="SELECT kode FROM jatahsoal where username='".$username."' ";
$jatahsoal=mysql_query($query);
$_SESSION['jatahsoal']=$jatahsoal;


?>



<body>

	<br><br>


	<div style="font-weight: bold" id="quiz-time-left"></div>

	<script type="text/javascript">
		var max_time = 30;
		var c_seconds  = 0;
		var total_seconds =60*max_time;
		max_time = parseInt(total_seconds/60);
		c_seconds = parseInt(total_seconds%60);
		document.getElementById("quiz-time-left").innerHTML='Time Left: ' + max_time + ' minutes ' + c_seconds + ' seconds';
		function init(){
			document.getElementById("quiz-time-left").innerHTML='Time Left: ' + max_time + ' minutes ' + c_seconds + ' seconds';
			setTimeout("CheckTime()",1);
		}
		function CheckTime(){
			document.getElementById("quiz-time-left").innerHTML='Time Left: ' + max_time + ' minutes ' + c_seconds + ' seconds' ;
			if(total_seconds <=0){				
				alert("Waktu telah habis. Jawaban anda akan tersubmit.");
				setTimeout('document.getElementById("quiz").submit()',1);
			} else
			{
				total_seconds = total_seconds -1;
				max_time = parseInt(total_seconds/60);
				c_seconds = parseInt(total_seconds%60);
				setTimeout("CheckTime()",999);
			}

		}
		init();

	</script>
	




	<form action="grading.php" method="post" id="quiz">
		

		<?php 

		$baris =1;

		while($row = mysql_fetch_array($jatahsoal))
		{
			echo '</br>';
			echo '</br>';
			

			$kodesoal=$row['kode'];
			$querysoal="SELECT * FROM soal where kode='".$kodesoal."'";
			$soal=mysql_query($querysoal);

			while($rowsoal=mysql_fetch_array($soal))
			{
				echo '

				<h4>'.$baris.'. '.$rowsoal['soal'].'</h4>

				<div>
					<input type="radio" name="question-'.$baris.'-answers-'.$username.'" id="question-'.$baris.'-answers-'.$username.'-A" value="A" />
					<label for="question-'.$baris.'-answers-A">A) '.$rowsoal['jawabana'].' </label>
				</div>

				<div>
					<input type="radio" name="question-'.$baris.'-answers-'.$username.'" id="question-'.$baris.'-answers-'.$username.'-B" value="B" />
					<label for="question-'.$baris.'-answers-B">B) '.$rowsoal['jawabanb'].'</label>
				</div>

				<div>
					<input type="radio" name="question-'.$baris.'-answers-'.$username.'" id="question-'.$baris.'-answers-'.$username.'-C" value="C" />
					<label for="question-'.$baris.'-answers-C">C) '.$rowsoal['jawabanc'].'</label>
				</div>

				<div>
					<input type="radio" name="question-'.$baris.'-answers-'.$username.'" id="question-'.$baris.'-answers-'.$username.'-D" value="D" />
					<label for="question-'.$baris.'-answers-D">D) '.$rowsoal['jawaband'].'</label>
				</div>

				';

			};


			$baris++;
		};

		?>

		
		<script type="text/javascript">

			function finishpage()
			{
				alert("Jawaban anda akan tersubmit!");
				document.quiz.submit();
			}
			window.onbeforeunload= function() {
				setTimeout('document.quiz.submit()',1);
			}
		</script>

		

		<br>
		<input type="submit" value="Submit Quiz" />

	</form>
</body>
