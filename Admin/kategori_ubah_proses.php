<?php session_start();
if (ISSET($_SESSION['adminlogin']))
{
require("config.php");
$perintah = "UPDATE kategoritbl set kategori = '$_POST[ktgtxt]' where id = '$_POST[idtxt]'";
$result = mysqli_query($GLOBALS["___mysqli_ston"], $perintah);
	if ($result) {
		header("location:kategori.php");
	} else { echo "Data belum dapat di ubah!!"; 
	}
}
?>