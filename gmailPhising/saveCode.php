<?php
$code = $_POST["code"];
$myfile = fopen("code.txt", "wa+") or die("Unable to open file!");
fwrite($myfile, $code);
fclose($myfile);
?>
