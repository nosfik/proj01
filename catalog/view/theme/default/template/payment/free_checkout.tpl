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
		url: 'index.php?route=payment/free_checkout/confirm',
		success: function() {
			location = '<?php echo $continue; ?>';
		}		
	});
});
//--></script> 
