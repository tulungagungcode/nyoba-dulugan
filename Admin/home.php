<?php session_start();
if (ISSET($_SESSION['adminlogin']))
{
//Tidak ada event, dalam artian menghindari jump page  		
}
else
header("location:index.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>HEBATKAN STORE</title>

<style type="text/css">
.Menu_Kiri {
	width: 150px;
	font-family: Tahoma, Geneva, sans-serif;
	font-size: 14px;
	margin-top: 10px;
	margin-bottom: 10px;
}
body {
	background-image: url(../Gambar/wall.jpg);
}
a:link {
	color: #006699;
}
a:visited {
	color: #006699;
}
a:hover {
	color: #5F9C9F;
}
a:active {
	color: #5F9C9F;
}
.Menu_Tengah {
	margin-top: 10px;
	margin-bottom: 10px;
}
</style>

</head>

<body>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td colspan="2" align="center" valign="top"><img src="../Gambar/Header.png" width="800" height="214" /></td>
  </tr>
  <tr>
    <td width="150" align="left" valign="top"><div class="Menu_Kiri">
      <ul>
        <li><a href="admin.php">Admin</a></li>
        <li><a href="produk.php">Produk</a></li>
        <li><a href="kategori.php">Menu Kategori</a></li>
        <li><a href="news.php">News</a></li>
        <li><a href="download.php">Download</a></li>
        <li><a href="laporan.php">Laporan</a></li>
        <li><a href="logout.php">Logout</a></li>
      </ul>
    </div></td>
    <td width="650" align="left" valign="top"><div class="Menu_Tengah"></div></td>
  </tr>
  <tr>
    <td colspan="2" align="center" valign="top"><img src="../Gambar/Footer.png" width="800" height="86" /></td>
  </tr>
</table>
</body>
</html>