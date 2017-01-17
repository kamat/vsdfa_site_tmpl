<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="assets/templates/kama/js/bootstrap.min.js"></script>
<script src="assets/templates/kama/js/holder.min.js"></script>
<script src="assets/templates/kama/js/jquery.fancybox.pack.js"></script>

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