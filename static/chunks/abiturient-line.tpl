<div class="container-fluid front-page-row">
    <h3>
        Поступающим
    </h3>
    <div class="nav-block">
        <!-- Nav tabs -->
        <ul class="nav nav-pills" role="tablist">
            [[getResources?
                &parents=`282`
                &depth=`1`
                &sortby=`menuindex`
                &sortdir=`ASC`
                &where=`{"isfolder:=":1}`
                &tplFirst=`@INLINE <li role="presentation" class="active">
                        <a href="#[[+alias]]" aria-controls="[[+alias]]" role="tab" data-toggle="tab">
                            [[+pagetitle]]
                        </a>
                    </li>`
                &tpl=`@INLINE <li role="presentation">
                        <a href="#[[+alias]]" aria-controls="[[+alias]]" role="tab" data-toggle="tab">
                            [[+pagetitle]]
                        </a>
                    </li>`
            ]]
        </ul>
      
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- tab -->
            <div role="tabpanel" class="tab-pane owl-margin active" id="common">
                <div class="owl-margin">
                    <div class="owl-carousel" data-items-custom="[ [0, 1], [400, 2], [800, 4], [1200, 6], [1600, 8] ]">
                        [[getResources? &parents=`283` &tpl=`icon-frame` &includeTVs=`1` &includeContent=`1` &sortby=`menuindex` &sortdir=`ASC`]]
                    </div>
                </div>
            </div>
            <!-- tab -->
            <div role="tabpanel" class="tab-pane owl-margin" id="priem-20xx">
                <div class="owl-margin">
                    <div class="owl-carousel" data-items-custom="[ [0, 1], [400, 2], [800, 4], [1200, 6], [1600, 8] ]">
                        [[getResources? &parents=`286` &tpl=`icon-frame` &includeTVs=`1` &includeContent=`1` &sortby=`menuindex` &sortdir=`ASC`]]
                    </div>
                </div>
            </div>
            <!-- tab -->
            <div role="tabpanel" class="tab-pane owl-margin" id="prcom-20xx">
                <div class="owl-margin">
                    <div class="owl-carousel" data-items-custom="[ [0, 1], [400, 2], [800, 4], [1200, 6], [1600, 8] ]">
                        [[getResources? &parents=`289` &tpl=`icon-frame` &includeTVs=`1` &includeContent=`1` &sortby=`menuindex` &sortdir=`ASC`]]
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>