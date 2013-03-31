$(function(){
	
    $("li div.house-item").hover(
        function () {
            $(this).find(".frame, a, li").addClass('house-item-hover');
        },
        function () {
            $(this).find(".frame, a, li").removeClass('house-item-hover');
        }
    );
    
});