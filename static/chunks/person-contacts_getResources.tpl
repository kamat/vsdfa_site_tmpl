<ul class="list-unstyled">
    [[getField? &id=`[[+id]]` &field=`email` &tpl=`@INLINE 
        <li class="clearfix">
            <abbr title="Email">
                <i class="glyphicon glyphicon-envelope"></i>
            </abbr>
            <div class="person-info">
                <a href="mailto:[[+gf.output]]">
                    [[+gf.output]]
                </a>
            </div>
        </li>`
    ]]
    [[getField? &id=`[[+id]]` &field=`phone` &tpl=`@INLINE 
        <li class="clearfix">
            <abbr title="Телефон">
                <i class="glyphicon glyphicon-earphone"></i>
            </abbr>
            <div class="person-info">[[+gf.output]]</div>
        </li>`
    ]]
    [[getField? &id=`[[+id]]` &field=`address` &tpl=`@INLINE 
        <li class="clearfix">
            <abbr title="Адрес">
                <i class="glyphicon glyphicon-map-marker"></i>
            </abbr>
            <div class="person-info">[[+gf.output]]</div>
        </li>`
    ]]
    [[getField? &id=`[[+id]]` &field=`WorkingHours` &tpl=`@INLINE 
        <li class="clearfix">
            <abbr title="Часы работы">
                <i class="glyphicon glyphicon-time"></i>
            </abbr>
            <div class="person-info">
                [[+gf.output]]
            </div>
        </li>`
    ]]
</ul>