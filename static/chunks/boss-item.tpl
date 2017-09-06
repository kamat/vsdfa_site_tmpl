<div class="panel panel-default">
    <div class="panel-heading">
        <div class="panel-title">
            <a href="[[~[[+id]]]]" itemprop="fio">[[+longtitle]]</a>
        </div>
    </div>
    <div class="panel-body">
        <div class="person-card">
            <div class="row">
                <div class="col-sm-3 col-md-2">
                    <img src="[[pthumb? &input=`[[getField? &id=`[[+id]]` &field=`photo`]]` &options=`h=200&w=150&zc=t`]]" class="img-thumbnail" title="[[+longtitle]]" alt="[[+longtitle]]">
                </div>
                <div class="col-sm-9 col-md-10">
                    <div class="row">
                        <div class="person-pos col-md-4">
                            <dl>
                                <dt>Должность:</dt>
                                <dd itemprop="Post">[[+tv.position]]</dd>
                                <dt>Ученая степень:</dt>
                                <dd>[[+tv.degree]]</dd>
                                <dt>Ученое звание:</dt>
                                <dd>[[+tv.rank]]</dd>
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
                                [[+tv.document:notempty=`
                                    <li class="clearfix">
                                        <abbr title="Положение об отделе">
                                            <i class="glyphicon glyphicon-file"></i>
                                        </abbr>
                                        <div class="person-info">
                                            <a href="[[+tv.document]]">
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
    </div>
</div>