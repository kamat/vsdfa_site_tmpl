<?php
  $cmd = "lessc style.less ../css/style.css";
  $output = shell_exec($cmd);
  echo "<pre>$output</pre>";
?>

Hello!