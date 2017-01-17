<?php
$styles  = array('normal' => 'style.css', 'bw' => 'style-bw.css', 'by' => 'style-by.css', 'bb' => 'style-bb.css');
$default = 'normal';

if (isset($_GET['theme'])) {
    $ovz = $_GET['theme'];
    if (isset($styles[$ovz])) {
        $_SESSION['theme'] = $ovz;
    } else {
        $_SESSION['theme'] = $default;
    }
}

$ovz   = (isset($_SESSION['theme'])) ? $_SESSION['theme'] : $default;
$style = $styles[$ovz];

return $style;