<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

<div id="content"><?php echo $content_top; ?>
    <h1><?php echo $heading_title; ?></h1>

    <div class="login-content">
        <div class="left">
            <h2><?php echo $text_new_customer; ?></h2>

            <div class="content">
                <p><b><?php echo $text_register; ?></b></p>

                <p><?php echo $text_register_account; ?></p>

                <div class="buttons" style="width: 104px; padding: 0;">
                    <div class="right-side"></div>
                    <div class="right" style="width: 89px; float: left;">
                        <a href="<?php echo $register; ?>" class="button"><?php echo $button_continue; ?></a>
                    </div>
                </div>
            </div>


        </div>
        <div class="right">
            <h2><?php echo $text_returning_customer; ?></h2>

            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                <div class="content">
                    <p><?php echo $text_i_am_returning_customer; ?></p>
                    <b><?php echo $entry_email; ?></b><br/>
                    <input type="text" name="email" value="<?php echo $email; ?>"/>
                    <br/>
                    <br/>
                    <b><?php echo $entry_password; ?></b><br/>
                    <input type="password" name="password" value="<?php echo $password; ?>"/>
                    <br/>
                    <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br/>
                    <br/>
                    <div class="buttons" style="width: 76px; padding: 0;">
                        <div class="right-side"></div>
                        <div class="right" style="width: 61px; float: left;">
                            <input type="submit" style="background: none transparent;" value="<?php echo $button_login; ?>" class="button"/>
                        </div>
                    </div>
                    <?php if ($redirect) { ?>
                    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>"/>
                    <?php } ?>
                </div>
            </form>
        </div>
    </div>
    <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('#login input').keydown(function (e) {
    if (e.keyCode == 13) {
        $('#login').submit();
    }
});
//--></script>
<?php echo $footer; ?>