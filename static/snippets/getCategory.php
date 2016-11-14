<?php
$input  = (isset($input)) ? $input : 'none';
$output = '';
$result = $modx->getObject('modTemplateVar', 3);
$categories = array();

if (is_object($result)) {
    $elements = explode('||',$result->get('elements'));
    foreach($elements as $element) {
        $e = explode('==', $element);
        list($title,$val) = $e;
        $categories[$val] = $title;
    }
    $output = $categories[$input];
}

$output = ($output) ? $output : 'Без категории';
return $output;