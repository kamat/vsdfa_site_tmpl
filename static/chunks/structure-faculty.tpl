<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title"><span itemprop="Name">[[+pagetitle]]</span></h3>
    </div>
    <div class="panel-body">
        [[!getResources?
            &where=`{"template:=":10}`
            &parents=`[[+id]]`
            &tpl=`structure-employee-boss`
            &includeTVs=`1`
            &sortby=`menuindex`
            &sortdir=`ASC`
            &tvFilters=`sticky>>0`
            &depth=`1`
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
    </div>

    [[!getResources?
        &where=`{"template:=":19}`
        &parents=`[[+id]]`
        &tpl=`structure-employee`
        &includeTVs=`1`
        &sortby=`menuindex`
        &sortdir=`ASC`
        &depth=`1`
        &toPlaceholder=`chairs`
    ]]

    [[+chairs:notempty=`
        <!-- Кафедры -->
        <div class="panel-heading">
            <h3 class="panel-title">Кафедры:</h3>
        </div>

        <ul class="list-group">
            [[+chairs]]
        </ul>
    `]]

    [[!getResources?
        &where=`{"template:=":14}`
        &parents=`[[+id]]`
        &tpl=`structure-employee`
        &includeTVs=`1`
        &sortby=`menuindex`
        &sortdir=`ASC`
        &depth=`1`
        &toPlaceholder=`departments`
    ]]
        
    [[+departments:notempty=`
        <!-- Подразделения -->
        <div class="panel-heading">
            <h3 class="panel-title">Подразделения:</h3>
        </div>

        <ul class="list-group">
            [[+departments]]
        </ul>
    `]]
</div>
