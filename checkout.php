<?php session_start();
require("config.php");
require("faktur.php");
$member = $_SESSION['userlogin'];
if((isset($_SESSION['userlogin'])) ==''){
header("location:index.php");	
}else{
$cari="select * from transaksitbl where notransaksi='" .$faktur. "' and username ='" .$member. "' and status ='0'";
$query=mysqli_query($GLOBALS["___mysqli_ston"], $cari);
if(mysqli_num_rows($query)==0){
echo"<font face=\"arial\" size=\"2\">Maaf, Anda belum melakukan pembelian <a style=\"color: blue\" href=\"produk.php\"><b>Pembelian</b></a></font>";
}else{
	$cari="select * from pelanggantbl where username ='" .$member. "'";
	$query=mysqli_query($GLOBALS["___mysqli_ston"], $cari);
	$data = mysqli_fetch_array($query);
	
	$mail_to="riyanrisky129@gmail.com";
	$mail_subject="Pembelian Barang Online";
	
	$mail_body = "Email------------: $data[email]\n\n";
	$mail_body.= "Nama Lengkap-----: $data[nama]\n\n";
	$mail_body.= "Alamat Lengkap---: $data[alamat]\n\n";
	$mail_body.= "Telepon----------: $data[telepon]\n\n";
	$mail_body.= "Daftar Pemesanan Barang\n";
	$mail_body.="==========================================================================================================\n";
	$mail_body.="----------Judul----------Quantity-----Harga-----Jumlah-----\n";
	$mail_body.="==========================================================================================================\n";

	$cari="select * from transaksirincitbl where notransaksi='" .$faktur. "'";
	$query=mysqli_query($GLOBALS["___mysqli_ston"], $cari);
	while($row=mysqli_fetch_array($query)){
	$nama="$row[nama]";
	$jumlah="$row[jumlah]";
	$harga="$row[harga]";
	$total="$row[subtotal]";
	$mail_body.= "$nama / $jumlah / $harga / $total\n";
	$mail_body.="----------------------------------------------------------------------------------------------------------\n";
	}
	$mail_body.="==========================================================================================================\n";
	
	$cari2 = "select sum(subtotal) as total from transaksirincitbl inner join barangtbl on barangtbl.id = transaksirincitbl.id inner join transaksitbl on transaksitbl.notransaksi = transaksirincitbl.notransaksi WHERE transaksirincitbl.username='".$member."' AND transaksitbl.status ='0'";
	$hasil = mysqli_query($GLOBALS["___mysqli_ston"], $cari2);
	$data_total = mysqli_fetch_assoc($hasil);
	$mail_body.="Total : $data_total[total]\n";
	$mail_body.="----------------------------------------------------------------------------------------------------------\n";
	$proses=explode(",",$mail_to);

	reset($proses);
		foreach ($proses as $tujuan) {
			$kirim = mail($tujuan,$mail_subject,$mail_body, "From: $data[email]");
		}
if ($kirim) {

	$query = "UPDATE transaksitbl SET status = '1' WHERE username = '$member'";
	mysqli_query($GLOBALS["___mysqli_ston"], $query);
	if($query){
		header("location:transaksi_selesai.php");
	}else{
		echo"Check Out gagal";
	}

}else{
	header("location:transaksi_selesai.php");

	echo "<font face=\"arial\" size=\"2\">E-mail Anda belum terkirim. Harap ulangi. <a style=\"color: blue\" href=\"keranjang_belanja.php\"><b>Kembali</b></a></font>";
	}
}
}
?>
