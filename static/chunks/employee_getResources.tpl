<div class="panel panel-default">
    <div class="panel-heading">
        <div class="panel-title">
            [[+pagetitle]]
        </div>
    </div>
    <div class="panel-body">
        <div class="person-card">
            <div class="row">
                <div class="col-sm-3 col-md-2">
                    <img src="[[pthumb? &input=`[[getField? &id=`[[+id]]` &field=`photo`]]` &options=`h=200&w=150&zc=t`]]" class="img-thumbnail" title="[[+pagetitle]]" alt="[[+pagetitle]]">
                </div>
                <div class="col-sm-9 col-md-10">
                    <div class="row">
                        <div class="person-pos col-md-4">
                            <dl>
                                <dt>Должность:</dt>
                                <dd>[[getField? &id=`[[+id]]` &field=`position`]]</dd>
                                [[getField? &id=`[[+id]]` &field=`degree` &tpl=`@INLINE 
                                    <dt>Учёная степень:</dt>
                                    <dd>[[+gf.output]]</dd>
                                `]]
                                [[getField? &id=`[[+id]]` &field=`rank` &tpl=`@INLINE 
                                    <dt>Учёное звание:</dt>
                                    <dd>[[+gf.output]]</dd>
                                `]]
                            </dl>
                        </div>
                        <div class="person-contacts col-md-7">
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
                                [[*document:notempty=`
                                    <li class="clearfix">
                                        <abbr title="Положение об отделе">
                                            <i class="glyphicon glyphicon-file"></i>
                                        </abbr>
                                        <div class="person-info">
                                            <a href="[[*document]]" target="_blank">
                                                Положение
                                            </a>
                                        </div>
                                    </li>`
                                ]]
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        [[If?
            &subject=`[[getField? &id=`[[+id]]` &field=`sticky`]]`
            &operator=`EQ`
            &operand=`1`
            &then=`
                [[getResources@SubordinatesList?
                    &tplWrapper=`subordinates_gr`
                    &parents=`[[getField? &id=`[[+id]]` &field=`parent`]]`
                ]]
            `]]
    </div>
</div>
