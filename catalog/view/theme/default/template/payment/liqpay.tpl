<form action="<?php echo $action; ?>" method="post">
  <input type="hidden" name="operation_xml" value="<?php echo $xml; ?>">
  <input type="hidden" name="signature" value="<?php echo $signature; ?>">
  <div style="width: 175px; padding: 0;  float: right;" class="buttons">
                        <div class="right-side"></div>
                        <div style="width: 160px; float: left;" class="right">
                            <input type="button" id="button-confirm" class="button" value="<?php echo $button_confirm; ?>" style="background: none transparent;">
                        </div>
                    </div>
</form>
