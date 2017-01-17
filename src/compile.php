<?php
  $styles = array('style', 'style-bw', 'style-by', 'style-bb');
  foreach($styles as $fn) {
    $cmd = "lessc $fn.less ../css/$fn.css";
    $output = shell_exec($cmd);
    echo "<h1>$fn</h2><pre>$output</pre><hr>";
  }
?>

<h1>EOF</h1>