<div class="container-fluid nav-block front-page-row">
      <!-- Nav tabs -->
      <ul class="nav nav-pills" role="tablist">
        <li role="presentation" class="active">
          <a href="#news" aria-controls="news" role="tab" data-toggle="tab">
            Новости
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
          <a href="#smi" aria-controls="smi" role="tab" data-toggle="tab">
            Фото
          </a>
        </li>
        <li role="presentation">
          <a href="#smi" aria-controls="smi" role="tab" data-toggle="tab">
            Видео
          </a>
        </li>
        <li role="presentation">
          <a href="#smi" aria-controls="smi" role="tab" data-toggle="tab">
            Издания
          </a>
        </li>
      </ul>
      
      <!-- Tab panes -->
      <div class="tab-content">
        <!-- News tab -->
        <div role="tabpanel" class="tab-pane owl-margin raise active" id="news">
            <a href="[[~44]]" class="upright">Все новости &gt;</a>
            <div class="owl-carousel" data-items-custom="[ [0, 1], [700, 2], [1000, 3], [1300, 4], [1600, 5] ]">
                [[!getResources@fpRowED? &parents=`44` &tpl=`tagged-frame`]]
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
                    &tvFilters=`startDate>>[[!getDate:date=`%Y-%m-%d`]]`
                    &sortbyTV=`startDate`
                    &sortdirTV=`ASC`
                ]]
            </div>
        </div>
        <!-- Science tab -->
        <div role="tabpanel" class="tab-pane owl-margin" id="smi">
          [[$frames-list]]
        </div>
      </div>
</div>