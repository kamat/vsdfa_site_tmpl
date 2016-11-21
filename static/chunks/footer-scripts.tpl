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