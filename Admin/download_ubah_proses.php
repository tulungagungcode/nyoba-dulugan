<?php session_start();
if (ISSET($_SESSION['adminlogin']))
{
require("config.php");
$perintah = "UPDATE downloadtbl set judul = '$_POST[judultxt]', deskripsi = '$_POST[deskripsitxt]', url = '$_POST[urltxt]' where id = '$_POST[idtxt]'";
$result = mysqli_query($GLOBALS["___mysqli_ston"], $perintah);
	if ($result) {
		header("location:download.php");
	} else { echo "Data belum dapat di ubah!!"; 
	}
}
?>