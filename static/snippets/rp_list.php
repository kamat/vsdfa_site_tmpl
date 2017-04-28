<?php
// OPTIONS
$type    = $modx->getOption('type', $_POST, '');
$code    = $modx->getOption('code', $_POST, '');

// TEMPLATES
$rowTpl     = 'rpRow';
$tpl        = 'rpTpl';
$classes    = 'list-group';
$rowClasses = 'list-group-item';

// DEFAULTS
$message    = '';
$types   = array("rp" => "resources/files/rp", "perevod-stud" => "resources/files/sveden/education/perevod-stud");
$codes   = array();

if ($type && isset($types[$type])) {
    $dir = $types[$type];
    $codes = scandir( $dir );
} else {
    $message = "Некорректный тип списка.";
    $code = false;
}

if ($code && in_array($code, $codes)) {
    $dir .= "/$code";
    if ( $files = scandir( $dir ) ) {
        foreach($files as $file) {
            $filename = pathinfo($file, PATHINFO_FILENAME);
            if ($file != '.' && $file != '..') {
                $row = array('rp' => array('uri' => "$dir/$file", 'text' => $filename, 'classes' => $rowClasses));
                $message .= $modx->getChunk($rowTpl, $row);
            }
        }
    }
} else if ($code && !in_array($code, $educodes)) {
    $message = 'Указан некорректный код или не добавлены материалы.';
    $classes = 'alert alert-warning';
} else {
    $message = 'Код не указан.';
    $classes = 'alert alert-danger';
}

if (empty($message)) {
    $message = 'Материалы не добавлены.';
    $classes = 'alert alert-info';
}

$placeholders = array('rp' => array('message' => $message, 'classes' => $classes));
$output = $modx->getChunk($tpl, $placeholders);

return $output;