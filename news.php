<?php
require("config.php");
$cek="Select * from newstbl order by tanggal desc";
$hasil=mysqli_query($GLOBALS["___mysqli_ston"], $cek);
while($data=mysqli_fetch_array($hasil)){
echo "<br>
<b>$data[tanggal]</b><br>
<a href='?'>$data[news]</a><br>";
} 
?>