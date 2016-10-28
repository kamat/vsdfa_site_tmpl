<?php
$type     = $modx->getOption('type',     $_POST, '');
$category = $modx->getOption('category', $_POST, false);
$date     = $modx->getOption('date',     $_POST, false);
$page     = $modx->getOption('nextPage', $_POST, 1);
$limit    = $modx->getOption('limit',    $_POST, 9);
$offset   = $modx->getOption('offset',   $_POST, 0);

$newOffset = $limit + $offset;

$filterTV = array();
if ($category) $filterTV[] = "category===$category";
if ($date) {
    $nextDay = new DateTime($date);
    $nextDay->modify("+1 day");
    $filterTV[] = "eventDate>=$date,eventDate<=".$nextDay->format("Y-m-d");
}

switch ($type) {
    case 'news':
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
        $config = array(
        );
        break;
    default:
        return '';
        break;
};

$output = $modx->runSnippet('getResources', $config);
if (empty($output)) {
    $output = '<div class="page clearfix" data-page="'.$page.'" data-end="1">Больше результатов нет.</div>'.implode(',', $filterTV);
}
return $output;