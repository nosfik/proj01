<h2><?php echo $text_instruction; ?></h2>
<div class="content">
  <p><?php echo $text_description; ?></p>
  <p><?php echo $bank; ?></p>
  <p><?php echo $text_payment; ?></p>
</div>

<div style="width: 175px; padding: 0;  float: right;" class="buttons">
                        <div class="right-side"></div>
                        <div style="width: 160px; float: left;" class="right">
                            <input type="button" id="button-confirm" class="button" value="<?php echo $button_confirm; ?>" style="background: none transparent;">
                        </div>
                    </div>
<script type="text/javascript"><!--
$('#button-confirm').bind('click', function() {
	$.ajax({ 
		type: 'get',
		url: 'index.php?route=payment/bank_transfer/confirm',
		success: function() {
			location = '<?php echo $continue; ?>';
		}		
	});
});
//--></script> 
