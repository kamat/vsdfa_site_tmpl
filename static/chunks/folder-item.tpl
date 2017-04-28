<div class="item pull-left">
    <a href="[[~[[+id]]]]" data-folder="[[+id]]">
        [[!getResources?
            &tpl=`folder-cover`
            &parents=`[[+id]]`
            &depth=`1`
            &limit=`1`
            &includeTVs=`1`
            &sortbyTV=`cover`
        ]]
        <span class="title">[[+pagetitle]]</span>
    </a>
    <small class="badge">[[getCount? &parent=[[+id]]]]</small>
</div>