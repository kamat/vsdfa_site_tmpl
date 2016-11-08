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
                    <img src="[[pthumb? &input=`[[+tv.photo]]` &options=`h=200&w=150&zc=t`]]" class="img-thumbnail" title="[[+pagetitle]]" alt="[[+pagetitle]]">
                </div>
                <div class="col-sm-9 col-md-10">
                    <div class="row">
                        <div class="person-pos col-md-4">
                            <dl>
                                <dt>Должность:</dt>
                                <dd>[[+tv.position:striptags=``]]</dd>
                            </dl>
                        </div>
                        <div class="person-contacts col-md-7">
                            <ul class="list-unstyled">
                                [[+tv.email:notempty=`
                                    <li class="clearfix">
                                        <abbr title="Email">
                                            <i class="glyphicon glyphicon-envelope"></i>
                                        </abbr>
                                        <div class="person-info">
                                            <a href="mailto:[[+tv.email]]">
                                                [[+tv.email]]
                                            </a>
                                        </div>
                                    </li>`
                                ]]
                                [[+tv.phone:notempty=`
                                    <li class="clearfix">
                                        <abbr title="Телефон">
                                            <i class="glyphicon glyphicon-earphone"></i>
                                        </abbr>
                                        <div class="person-info">[[+tv.phone]]</div>
                                    </li>`
                                ]]
                                [[+tv.address:notempty=`
                                    <li class="clearfix">
                                        <abbr title="Адрес">
                                            <i class="glyphicon glyphicon-map-marker"></i>
                                        </abbr>
                                        <div class="person-info">[[+tv.address]]</div>
                                    </li>`
                                ]]
                                [[+tv.WorkingHours:notempty=`
                                    <li class="clearfix">
                                        <abbr title="Часы работы">
                                            <i class="glyphicon glyphicon-time"></i>
                                        </abbr>
                                        <div class="person-info">
                                            [[+tv.WorkingHours]]
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
        [[+tv.sticky:is=`1`:then=`
            <div class="person-subordinates">
                <a href="#subordinates" class="toggle collapsed" data-toggle="collapse">
                    <span class="btn btn-primary">
                        Сотрудники
                        <span class="caret"></span>
                    </span>
                </a>
                <div class="collapse fade" id="subordinates">
                    <div class="content">
                        [[getResources@SubordinatesList? &parents=`[[+parent]]`]]
                    </div>
                </div>
            </div>
        `]]
    </div>
</div>
