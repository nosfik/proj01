<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div id="content"><?php echo $content_top; ?>
  
  <h1>Мой Адресс</h1>
  <?php foreach ($addresses as $result) { ?>
  <div class="content" style="margin-top:30px">
    <table style="width: 100%;">
      <tr>
        <td><?php echo $result['address']; ?></td>
        <td style="text-align: right;"><a href="<?php echo $result['update']; ?>" class="button"><?php echo $button_edit; ?></a> <!--<a href="<?php echo $result['delete']; ?>" class="button"><?php echo $button_delete; ?></a>--></td>
      </tr>
    </table>
  </div>
  <?php } ?>
  <div class="buttons">
    <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
    <!--<div class="right"><a href="<?php echo $insert; ?>" class="button"><?php echo $button_new_address; ?></a></div>-->
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>