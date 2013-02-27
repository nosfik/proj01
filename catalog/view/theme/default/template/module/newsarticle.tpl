<div id="news_block">
<div class="block">
  <div class="title articles"></div>
  <div class="text">
  	<?php foreach ($all_newsarticle as $newsarticle) { ?>
    <h3><a href="<?php echo $newsarticle['view']; ?>"><?php echo $newsarticle['title']; ?></a></h3>
    <?php echo $newsarticle['description']; ?><br>
    <span><?php echo $newsarticle['date_added']; ?></span>
    <?php } ?>
    
    <div class="clear"></div>
    <div class="smallButton" onmouseover="$(this).addClass('hover');" onmouseout="$(this).removeClass('hover');">
      <a class="left" href="<?php echo $this -> url -> link('information/newsarticle', '', 'SSL'); ?>">все статьи</a>
      <div class="right"></div>
    </div>
  </div>
</div>
</div>
