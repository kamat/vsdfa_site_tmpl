[[getResources?
    &parents=`[[+id]]`
    &depth=`1`
    &limit=`1`
    &sortbyTV=`cover`
    &tpl=`@INLINE [[+tv.image]]`
    &toPlaceholder=`cover`
    &includeTVs=`1`
]]

<div class="item pull-left">
    <a href="[[~[[+id]]]]">
        <img src="[[pthumb? &input=`[[+cover:default=`resources/images/default.png`]]` &options=`w=250&h=250&zc=c`]]" width="250" height="250" class="img-thumbnail">
        <span class="title">[[+pagetitle]]</span>
    </a>
    <small class="badge">[[getCount? &parent=[[+id]]]]</small>
</div>