<div id="breaking-news" class="breaking-news carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            [[getResources?
                &parents=`672`
                &where=`{"template:=":22}`
                &sortby=`menuindex`
                &sortdir=`ASC`
                &includeTVs=`1`
                &tpl=`@INLINE <li data-target="#breaking-news" data-slide-to="[[+idx]]" class=""></li>`
                &tplFirst=`@INLINE <li data-target="#breaking-news" data-slide-to="[[+idx]]" class="active"></li>`
            ]]
        </ol>
      
        <div class="carousel-inner" role="listbox">
            [[getResources?
                &parents=`672`
                &where=`{"template:=":22}`
                &sortby=`menuindex`
                &sortdir=`ASC`
                &includeTVs=`1`
                &tpl=`breaking-slide`
                &tplFirst=`breaking-slide-active`
            ]]
        </div>
        <!-- Controls -->
        <a class="left carousel-control" href="#breaking-news" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#breaking-news" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
</div>