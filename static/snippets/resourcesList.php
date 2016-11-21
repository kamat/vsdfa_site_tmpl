<?php
// Settings
$parent   = $modx->getObject('modResource', '47');
$children = $modx->getChildIds($parent->get('id'), 100, array(
                    'context' => $parent->get('context_key'),
                ));
$ids      = array_unique($children);
$where    = '{"template:IN": [14,18,19]}';
$result   = array('Выберите подразделение==');

// Create query
$c = $modx->newQuery('modResource');
$c->leftJoin('modResource','Parent');
if (!empty($ids)) {
    $c->where(array('modResource.id:IN' => $ids));
} else {
    $c->where(array('modResource.parent' => 0));
}
if (!empty($where)) {
    $where = $modx->fromJSON($where);
    $c->where($where);
}
//$c->sortby('Parent.menuindex,modResource.menuindex','ASC');
$c->sortby('modResource.pagetitle','ASC');

// Execute
$resources = $modx->getCollection('modResource',$c);

foreach ($resources as $resource) {
    $id       = $resource->get('id');
    $title    = $resource->get('pagetitle').' ('.$resource->get('id').')';
    $result[] = $title.'=='.$id;
}

$output = implode('||', $result);
return $output;