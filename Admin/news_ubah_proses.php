<?php session_start();
if (ISSET($_SESSION['adminlogin']))
{
require("config.php");
$perintah = "UPDATE newstbl set judul = '$_POST[judultxt]', news = '$_POST[beritatxt]' where judul = '$_POST[judulhidetxt]'";
$result = mysqli_query($GLOBALS["___mysqli_ston"], $perintah);
	if ($result) {
		header("location:news.php");
	} else { echo "Data belum dapat di ubah!!"; 
	}
}
?>