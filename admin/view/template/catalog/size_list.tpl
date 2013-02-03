<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/shipping.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="location = '<?php echo $insert; ?>'" class="button"><?php echo $button_insert; ?></a><a onclick="$('form').submit();" class="button"><?php echo $button_delete; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="list">
          <thead>
            <tr>
              <td width="1" style="text-align: center;"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></td>
              <td class="left">
                <?php if ($sort == 'width') { ?>
                <a href="<?php echo $sort_width; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_width; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_width; ?>"><?php echo $column_width; ?></a>
                <?php } ?>
              </td>
              <td class="left">
                <?php if ($sort == 'height') { ?>
                <a href="<?php echo $sort_height; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_height; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_height; ?>"><?php echo $column_height; ?></a>
                <?php } ?>
              </td>
              <td class="right"><?php if ($sort == 'sort_order') { ?>
                <a href="<?php echo $sort_sort_order; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_sort_order; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_sort_order; ?>"><?php echo $column_sort_order; ?></a>
                <?php } ?></td>
              <td class="right"><?php echo $column_action; ?></td>
            </tr>
          </thead>
          <tbody>
            <?php if ($sizes) { ?>
            <?php foreach ($sizes as $size) { ?>
            <tr>
              <td style="text-align: center;"><?php if ($size['selected']) { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $size['size_id']; ?>" checked="checked" />
                <?php } else { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $size['size_id']; ?>" />
                <?php } ?></td>
              <td class="left"><?php echo $size['width']; ?></td>
              <td class="left"><?php echo $size['height']; ?></td>
              <td class="right"><?php echo $size['sort_order']; ?></td>
              <td class="right"><?php foreach ($size['action'] as $action) { ?>
                [ <a href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a> ]
                <?php } ?></td>
            </tr>
            <?php } ?>
            <?php } else { ?>
            <tr>
              <td class="center" colspan="5"><?php echo $text_no_results; ?></td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </form>
      <div class="pagination"><?php echo $pagination; ?></div>
    </div>
  </div>
</div>
<?php echo $footer; ?>