$('[data-folder]').click(function(e){
    e.preventDefault();
    
    var elem       = this;
    var folder_div = $( this ).parent('.item');
    var folder_id  = $( this ).data('folder');
    
    $.post('/ajaxGetResources', {
        'parents': folder_id,
        'tpl': 'image-item',
        'depth': 0,
        'limit': 0,
        'includeTVs': true
    }).done(function( data ){
        var item = document.createElement('div');
        $( item ).addClass('item-content').attr('data-folder', folder_id).html( data );
        $( folder_div ).after( item );
        
        $( elem ).off('click');
        $( elem ).click(function(){
            e.preventDefault();
            $( item ).toggle('slow');
            return false;
        });

        $("img.lazy").lazyload({
            effect : "fadeIn"
        });
    });
});