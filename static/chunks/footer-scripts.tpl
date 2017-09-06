<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script -->
<script src="assets/templates/kama/js/jquery_1.12.4.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="assets/templates/kama/js/bootstrap.min.js"></script>
<script src="assets/templates/kama/js/holder.min.js"></script>
<script src="assets/templates/kama/js/jquery.fancybox.pack.js"></script>
<script src="assets/templates/kama/js/jquery.lazyload.js"></script>

<!-- FancyBox settings -->
<script>
    $( document ).ready(function(){
        $('.fancybox:not([rel])').attr('rel', 'gallery');
        $('.fancybox').fancybox({
            helpers: {
                title: {
                    type: 'over'
                }
            }
        });
    });
</script>

<!-- Back to top -->
<script>
$(document).ready(function(){
      $('body').append('<div id="toTop" class="btn btn-info" style="position: fixed;bottom: 10px;right: 10px;cursor: pointer;display: none;"><span class="glyphicon glyphicon-chevron-up"></span> Вверх</div>');
        $(window).scroll(function () {
            if ($(this).scrollTop() != 0) {
                $('#toTop').fadeIn();
            } else {
                $('#toTop').fadeOut();
            }
        }); 
    $('#toTop').click(function(){
        $("html, body").animate({ scrollTop: 0 }, 600);
        return false;
    });
});
</script>

<!-- OWL carousel -->
[[$owl]]

<!-- RPList -->
<script>
    $(document).ready(function(){
        $('.rplist').each(function(){
            var el = this;
            var opts = $( el ).data();
            $.post('rp', opts)
             .done(function( data ){
                 console.log('RPList success');
                 $( el ).html( data );
             })
             .fail(function(){
                 console.log('RPList error');
             });
        });
    });
</script>

<!-- LazeLoad -->
<script>
    $(document).ready(function(){
        $("img.lazy").lazyload({
            effect : "fadeIn"
        });
    });
</script>