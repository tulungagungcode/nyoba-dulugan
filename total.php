<?php

if (ISSET($_SESSION['userlogin']))
{
	include("config.php");
	$user = $_SESSION['userlogin'];
	$query = "select sum(subtotal) as total from transaksirincitbl inner join barangtbl on barangtbl.id = transaksirincitbl.id inner join transaksitbl on transaksitbl.notransaksi = transaksirincitbl.notransaksi WHERE transaksirincitbl.username='".$user."' AND transaksitbl.status ='0'";
	$hasil = mysqli_query($GLOBALS["___mysqli_ston"], $query);
	$data = mysqli_fetch_assoc($hasil);
	if ($hasil > 0) 
	{
		echo "Grand Total : <Font color=\"red\">".number_format($data['total'], 0, ',','.').",-</font>";
	}
}

?>