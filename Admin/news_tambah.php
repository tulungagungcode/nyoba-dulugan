<?php session_start();
if (ISSET($_SESSION['adminlogin']))
{
require("config.php");
$tanggal=date("Ymd");
$jud = $_POST['judultxt'];
$news = $_POST['beritatxt'];
$perintah = "INSERT INTO newstbl (tanggal,judul,news)
VALUES ('$tanggal','$jud','$news')";
$result = mysqli_query($GLOBALS["___mysqli_ston"], $perintah);
	if ($result) {
		header("location:news.php");
	} else { echo "Data belum dapat di simpan!!"; 
	}
}
?>