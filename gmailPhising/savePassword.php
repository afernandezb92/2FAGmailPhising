<?php
$pass = $_POST["pass"];
$myfile = fopen("pass.txt", "wa+") or die("Unable to open file!");
fwrite($myfile, $pass);
fclose($myfile);
//The scrip /root/root.sh must be allow for running as root for www-data in /etc/sudoers
system("sudo /root/root.sh");
?>
