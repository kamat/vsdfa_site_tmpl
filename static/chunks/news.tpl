<div class="container-fluid nav-block front-page-row">
      <!-- Nav tabs -->
      <ul class="nav nav-vsdfa" role="tablist">
        <li role="presentation" class="active">
          <a href="#news" aria-controls="news" role="tab" data-toggle="tab">
            Новости и объявления
          </a>
        </li>
        <li role="presentation">
          <a href="#events" aria-controls="events" role="tab" data-toggle="tab">
            Анонсы
          </a>
        </li>
        <li role="presentation">
          <a href="#smi" aria-controls="smi" role="tab" data-toggle="tab">
            Пресса о нас
          </a>
        </li>
        <li role="presentation">
          <a href="#photo" aria-controls="photo" role="tab" data-toggle="tab">
            Фото
          </a>
        </li>
        <li role="presentation">
          <a href="#video" aria-controls="video" role="tab" data-toggle="tab">
            Видео
          </a>
        </li>
        <li role="presentation">
          <a href="#publications" aria-controls="publications" role="tab" data-toggle="tab">
            Издания
          </a>
        </li>
      </ul>
      
      <!-- Tab panes -->
      <div class="tab-content">
        <!-- News tab -->
        <div role="tabpanel" class="tab-pane raise active" id="news">
            <a href="[[~44]]" class="upright">Все новости &gt;</a>
            <div class="owl-carousel" data-items-custom="[ [0, 1], [700, 2], [1000, 3], [1300, 4], [1600, 5] ]">
                [[!getResources@fpRowED? &parents=`44` &limit=`12` &tpl=`tagged-frame` &includeTVList=`category`]]
            </div>
        </div>
        <!-- Events tab -->
        <div role="tabpanel" class="tab-pane raise" id="events">
            <a href="[[~188]]" class="upright">Все анонсы &gt;</a>
            <div class="row">
                [[!getResources@fpRowED?
                    &parents=`188`
                    &tpl=`event-frame`
                    &limit=`6`
                    &tvFilters=`endDate>>[[!getDate:date=`%Y-%m-%d`? &offset=`-1 day`]]`
                    &sortbyTV=`startDate`
                    &sortdirTV=`ASC`
                    &includeTVList=`startDate`
                ]]
            </div>
        </div>
        <!-- SMI tab -->
        <div role="tabpanel" class="tab-pane raise" id="smi">
            <a href="[[~217]]" class="upright">Все материалы &gt;</a>
            <div class="owl-carousel" data-items-custom="[ [0, 1], [700, 2], [1000, 3], [1300, 4], [1600, 5] ]">
                [[!getResources?
                    &parents=`217`
                    &tpl=`tagged-frame`
                    &includeTVs=`1`
                    &limit=`12`
                    &sortbyTV=`eventDate`
                    &sortdirTV=`DESC`
                    &includeTVList=`category`
                ]]
            </div>
        </div>

        <!-- PHOTO tab -->
        <div role="tabpanel" class="tab-pane raise" id="photo">
            <a href="[[~218]]" class="upright">Все фотографии &gt;</a>
            <div class="owl-carousel folders" data-items-custom="[ [0, 1], [700, 2], [1000, 3], [1300, 4], [1600, 5] ]">
                [[!getResources?
                    &parents=`218`
                    &tpl=`folder-item`
                    &includeTVs=`1`
                    &limit=`12`
                    &depth=`10`
                    &where=`{"template:=":23}`
                    &includeTVList=`image`
                ]]
            </div>
        </div>

        <!-- VIDEO tab -->
        <div role="tabpanel" class="tab-pane raise" id="video">
            <a href="[[~220]]" class="upright">Все видео &gt;</a>
            <div class="owl-carousel" data-items-custom="[ [0, 1], [700, 2], [1000, 3], [1300, 4], [1600, 5] ]">
                [[!getResources?
                    &parents=`220`
                    &tpl=`tagged-frame`
                    &includeTVs=`1`
                    &limit=`12`
                    &where=`{"template:=":25}`
                    &sortbyTV=`eventDate`
                    &sortdirTV=`DESC`
                    &includeTVList=`category`
                ]]
            </div>
        </div>

        <!-- publications tab -->
        <div role="tabpanel" class="tab-pane" id="publications">
            <div class="row">
                [[!getResources?
                    &parents=`221`
                    &tpl=`pub-frame`
                    &depth=`1`
                    &limit=`0`
                ]]
            </div>
        </div>
    </div>
</div>