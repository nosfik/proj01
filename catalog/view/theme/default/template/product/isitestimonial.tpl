<?php echo $header; ?>
<div class="content-wrapper">
<div class="content">
  <div class="top">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center">
      <h1><?php echo $heading_title ?></h1>
    </div>
  </div>
  <div class="middle">
  	
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="testimonial">
	<div class="content">
        <table width="100%">
        	 <tr>
            <td class="review-text"><?php echo $entry_name ?><br />
              <input class="input-review" type="text" name="name" value="<?php echo $name; ?>" size = 50 />
              <?php if ($error_name) { ?>
              <span class="error"><?php echo $error_name; ?></span>
              <?php } ?>
		</td>
          </tr>
          <tr><td style="height:15px"></td></tr>
           <tr>
             <td class="review-text"><?php echo $entry_city ?><br />
			<input type="text" class="input-review" name="city" value="<?php echo $city; ?>" size = 50/>
		</td>
          </tr>
          <tr><td style="height:15px"></td></tr>
          <tr>
            <td class="review-text"><?php echo $entry_title ?><br />
              <input class="input-review" type="text" name="title" value="<?php echo $title; ?>" size = 90 />
              <?php if ($error_title) { ?>
              <span class="error"><?php echo $error_title; ?></span>
              <?php } ?>
              </td>
          </tr>
          <tr><td style="height:30px"></td></tr>
          <tr>
            <td class="review-text"><?php echo $entry_enquiry ?><span class="required">*</span><br />
              <textarea class="textarea-review" name="description" style="width: 99%;" rows="10"><?php echo $description; ?></textarea><br />

              <?php if ($error_enquiry) { ?>
              <span class="error"><?php echo $error_enquiry; ?></span>
              <?php } ?></td>
          </tr>
          <tr><td style="height:30px"></td></tr>
          <tr>
            <td>
              <input type="hidden" name="email" value="<?php echo $email; ?>" />
              <?php if ($error_email) { ?>
              <span class="error"><?php echo $error_email; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><br><?php echo $entry_rating; ?> &nbsp;&nbsp;&nbsp; <span><?php echo $entry_bad; ?></span>&nbsp;
        		<input type="radio" name="rating" value="1" style="margin: 0;" <?php if ( $rating == 1 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="2" style="margin: 0;" <?php if ( $rating == 2 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="3" style="margin: 0;" <?php if ( $rating == 3 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="4" style="margin: 0;" <?php if ( $rating == 4 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="5" style="margin: 0;" <?php if ( $rating == 5 ) echo 'checked="checked"';?> />
        		&nbsp; <span><?php echo $entry_good; ?></span><br /><br>

          	</td>
          </tr>
          <tr>
            <td>
            	<table>
            		
            		<tr>
            			
            			<td><?php echo $entry_captcha; ?><span class="required">*</span>  <input type="text" class="input-review" name="captcha" value="<?php echo $captcha; ?>" /><br></td>
            			<td style="padding-left:20px">
            				<?php if ($error_captcha) { ?>
              				<span class="error"><?php echo $error_captcha; ?></span>
              				<?php } ?>
              			<img src="index.php?route=information/contact/captcha" />
              			</td>
            		</tr>
            		
            	</table>
               <br>
		
		</td>
          </tr>
        </table>
	  </div>
      <div style="margin-left:853px;">
        <table>
          <tr>
            <td align="right">
            	<button type="submit" class="button-review"><?php echo $button_continue; ?></button>
          </tr>
        </table>
      </div>
    </form>
  </div>
  <div class="bottom">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center"></div>
  </div>
</div>
</div>
<?php echo $footer; ?> 