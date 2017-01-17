<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">
            <strong>
                <span itemprop="Name">[[+pagetitle]]</span>
            </strong>
        </h3>
    </div>
    <div class="panel-body">
        <div>
            <strong>ФИО руководителя:</strong>
            <span itemprop="Fio">[[+longtitle]]</span>
        </div>
        [[getField? &id=`[[+id]]` &field=`position` &tpl=`@INLINE 
            <div>
                <strong>Должность:</strong>
                <span>[[+gf.output]]</span>
            </div>
        `]]
        [[getField? &id=`[[+id]]` &field=`address` &tpl=`@INLINE 
            <div>
                <strong>Адрес:</strong>
                <span itemprop="AddressStr">[[+gf.output]]</span>
            </div>
        `]]
        [[getField? &id=`[[+id]]` &field=`phone` &tpl=`@INLINE 
            <div>
                <strong>Телефон:</strong>
                <span itemprop="Telephone">[[+gf.output]]</span>
            </div>
        `]]
        [[getField? &id=`[[+id]]` &field=`email` &tpl=`@INLINE 
            <div>
                <strong>E-mail:</strong>
                <a href="mailto:[[+gf.output]]" itemprop="E-mail">[[+gf.output]]</a>
            </div>
        `]]
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
    
    [[!getResources?
        &where=`{"template:=":14}`
        &parents=`[[+id]]`
        &tpl=`structure-employee`
        &includeTVs=`1`
        &sortby=`menuindex`
        &sortdir=`ASC`
        &depth=`1`
        &limit=`0`
        &toPlaceholder=`departments`
    ]]
        
    [[+departments:notempty=`
        <!-- Подразделения -->
        <div class="panel-heading">
            <h3 class="panel-title">
                <strong>Состав управления:</strong>
            </h3>
        </div>

        <ul class="list-group">
            [[+departments]]
        </ul>
    `]]
</div>