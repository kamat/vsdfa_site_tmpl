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
        <img src="[[pthumb? &input=`[[+cover:default=`resources/images/default.png`]]` &options=`w=150&h=150&zc=c`]]" width="150" height="150" class="img-thumbnail">
    </a>
    <small class="badge">[[getCount? &parent=[[+id]]]]</small>
</div>