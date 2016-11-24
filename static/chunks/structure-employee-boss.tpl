[[getField? &id=`[[+id]]` &field=`pagetitle` &tpl=`@INLINE 
    <div>
        <strong>ФИО руководителя:</strong>
        <span itemprop="Fio">[[+gf.output]]</span>
    </div>
`]]
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