<h2 class="pagetitle">[[*pagetitle]]</h2>

<div class="panel panel-default">
    <div class="panel-body">
        <div class="person-card">
            <div class="row">
                <div class="col-sm-3 col-md-2">
                    <img src="[[pthumb? &input=`[[*photo]]` &options=`h=200&w=150&zc=t`]]" class="img-thumbnail" title="[[*longtitle]]" alt="[[*longtitle]]">
                </div>
                <div class="col-sm-9 col-md-10">
                    <h3>[[*longtitle]]</h3>
                    <hr>
                    <div class="row">
                        <div class="person-pos col-md-4">
                            <dl>
                                <dt>Должность:</dt>
                                <dd>[[*position]]</dd>
                                [[*degree:notempty=`
                                    <dt>Ученая степень:</dt>
                                    <dd>[[*degree]]</dd>`
                                ]]
                                [[*rank:notempty=`
                                    <dt>Ученое звание:</dt>
                                    <dd>[[*rank]]</dd>`
                                ]]
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
                                [[*document:notempty=`
                                    <li class="clearfix">
                                        <abbr title="Положение об отделе">
                                            <i class="glyphicon glyphicon-file"></i>
                                        </abbr>
                                        <div class="person-info">
                                            <a href="[[*document]]">
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

[[*biography:notempty=`
    <button data-toggle="collapse" data-target="#bio" class="btn btn-primary">Краткая биография</button>
    <div id="bio" class="person-bio collapse">
        [[*biography]]
    </div>
    <hr>`
]]
