<?php
$host = "localhost";
$user = "root";
$pass = "";
$db ="sistem_olshop_atk";
$koneksi = ($GLOBALS["___mysqli_ston"] = mysqli_connect($host,  $user,  $pass));
if (!$koneksi) {
echo "Koneksi ke server tidak berhasil";
};
$database = mysqli_select_db($GLOBALS["___mysqli_ston"], $db);
if (!$database) {
echo "Koneksi ke database tidak berhasil";
}
mysqli_select_db($GLOBALS["___mysqli_ston"], $db) or die ("Database not Found !");
//kalian pasti sudah tau fungsi ini, fungsi ini digunakan untuk membuat koneksi ke database
?>
