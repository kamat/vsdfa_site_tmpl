<div class="panel panel-default">
    <div class="panel-heading">
        <div class="panel-title">
            [[*pagetitle]]
        </div>
    </div>
    <div class="panel-body">
        <div class="person-card">
            <div class="row">
                <div class="photo col-sm-3 col-md-2">
                    <img src="[[pthumb? &input=`[[*photo]]` &options=`h=200&w=150&zc=t`]]"
                        width="150"
                        height="200"
                        class="img-thumbnail"
                        title="[[*pagetitle]]"
                        alt="[[*pagetitle]]">
                </div>
                <div class="col-sm-9 col-md-10">
                    <div class="row">
                        <div class="person-pos col-md-4">
                            <dl>
                                <dt>Должность:</dt>
                                <dd>[[*position:striptags=``]]</dd>
                                [[*degree:notempty=`
                                    <dt>Ученая степень</dt>
                                    <dd>[[*degree:striptags=``]]</dd>
                                `]]
                                [[*rank:notempty=`
                                    <dt>Ученое звание</dt>
                                    <dd>[[*rank:striptags=``]]</dd>
                                `]]
                            </dl>
                        </div>
                        <div class="person-contacts col-md-7">
                            <ul class="list-unstyled">
                                [[*email:notempty=`
                                    <li class="clearfix">
                                        <abbr title="Email">
                                            <i class="glyphicon glyphicon-envelope"></i>
                                        </abbr>
                                        <div class="person-info">
                                            <a href="mailto:[[*email]]">
                                                [[*email]]
                                            </a>
                                        </div>
                                    </li>`
                                ]]
                                [[*phone:notempty=`
                                    <li class="clearfix">
                                        <abbr title="Телефон">
                                            <i class="glyphicon glyphicon-earphone"></i>
                                        </abbr>
                                        <div class="person-info">[[*phone]]</div>
                                    </li>`
                                ]]
                                [[*address:notempty=`
                                    <li class="clearfix">
                                        <abbr title="Адрес">
                                            <i class="glyphicon glyphicon-map-marker"></i>
                                        </abbr>
                                        <div class="person-info">[[*address]]</div>
                                    </li>`
                                ]]
                                [[*WorkingHours:notempty=`
                                    <li class="clearfix">
                                        <abbr title="Часы работы">
                                            <i class="glyphicon glyphicon-time"></i>
                                        </abbr>
                                        <div class="person-info">
                                            [[*WorkingHours]]
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

<hr>
