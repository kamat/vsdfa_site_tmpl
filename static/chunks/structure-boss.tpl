<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title"><span itemprop="Name">[[+pagetitle]]</span></h3>
    </div>
    <div class="panel-body">
        <p>
            <strong>ФИО руководителя:</strong>
            <span itemprop="Fio">[[+longtitle]]</span>
        </p>
        [[getField? &id=`[[+id]]` &field=`position` &tpl=`@INLINE 
            <p>
                <strong>Должность:</strong>
                <span>[[+gf.output]]</span>
            </p>
        `]]
        [[getField? &id=`[[+id]]` &field=`address` &tpl=`@INLINE 
            <p>
                <strong>Адрес:</strong>
                <span itemprop="AddressStr">[[+gf.output]]</span>
            </p>
        `]]
        [[getField? &id=`[[+id]]` &field=`email` &tpl=`@INLINE 
            <p>
                <strong>E-mail:</strong>
                <a href="mailto:[[+gf.output]]" itemprop="E-mail">[[+gf.output]]</a>
            </p>
        `]]
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
            <h3 class="panel-title">Состав подразделения:</h3>
        </div>

        <ul class="list-group">
            [[+departments]]
        </ul>
    `]]
</div>