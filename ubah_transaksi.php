<?php session_start();
require("config.php");
$user = $_SESSION['userlogin'];
$cek="Select * from transaksitbl where username = '$user' AND status ='0'";
$hasil = mysqli_query($GLOBALS["___mysqli_ston"], $cek);
$result = mysqli_num_rows($hasil);
$data=mysqli_fetch_array($hasil);
if ($result > 0){
	$faktur =$data['notransaksi'];
	
	for ($i=1; $i<=$_POST['n']; $i++)
		{
		$idp = $_POST['id'.$i];
  		$cari2="select * from barangtbl where id='$idp'";
  		$hasil2=mysqli_query($GLOBALS["___mysqli_ston"], $cari2);
  		$row2 = mysqli_fetch_array($hasil2);
  		$har=$row2['harga'];
  		if($hasil2){
  			$jmlubah  = $_POST['jumlah'.$i];
  			$totubah = $jmlubah*$har;
    		$query = "UPDATE transaksirincitbl SET jumlah = $jmlubah, subtotal=$totubah WHERE id ='$idp' and username = '$user' And notransaksi =$faktur";
    		mysqli_query($GLOBALS["___mysqli_ston"], $query);
  		}
	}
	
	
}
header("location:keranjang_belanja.php");
?>

