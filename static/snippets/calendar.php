<?php
$count = date("t");
$month = date("m");
$year  = date("Y");
$today = date("j");

$start = date("N", strtotime("$year/$month/01"));
$start = $start == 1 ? 0 : $start - 1;

$stop  = date("N", strtotime("$year/$month/$count"));
$stop  = $stop == 7 ? 0 : 7 - $stop;

$output = "";

$date = new DateTime("$year/$month/01");
$date->modify("-$start days");

$stopDate = new DateTime("$year/$month/$count");
$stopDate->modify("+$stop days");

$weeks = array();

while ($date->format("U") <= $stopDate->format("U")) {
    $week = $date->format("W");
    if (isset($weeks[$week])) {
        $weeks[$week][] = clone $date;
    } else {
        $weeks[$week] = array(clone $date);
    }
    $date->modify("+1 day");
}

foreach($weeks as $week) {
    $output .= "<tr>";
    foreach($week as $day) {
        $v = $day->format("j");
        $f = $day->format("Y-m-d");
        $class = $day->format("m") == $month ? '' : ' class="out"';
        $output .= "<td$class><a href=\"#\" data-filter-by=\"date\" data-filter=\"$f\">$v</td>";
    }
    $output .= "</tr>";
}

return $output;