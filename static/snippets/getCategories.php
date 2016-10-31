<?php
$output = '';
$results = $modx->query("SELECT DISTINCT value FROM ".$modx->getFullTableName('site_tmplvar_contentvalues')." WHERE tmplvarid = 3");

if (!is_object($results)) {
    $output = '<li>Нет категорий</li>';
} else {
  while ($r = $results->fetch(PDO::FETCH_ASSOC)) {
    $val = $r['value'];
    $output .= "<li><a href=\"$url#$val\" data-filter-by=\"category\" data-filter=\"$val\">$val</a></li>";
  }
}
return $output;