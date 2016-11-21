<?php
/**
 * Выводит значение поля или TV документа.
 * Работает и с символическими ссылками.
 * Можно переопределять значения для ссылок.
 * 
 * &id    - ID документа
 * &field - название поля
 * &tpl   - Шаблон для вывода (можно использовать @INLINE)
 * 
 * Подстановка:
 * [[+gf.doc]]    - ID документа
 * [[+gf.param]]  - Название поля
 * [[+gf.output]] - Значение
 * 
 * [[+debug.inline]] - Это @INLINE шаблон или нет?
 * [[+debug.tpl]]    - Шаблон для вывода
 * 
 * Можно использовать как фильтр.
 * Например:
 * [[*id:getField=`pagetitle`]]
 * 
 * Можно получить ID символической ссылки с помощью параметра `symlink`
 * [[*id:getField=`symlink`]]
 * 
 **/

$fields = array_keys($modx->getFields('modResource'));
$placeholders = array('gf' => array());

if (isset($input)) {
    $document = $modx->getObject('modResource', $input);
    $placeholders['gf']['doc'] = $input;
} elseif (isset($id)) {
    $document = $modx->getObject('modResource', $id);
    $placeholders['gf']['doc'] = $id;
} else {
    return 'Provide an ID!';
}

$content   = $document->get('content');
$class_key = $document->get('class_key');

if (isset($options)) {
    $fld = $options;
} elseif (isset($field)) {
    $fld = $field;
} else {
    $fld = 'content';
}

$placeholders['gf']['param'] = $fld;

if (isset($tpl)) {
    if (substr($tpl, 0, 8) == '@INLINE ') {
        $inline = true;
        $tpl = substr($tpl, 8);
    } else {
        $inline = false;
    }
} else {
    $inline = true;
    $tpl = '[[+gf.output]]';
}

$placeholders['debug'] = array(
    'inline' => $inline,
    'tpl' => $tpl
);

$value = '';

if (in_array($fld, $fields)) {
    $value = $document->get($fld);
} else {
    $value = $document->getTVValue($fld);
}

if ($class_key == 'modSymLink') {
    if ($fld == 'symlink') {
        $value = $content;
    } else {
        $original = $modx->getObject('modResource', $content);
        if (in_array($fld, $fields)) {
            $value = empty($output) ? $original->get($fld) : $output;
        } else {
            $value = empty($output) ? $original->getTVValue($fld) : $output;
        }
    }
}

$placeholders['gf']['output'] = $value;

// Don't process empty values
if (is_null($value) or empty($value)) return "";

// Render
if ($inline) {
    $uniqid = uniqid();
    $chunk = $modx->newObject('modChunk', "{tmp}-{$uniqid}");
    $chunk->setCacheable(false);
    $output = $chunk->process($placeholders, $tpl);
} else {
    $output = $modx->getChunk($tpl, $placeholders);
}

return $output;