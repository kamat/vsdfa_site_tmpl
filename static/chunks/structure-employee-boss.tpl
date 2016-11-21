[[getField? &id=`[[+id]]` &field=`pagetitle` &tpl=`@INLINE 
    <p>
        <strong>ФИО руководителя:</strong>
        <span itemprop="Fio">[[+gf.output]]</span>
    </p>
`]]
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