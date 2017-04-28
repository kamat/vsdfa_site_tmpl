<?php
  $styles = array('style', 'style-bw', 'style-by', 'style-bb');
  foreach($styles as $fn) {
    $cmd = "lessc --plugin=/usr/local/lib/node_modules/less-plugin-clean-css=\"advanced\" $fn.less ../css/$fn.css";
    $output = shell_exec($cmd);
    echo "<h1>$fn</h2><pre>$output</pre><hr>";
  }
?>

<h1>EOF</h1>