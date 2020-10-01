<?php session_start();
require("config.php");
$user = $_SESSION['userlogin'];
$cek="Select * from transaksitbl where username = '$user' AND status ='0'";
$hasil = mysqli_query($GLOBALS["___mysqli_ston"], $cek);
$result = mysqli_num_rows($hasil);
$data=mysqli_fetch_array($hasil);
if ($result > 0){
$faktur =$data['notransaksi'];
if(isset($_GET['id'])){$id = $_GET['id']; }
$query="delete from transaksirincitbl where notransaksi = $faktur AND id =$id";
$hapus=mysqli_query($GLOBALS["___mysqli_ston"], $query);
if($query){
	header("location:keranjang_belanja.php");
}else{
	echo"Data gagal dihapus";
}
}
?>