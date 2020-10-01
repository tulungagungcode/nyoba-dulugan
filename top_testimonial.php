<?php
require("config.php");
$cek="Select * from testimonialtbl order by id desc LIMIT 0,6";
$hasil=mysqli_query($GLOBALS["___mysqli_ston"], $cek);
while($data=mysqli_fetch_array($hasil)){
echo "<br>
<b>$data[nama]</b>, $data[tanggal]<br>
$data[testimonial]<br>";
} 
?>