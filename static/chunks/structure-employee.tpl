<li class="list-group-item level-1">
    <h4 class="list-group-item-heading">
        <!-- strong>Подразделение:</strong -->
        <span itemprop="Name">[[+pagetitle]]</span>
    </h4>
    <p class="list-group-item-text">
    [[!getResources?
        &where=`{"template:=":10}`
        &parents=`[[getField? &id=`[[+id]]` &field=`original`]]`
        &tpl=`structure-employee-boss`
        &includeTVs=`1`
        &sortby=`menuindex`
        &sortdir=`ASC`
        &tvFilters=`sticky>>0`
        &limit=`1`
    ]]
    <div>
        <strong>Cайт:</strong>
        <a href="[[~[[+id]]]]" itemprop="Site">перейти</a>
    </div>
    [[getField? &id=`[[+id]]` &field=`document` &tpl=`@INLINE 
        <div>
            <strong>Положение:</strong>
            <a href="[[+gf.output]]" itemprop="DivisionClause_DocLink" target="_blank">скачать</a>
        </div>
    `]]
    </p>
</li>