<div class="container-fluid header">
    <div class="row">
        <div class="col-lg-7 col-md-7 col-sm-3 first hidden-xs">
            <div class="logo pull-left">
                <a href="#"></a>
            </div>
            <div class="name hidden-sm pull-left">
                <a href="#"></a>
            </div>
        </div>
        <div class="col-lg-2 col-lg-offset-1 col-md-3 col-md-offset-0 col-sm-4 col-xs-6 menu">
            <div class="item">
                <button class="btn btn-block btn-menu dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="glyphicon glyphicon-user"></i>
                    Абитуриенту
                </button>
                <ul class="dropdown-menu">
                    [[getResources?
                        &parents=`238`
                        &sortby=`menuindex`
                        &sortdir=`ASC`
                        &depth=`0`
                        &limit=`0`
                        &tpl=`@INLINE <li><a href="[[~[[+id]]]]">[[+pagetitle]]</a></li>`
                    ]]
                </ul>
            </div>
            <div class="item">
                <button href="[[~67]]" class="btn btn-block btn-menu dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="glyphicon glyphicon-education"></i>
                    Студенту
                </button>
                <ul class="dropdown-menu">
                    [[getResources?
                        &parents=`67`
                        &sortby=`menuindex`
                        &sortdir=`ASC`
                        &depth=`0`
                        &limit=`0`
                        &tpl=`@INLINE <li><a href="[[~[[+id]]]]">[[+pagetitle]]</a></li>`
                    ]]
                </ul>
            </div>
        </div>
        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-6 menu last">
            <div class="item">
                <button href="[[~433]]" class="btn btn-block btn-menu dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="glyphicon glyphicon-bell"></i>
                    Выпускнику
                </button>
                <ul class="dropdown-menu">
                    [[getResources?
                        &parents=`433`
                        &sortby=`menuindex`
                        &sortdir=`ASC`
                        &depth=`0`
                        &limit=`0`
                        &tpl=`@INLINE <li><a href="[[~[[+id]]]]">[[+pagetitle]]</a></li>`
                    ]]
                </ul>
            </div>
            <div class="item">
                <button href="[[~435]]" class="btn btn-block btn-menu dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="glyphicon glyphicon-briefcase"></i>
                    Сотруднику
                </button>
                <ul class="dropdown-menu">
                    [[getResources?
                        &parents=`435`
                        &sortby=`menuindex`
                        &sortdir=`ASC`
                        &depth=`0`
                        &limit=`0`
                        &tpl=`@INLINE <li><a href="[[~[[+id]]]]">[[+pagetitle]]</a></li>`
                    ]]
                </ul>
            </div>
        </div>
    </div>
</div>