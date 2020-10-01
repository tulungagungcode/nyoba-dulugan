<?php
// session_start();
error_reporting(0);

date_default_timezone_set("Asia/Bangkok");

$host = "localhost";
$user = "riyanris";
$pass = "1234";
$db ="sistem_olshop_atk";
$koneksi = mysqli_connect($host, $user, $pass, $db);
$GLOBALS["___mysqli_ston"] = $koneksi;
if (!$koneksi) {
echo "Koneksi ke server tidak berhasil";
exit();
};

?>