<?php
$ovz = (isset($_SESSION['theme'])) ? $_SESSION['theme'] : '';
$tpl = !empty($tpl) ? $tpl : '';

$output = '';
if ($ovz == 'normal' or !$ovz or !$tpl) {
    return '<!-- normal template -->';
} else {
    $output = $modx->getChunk($tpl);
}

return $output;