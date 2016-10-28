$(document).ready(function(){
    $('[data-filter-by=category]').click(function(){
        console.log("Filter by category: " + $(this).data('filter'));
        var filter = $(this).data('filter');
        $('#pages').data('category', filter);
        $("#pages").html('');
        $('#pages').data('next-page', 1);
        $('#pages').data('offset', 0);
        $('#reset-filters').show();

        loadPage();
        return false;
    });
    $('[data-filter-by=date]').click(function(){
        console.log("Filter by date: " + $(this).data('filter'));
        var filter = $(this).data('filter');
        $('#pages').data('date', filter);
        $("#pages").html('');
        $('#pages').data('next-page', 1);
        $('#pages').data('offset', 0);
        $('#reset-filters').show();

        loadPage();
        return false;
    });
    $('.more').click(function(){
        console.log('Load next page');
        loadPage();
        return false;
    });
    $('#reset-filters').click(function(){
        console.log('Reset filters');

        $("#pages").html('');
        $('#pages').data('category', '');
        $('#pages').data('date', '');
        $('#pages').data('next-page', 1);
        $('#pages').data('offset', 0);
        $('#reset-filters').hide();

        loadPage();
        return false;
    });
    $('#reset-filters').hide();
});

function loadPage() {
    var config = $('#pages').data();
    $.post('show_more', config, function(data){
        $('#pages').append(data);
        var config = $('.page:last-child').data();
        if (config.end == 1) {
            $('.more').hide();
        } else {
            $('.more').show();
        }
        $('#pages').data('next-page', config.page + 1);
        $('#pages').data('offset', config.offset);
    });
};