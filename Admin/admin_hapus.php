<?php session_start();
if (ISSET($_SESSION['adminlogin']))
{
require("config.php");
$id = $_GET['id'];
$perintah = "DELETE from admintbl where id = $id";
$result = mysqli_query($GLOBALS["___mysqli_ston"], $perintah);
	if ($result) {
		header("location:admin.php");
	} else { echo "Data belum dapat di simpan!!"; 
	}
}
?>