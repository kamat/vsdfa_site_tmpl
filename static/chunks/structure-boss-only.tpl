<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">
            <strong>
                <span itemprop="Name">[[+pagetitle]]</span>
            </strong>
        </h3>
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
    </div>
</div>