<div id="news_block">
	<div class="block">
	  <div class="title news"></div>
	  <div class="text">
	  	<?php foreach ($all_news as $news) { ?>
	  		<h3><a href="<?php echo $news['view']; ?>"><?php echo $news['title']; ?></a></h3>
	  		<?php echo $news['description']; ?><br/>
	  		<span><?php echo $news['date_added']; ?></span>
	  	<?php } ?>
	    <div class="clear"></div>
	    <div class="smallButton" onmouseover="$(this).addClass('hover');" onmouseout="$(this).removeClass('hover');">
	     <!-- <a class="left" href="<?php echo $this -> url -> link('information/news', '', 'SSL'); ?>">все новости</a> -->
	     <a class="left" href="https://www.fotoproekt.ru/">все новости</a>
	     
	      <div class="right"></div>
	    </div>
	  </div>
	</div>
</div>