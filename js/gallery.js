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
        $( folder_div ).after('<div class="item-content" data-folder="' + folder_id + '">' + data + '</div>');
        $( elem ).off('click');
        $( elem ).click(function(){
            e.preventDefault();
            $('.item-content[data-folder=' + folder_id + ']').toggleClass('hidden');
            return false;
        });
    });
});