<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div class="content-wrapper">
<div class="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
   	<div>
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
         <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
      <?php } ?>
      </div>
   </div>
   
   
   <?php foreach ($all_news as $news) { ?>
           <div class="news">
           		<div class="news-title"><?php echo $news['title']; ?></div>
           		<div class="news-date"><?php echo $news['date_added']; ?></div>
           		<div class="news-description"><?php echo $news['description']; ?>...<a href="<?php echo $news['view']; ?>"><?php echo $text_view; ?></a></div>
           </div>
         <?php } ?>
   
 
   <div class="pagination"><?php echo $pagination; ?></div>    
   <?php echo $content_bottom; ?>
</div>
</div>
<?php echo $footer; ?>