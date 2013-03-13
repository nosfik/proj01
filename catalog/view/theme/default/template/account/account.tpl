<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>

<div id="content"><?php echo $content_top; ?>

  <h1>Мои настройки</h1>
  
  <div class="content">
    <ul>
      <li><a style="font-size:15px" href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
      <li><a style="font-size:15px" href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
      <li><a style="font-size:15px" href="<?php echo $address; ?>">Изменить Адресс</a></li>
       <li><a style="font-size:15px" href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a style="font-size:15px" href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
      
    </ul>
  </div>
  
  
  
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?> 