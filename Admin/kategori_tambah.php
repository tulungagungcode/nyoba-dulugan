<?php session_start();
if (ISSET($_SESSION['adminlogin']))
{
require("config.php");
$kategori = $_POST['ktgtxt'];
$perintah = "INSERT INTO kategoritbl (kategori)
VALUES ('$kategori')";
$result = mysqli_query($GLOBALS["___mysqli_ston"], $perintah);
	if ($result) {
		header("location:kategori.php");
	} else { echo "Data belum dapat di simpan!!"; 
	}
}
?>