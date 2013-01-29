<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/style.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylemy.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Cuprum&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php echo $google_analytics; ?>
</head>
<body>
<table id="container" cellspacing="0" cellpadding="0" border="0">
	<tr>
		<td>&nbsp;</td>
		<td id="left_cont"><!--HEADER START-->
	
		<!--<div id="header">
		  <?php if ($logo) { ?>
		  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
		  <?php } ?>
		  <?php echo $language; ?>
		  <?php echo $currency; ?>
		  <?php echo $cart; ?>
		  <div id="search">
		    <div class="button-search"></div>
		    <?php if ($filter_name) { ?>
		    <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
		    <?php } else { ?>
		    <input type="text" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" />
		    <?php } ?>
		  </div>
		  <div id="welcome">
		    <?php if (!$logged) { ?>
		    <?php echo $text_welcome; ?>
		    <?php } else { ?>
		    <?php echo $text_logged; ?>
		    <?php } ?>
		  </div>
		  <div class="links"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
		</div> -->
				<div id="header">
						<div id="logo" onMouseOver="$(this).addClass('hover');" onMouseOut="$(this).removeClass('hover');" onclick="document.location='<?=$home?>';">
							<div id="logotype">
								<div></div>
							</div>
							<div id="title"><a href="/"><img src="catalog/view/theme/default/image/title.png" width="263" height="86" /></a></div>
							<div id="text">Печать фотографий онлайн</div>
							<div id="hand">
								<div>тел.:: 067 487-12-70</div>
							</div>
						</div>
						<div id="top_menu">
							<div id="zigzag"></div>
											
							<div id="white"><a href="#">О компании</a> <a href="#">Услуги</a> <a href="#">Online-печать</a> <a href="#">Тех.поддержка</a> <a href="#">Контакты</a></div>
						</div>
					</div>

<div id="notification"></div>
