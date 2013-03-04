<?php echo $header; ?>
<div id="content" style="margin-top:50px">
   <?php echo $content_top; ?>
    
   <h1>Статьи</h1>
   <div style="text-align:center;">
      <table style="width:100%; border-collapse: collapse; border-left: 1px solid #eeeeee; border-right: 1px solid #eeeeee;">
         <tr style="font-weight:bold;">
            <td style="width:30%; padding:10px 0px 10px 10px; background:#eeeeee; text-align:left;">Заголовок</td>
            <td style="width:40%; padding:10px 0px 10px 10px; background:#eeeeee; text-align:left;">Описание</td>
			<td style="width:20%; padding:10px 0px 10px 10px; background:#eeeeee; text-align:left;">Дата</td>
            <td style="width:10%; padding:10px 10px 10px 10px; background:#eeeeee; text-align:right;"></td>
         </tr>
         <?php foreach ($all_newsarticle as $newsarticle) { ?>
            <tr>
               <td style="padding:10px 0px 10px 10px; text-align:left; border-bottom: 1px solid #eeeeee;"><?php echo $newsarticle['title']; ?></td>
               <td style="padding:10px 0px 10px 10px; text-align:left; border-bottom: 1px solid #eeeeee; border-left: 1px solid #eeeeee;"><?php echo $newsarticle['description']; ?></td>
			   <td style="padding:10px 0px 10px 10px; text-align:left; border-bottom: 1px solid #eeeeee; border-left: 1px solid #eeeeee;"><?php echo $newsarticle['date_added']; ?></td>
               <td style="padding:10px 10px 10px 10px; text-align:right; border-bottom: 1px solid #eeeeee; border-left: 1px solid #eeeeee;"><a href="<?php echo $newsarticle['view']; ?>">Посмотреть</a></td>
            </tr>
         <?php } ?>
      </table>
   </div>
   <div class="pagination"><?php echo $pagination; ?></div>    
   <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>