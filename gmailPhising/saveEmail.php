<?php
$email = $_POST["email"];
$myfile = fopen("email.txt", "wa+") or die("Unable to open file!");
fwrite($myfile, $email);
fclose($myfile);
?>
