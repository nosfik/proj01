<div class="footer-wrapper">
    <div class="footer">
        <ul class="menu-horizontal">
            <li>
                <p>&copy; 2013 Все права защищены</p>

                <p>Сайт разработан в студии <a href="#">&laquo;ABWEB&raquo;</a></p>
            </li>
            <li class="socials">
                <div id="twit"></div>
            </li>
            <li class="socials">
                <div id="vk"></div>
            </li>
            <li class="socials">
                <div id="facebook"></div>
            </li>
        </ul>
        <div class="up">
            <a onclick="window.scroll(0,0)">
                <p>наверх</p>
            </a>
        </div>
    </div>
</div>
</div>
<script>
	$(function(){
		 droplinemenu.buildmenu("headerMainMenu");
		 $('#formTabs').css('height', '');
		 $('#creditFormTabs').css('height', '');
		 
			var height = $('.page-wrapper').height()- 100;
    		$('.bgimage').css('height', height);
    		$('.bgimage').show();
    		
    		$('#tab-header-house, #tab-header-area, #tab-hypothec, #tab-credit').click(function(){
    			console.log(height);
    			var height = $('.page-wrapper').height()- 100;
    			console.log(height);
    		$('.bgimage').css('height', height);
    		$('.bgimage').show();
    		})
	
	})
	
</script>
</body></html>