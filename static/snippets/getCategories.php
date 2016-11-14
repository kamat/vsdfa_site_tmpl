<?php
$output = '';
$result = $modx->getObject('modTemplateVar', 3);

if (!is_object($result)) {
    $output = '<li>Нет категорий</li>';
} else {
    $elements = explode('||',$result->get('elements'));
    foreach($elements as $element) {
        $e = explode('==', $element);
        list($title,$val) = $e;
        $output .= "<li><a href=\"$url#$val\" data-filter-by=\"category\" data-filter=\"$val\">$title</a></li>";
    }
}

return $output;