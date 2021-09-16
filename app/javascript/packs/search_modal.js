var elements = $('.modal-overlay, .modal');

$('button.search_btn').click(function(){
    elements.addClass('active');
});

$('.close-modal').click(function(){
    elements.removeClass('active');
});



