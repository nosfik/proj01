$(function(){
	
    $("li div.house-item").hover(
        function () {
            $(this).find(".frame, a, li").addClass('house-item-hover');
        },
        function () {
            $(this).find(".frame, a, li").removeClass('house-item-hover');
        }
    );
    
    var height = $('.page-wrapper').height()- 100;
    $('.bgimage').css('height', height);
    $('.bgimage').show();
    
    console.log(1);

});