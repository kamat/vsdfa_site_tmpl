<?php
$type     = $modx->getOption('type',     $_POST, '');
$category = $modx->getOption('category', $_POST, false);
$date     = $modx->getOption('date',     $_POST, false);
$page     = $modx->getOption('nextPage', $_POST, 1);
$limit    = $modx->getOption('limit',    $_POST, 9);
$offset   = $modx->getOption('offset',   $_POST, 0);
$archive  = $modx->getOption('archive',  $_POST, false);

$newOffset = $limit + $offset;

$filterTV = array();
if ($category) $filterTV[] = "category===$category";

switch ($type) {
    case 'news':
        if ($date) {
            $nextDay = new DateTime($date);
            $nextDay->modify("+1 day");
            $filterTV[] = "eventDate>=$date,eventDate<=".$nextDay->format("Y-m-d");
        }
        $config = array(
            'tpl' => 'tagged-frame',
            'limit' => $limit,
            'offset' => $offset,
            'parents' => '44',
            'where' => '{"template:=":6}',
            'tvFilters' => implode(',', $filterTV),
            'includeTVs' => true,
            'tplWrapper' => '@INLINE <div class="page clearfix" data-page="'.$page.'" data-offset="'.$newOffset.'">[[+output]]</div>'
        );
        break;
    case 'anons':
        $today = new DateTime();
        $today->modify("-1 day");
        $filterDate = new DateTime($date);
        //$mode = $archive ? '<=' : '>=';
        //$filterTV['date'] = "endDate".$mode.$today->format("Y-m-d");
        if (!$archive && !$date) {
            $filterTV['date'] = "endDate>>".$today->format("Y-m-d");
        } elseif (!$archive && $date) {
            $filterTV['date'] .= "endDate>>".$today->format("Y-m-d").",startDate>>$date 00:00:01,startDate<<$date 23:59:59";
        } elseif ($archive && !$date) {
            $filterTV['date'] .= "endDate<<".$today->format("Y-m-d");
        } else {
            $filterTV['date'] .= "endDate<<".$today->format("Y-m-d").",startDate>>$date 00:00:01,startDate<<$date 23:59:59";
        }

        $config = array(
            'tpl' => 'event-frame-panel-gr',
            'limit' => $limit,
            'offset' => $offset,
            'parents' => '188',
            'where' => '{"template:=":7}',
            'tvFilters' => implode(',', $filterTV),
            'includeTVs' => true,
            'tplWrapper' => '@INLINE <div class="page clearfix" data-page="'.$page.'" data-offset="'.$newOffset.'">[[+output]]</div>'
        );
        break;
    default:
        return '';
        break;
};

$output = $modx->runSnippet('getResources', $config);
if (empty($output)) {
    $output = '<div class="page clearfix" data-page="'.$page.'" data-end="1">Больше результатов нет.</div>';
}
return $output;