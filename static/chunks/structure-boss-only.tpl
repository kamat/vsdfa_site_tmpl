<div class="panel panel-info">
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
</div>