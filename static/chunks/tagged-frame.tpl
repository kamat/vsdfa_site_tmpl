<div class="frame">
    <a href="[[~[[+id]]]]" [[+link_attributes]]>
        <div class="image">
            <img src="[[pthumb? &input=`[[getField? &id=`[[+id]]` &field=`thumbnail`]]` &options=`h=180&w=270&zc=c`]]" class="img-responsive">
            <span class="tag">[[+tv.category:getCategory]]</span>
        </div>
        <div class="date">
            [[+tv.eventDate:strtotime:date=`%e %b %Y`]]
        </div>
        <div class="description text-left">
            [[+introtext]]
        </div>
    </a>
</div>