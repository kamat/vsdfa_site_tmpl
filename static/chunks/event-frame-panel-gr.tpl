<div class="row well event-panel">
    <div class="col-sm-3">
        <a href="[[~[[+id]]]]">
            <img src="[[pThumb? &input=`[[+tv.thumbnail]]` &options=`w=270&h=180&far=c`]]"
                width="270"
                height="180"
                class="img-thumbnail">
        </a>
    </div>
    <div class="col-sm-9">
        <h4>
            <a href="[[~[[+id]]]]">[[+pagetitle]]</a>
        </h4>
        <h4><span class="label label-danger">[[+tv.category:getCategory]]</span></h4>
        <div class="row">
            <div class="col-sm-6">
                <strong>Начало:</strong> [[+tv.startDate:strtotime:date=`%d %B %Y %T`:replace=` 00:00:00==`]]
            </div>
            <div class="col-sm-6">
                <strong>Конец:</strong> [[+tv.endDate:strtotime:date=`%d %B %Y %T`:replace=` 00:00:00==`]]
            </div>
        </div>
        <div class="intro">[[+introtext]]</div>
    </div>
</div>