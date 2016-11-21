<li class="list-group-item">
    <p>
        <strong>Подразделение:</strong>
        <span itemprop="Name">[[+pagetitle]]</span>
    </p>
    [[!getResources?
        &where=`{"template:=":10}`
        &parents=`[[+id]]`
        &tpl=`structure-employee-boss`
        &includeTVs=`1`
        &sortby=`menuindex`
        &sortdir=`ASC`
        &tvFilters=`sticky>>0`
        &limit=`1`
    ]]
    <p>
        <strong>Cайт:</strong>
        <a href="[[~[[+id]]]]" itemprop="Site">перейти</a>
    </p>
    [[getField? &id=`[[+id]]` &field=`document` &tpl=`@INLINE 
        <p>
            <strong>Положение:</strong>
            <a href="[[+gf.output]]" itemprop="DivisionClause_DocLink">скачать</a>
        </p>
    `]]
</li>