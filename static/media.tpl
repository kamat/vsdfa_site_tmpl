<div class="container-fluid nav-block front-page-row">
    <!-- News tab -->
    <h3>Новости и объявления</h3>
    <div class="raise">
        <a href="[[~44]]" class="upright">Все новости &gt;</a>
        <div class="owl-carousel" data-items-custom="[ [0, 1], [700, 2], [1050, 3], [1330, 4], [1600, 5] ]">
            [[!getResources@fpRowED? &parents=`44` &tpl=`tagged-frame`]]
        </div>
    </div>
    <hr>
    <!-- Events tab -->
    <h3>Анонсы</h3>
    <div class="raise">
        <a href="[[~188]]" class="upright">Все анонсы &gt;</a>
        <div class="row">
            [[!getResources@fpRowED?
                &parents=`188`
                &tpl=`event-frame`
                &limit=`6`
                &tvFilters=`endDate>>[[!getDate:date=`%Y-%m-%d`? &offset=`-1 day`]]`
                &sortbyTV=`startDate`
                &sortdirTV=`ASC`
            ]]
        </div>
    </div>
    <hr>
    <!-- SMI tab -->
    <h3>Пресса о нас</h3>
    <div class="raise">
        <a href="[[~217]]" class="upright">Все материалы &gt;</a>
        <div class="owl-carousel" data-items-custom="[ [0, 1], [700, 2], [1000, 3], [1300, 4], [1600, 5] ]">
            [[!getResources?
                &parents=`217`
                &tpl=`tagged-frame`
                &includeTVs=`1`
                &limit=`12`
                &sortbyTV=`eventDate`
                &sortdirTV=`DESC`
            ]]
        </div>
    </div>
    <hr>
    <!-- PHOTO tab -->
    <h3>Фото</h3>
    <div class="raise">
        <a href="[[~218]]" class="upright">Все фотографии &gt;</a>
        <div class="owl-carousel" data-items-custom="[ [0, 1], [700, 2], [1000, 3], [1300, 4], [1600, 5] ]">
            [[!getResources?
                &parents=`218`
                &tpl=`image-frame`
                &includeTVs=`1`
                &limit=`12`
                &depth=`10`
                &where=`{"template:=":24}`
            ]]
        </div>
    </div>
    <hr>
    <!-- VIDEO tab -->
    <h3>Видео</h3>
    <div class="raise">
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
            ]]
        </div>
    </div>
    </hr>
    <!-- publications tab -->
    <h3>Издания</h3>
    <div class="">
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