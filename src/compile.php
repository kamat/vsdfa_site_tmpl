<?php
  $cmd = "lessc style.less ../css/style.css";
  $output = shell_exec($cmd);
  echo "<h1>RETURNS</h2><pre>$output</pre>";
?>

<h1>EOF</h1>