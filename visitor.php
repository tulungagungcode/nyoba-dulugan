<?php
$tframe = 10;   
include("config.php");   
$db_table= "visitortbl";                 
$vis_ip = ip2long($_SERVER['REMOTE_ADDR']); //Menentukan nilai IP komputer
$vis_ip = 1; //Menentukan nilai IP komputer
$vis_time = time();
$new_vis = 1;
$get_ip = mysqli_query($GLOBALS["___mysqli_ston"], "SELECT * FROM ".$db_table." WHERE ip=".$vis_ip." LIMIT 1") or die (mysqli_error($GLOBALS["___mysqli_ston"]));
     while ($row=mysqli_fetch_object($get_ip))
         {
         mysqli_query($GLOBALS["___mysqli_ston"], "UPDATE ".$db_table." SET time='$vis_time' WHERE ip='$vis_ip'") 
            or die (mysqli_error($GLOBALS["___mysqli_ston"]));
        $new_vis = 0;
        }
if ($new_vis == 1)
    {
    mysqli_query($GLOBALS["___mysqli_ston"], "INSERT INTO ".$db_table." (ip, time) VALUES ('$vis_ip','$vis_time')") 
        or die (mysqli_error($GLOBALS["___mysqli_ston"]));
    }
$tcheck = time() - (60 * $tframe);
$query = mysqli_query($GLOBALS["___mysqli_ston"], "SELECT * FROM ".$db_table." WHERE time > $tcheck");
$onlinenow = mysqli_num_rows($query);
if($onlinenow == 1)
    {
    echo"<b>$onlinenow</b> user sedang online";
    }
else
    {
    echo"<b>$onlinenow</b> user sedang online";
    }
?>