<?php 
if (ISSET($_SESSION['userlogin']))
{
require("config.php");
$member = $_SESSION['userlogin'];
$cari="select * from transaksitbl where username ='".$member."' and status ='1' order by notransaksi desc";
$query=mysqli_query($GLOBALS["___mysqli_ston"], $cari);
$hasil=mysqli_fetch_array($query);
if($hasil > 0){
$faktur = $hasil['notransaksi'];
}
}else{
	header("location:index.php");
}
?>