<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div id="content"><?php echo $content_top; ?>

  <h1><?php echo $heading_title; ?></h1>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <p><?php echo $text_email; ?></p>
    <h2><?php echo $text_your_email; ?></h2>
    <div class="content">
      <table class="form">
        <tr>
          <td><?php echo $entry_email; ?></td>
          <td><input type="text" name="email" value="" /></td>
        </tr>
      </table>
    </div>
    <div class="buttons">
    	<div>
              <div class=right-side></div>
              <div class=right><input type="submit" value="<?php echo $button_continue; ?>" class="button" style="background: none transparent;"/>
              </div>
          </div>
    	 <div class="left">
              <div class=right-side></div>
              <div class=right><a class="button" href="<?php echo $back; ?>"><?php echo $button_back; ?></a>
              </div>
          </div>
     
    </div>
  </form>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>