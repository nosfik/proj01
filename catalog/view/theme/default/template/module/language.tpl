<?php if (count($languages) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <ul class="menu-horizontal languages">
    <?php foreach ($languages as $language) { ?>
    	 <li id="langEn" <?php if($language_code == $language['code']) { echo 'class="active"';}?> onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().submit();"><?php echo $language['code']; ?></li>
    <?php } ?>
    <input type="hidden" name="language_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </ul>
</form>
<?php } ?>
