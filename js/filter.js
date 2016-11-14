$(document).ready(function(){
    $('[data-filter-by]').click(function(){
        if ($(this).data('filter-by') == 'archive') {
            var current = $(this).data('filter');
            $(this).data('filter', !current);
            $(this).hide();
        }
        config = $(this).data();
        console.log("Filter by " + config.filterBy + ": " + config.filter);
        applyFilter(config.filterBy, config.filter);
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
        $('#pages').data('archive', 0);
        $('a[data-filter-by=archive]').show();
        $('#reset-filters').hide();

        loadPage();
        return false;
    });
    $('#reset-filters').hide();

    if (location.hash) {
        var category = location.hash.substring(1);
        $('[data-filter-by=category][data-filter=' + category + ']').click();
    } else {
        loadPage();
    }
});

function applyFilter(filter, value) {
    $('#pages').data(filter, value);
    $("#pages").html('');
    $('#pages').data('next-page', 1);
    $('#pages').data('offset', 0);
    $('#reset-filters').show();

    $('[data-filter-by=' + filter + ']').parent().removeClass('active');
    $('[data-filter-by=' + filter + '][data-filter=' + value + ']').parent().addClass('active');

    loadPage();
}

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
}