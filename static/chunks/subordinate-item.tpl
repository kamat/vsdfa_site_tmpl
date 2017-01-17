<div class="item">
    <div class="person-card clearfix">
        <div class="row">
            <div class="col-sm-3">
                <img src="[[pthumb? &input=`[[getField? &id=`[[+id]]` &field=`photo`]]` &options=`h=100&w=100&zc=t`]]"
                    width="100"
                    height="100"
                    class="img-thumbnail"
                    title="[[+pagetitle]]"
                    alt="[[+pagetitle]]">
            </div>
            <div class="person-contacts col-sm-9">
                <h4 class="person-name">
                    [[+pagetitle]]
                </h4>
                <hr>
                <ul class="list-unstyled">
                    [[getField? &id=`[[+id]]` &field=`position` &tpl=`@INLINE 
                        <li class="clearfix">
                            <abbr title="Должность">
                                <i class="glyphicon glyphicon-user"></i>
                            </abbr>
                            <div class="person-info">
                                [[+gf.output]]
                            </div>
                        </li>`
                    ]]
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
            </div>
        </div>
    </div>
</div>
