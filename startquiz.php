<!DOCTYPE html>





<html>
<head>
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
	<title>Telkom Quiz</title>
    <link rel="stylesheet" type="text/css" href="semantic/semantic.min.css">
    <link rel="stylesheet" type="text/css" href="semantic/custom.css">
    <script
            src="https://code.jquery.com/jquery-3.1.1.min.js"
            integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
            crossorigin="anonymous"></script>
    <script src="semantic/semantic.min.js"></script>
    <style>
        body {
            background: url(background.jpg) no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }
    </style>


</head>



<?php 
include 'database.php';
session_start();
$username = $_SESSION['username'];



#nyari jatah soal
$query="SELECT kode FROM jatahsoal where username='".$username."' ";
$jatahsoal=mysql_query($query);
$_SESSION['jatahsoal']=$jatahsoal;
$baris =1;
if($_SESSION['userdata']['jurusan'] == "IPA"){
    $mapel = array('Bahasa Indonesia', 'Matematika', 'Bahasa Inggris', 'Fisika', 'Kimia', 'Biologi');
} else {
    $mapel = array('Bahasa Indonesia', 'Matematika', 'Bahasa Inggris', 'Sejarah', 'Geografi', 'Ekonomi');
}
$segment = array(1, 6, 11, 16, 21, 26);
$segment2 = array(5, 10, 15, 20, 25, 30);
$mapelKe = 0;
?>



<body>
	<form action="grading.php" method="post" id="quiz" class="ui grid container" style="margin-top: 1em">
        <div class="twelve wide column ui segment">
            <h1 align="center">Selamat mengerjakan, <?php echo ucwords($_SESSION['userdata']['nama']) ?>!!!</h1>
            <br>
            <div class="ui top attached tabular menu">
                <?php foreach ($mapel as $key => $pelajaran) { ?>
                    <a class="item <?=$key ? '' : 'active'?>" data-tab="<?=$pelajaran?>"><?=ucwords($pelajaran)?></a>
                <?php } ?>
            </div>
            <?php
		while($row = mysql_fetch_array($jatahsoal))
		{

            if(in_array($baris, $segment)) {
                $active = $baris == 1 ? 'active' : '';
                echo "<div class='ui bottom attached tab segment $active' data-tab='".$mapel[$mapelKe++]."'>";
            }
			echo '</br>';
			echo '</br>';


			$kodesoal=$row['kode'];
			$querysoal="SELECT * FROM soal where kode='".$kodesoal."' order by mapel";
			$soal=mysql_query($querysoal);
			while($rowsoal=mysql_fetch_array($soal))
			{
				echo '
                <div class="row grouped fields">
                    <h4>'.$rowsoal['soal'].'</h4>
                    <div class="field">
                        <div class="ui radio checkbox">
                            <input type="radio" name="question-'.$baris.'-answers-'.$username.'"  tabindex="0" class="hidden" value="A" />
                            <label>A) '.$rowsoal['jawabana'].' </label>
                        </div>
                    </div>
                    <div class="field">
                        <div class="ui radio checkbox">
                            <input type="radio" name="question-'.$baris.'-answers-'.$username.'" tabindex="0" class="hidden" value="B" />
                            <label>B) '.$rowsoal['jawabanb'].'</label>
                        </div>
                    </div>
                    <div class="field">
                        <div class="ui radio checkbox">
                            <input type="radio" name="question-'.$baris.'-answers-'.$username.'" tabindex="0" class="hidden" value="C" />
                            <label>C) '.$rowsoal['jawabanc'].'</label>
                        </div>
                    </div>
                    <div class="field">
                        <div class="ui radio checkbox">
                            <input type="radio" name="question-'.$baris.'-answers-'.$username.'" tabindex="0" class="hidden" value="D" />
                            <label>D) '.$rowsoal['jawaband'].'</label>
                        </div>
                    </div>
                </div>
				';

			};
            if(in_array($baris, $segment2)) {
                echo '</div>';
            }

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
		<input class="ui red button" type="submit" value="Submit Quiz" />
        </div>
        <div class="four column">
            <div class="ui rail">
                <div class="ui sticky segment">
                    <img src="logotelkom.jpeg" alt="Logo Telkom">
                    <div align="center" style="margin-top: .5em">
                        Waktu Tersisa <br>
                        <span class="ui red label" style="font-weight: bold" id="quiz-time-left"></span>
                    </div>
                </div>
            </div>
        </div>
	</form>
    <script>

        $( document ).ready(function() {
            $('.ui.sticky')
                .sticky({
                    offset: 15,
                    context: '#quiz',
                    pushing: true
                })
            ;
            $('.ui.radio.checkbox')
                .checkbox()
            ;
            $('.menu .item')
                .tab()
            ;
        });
    </script>

<script type="text/javascript">
    var max_time = 30;
    var c_seconds  = 0;
    var total_seconds =60*max_time;
    max_time = parseInt(total_seconds/60);
    c_seconds = parseInt(total_seconds%60);
    document.getElementById("quiz-time-left").innerHTML= max_time + ' minutes ' + c_seconds + ' seconds';
    function init(){
        document.getElementById("quiz-time-left").innerHTML= max_time + ' minutes ' + c_seconds + ' seconds';
        setTimeout("CheckTime()",1);
    }
    function CheckTime(){
        document.getElementById("quiz-time-left").innerHTML= max_time + ' minutes ' + c_seconds + ' seconds' ;
        if(total_seconds <= 0){
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
</body>
