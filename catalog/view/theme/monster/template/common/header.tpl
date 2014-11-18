<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700&subset=latin,greek' rel='stylesheet' type='text/css'>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/monster/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<?php if(empty($styles) && $styles != 'catalog/view/javascript/jquery/flexslider/flexslider.css'): ?>
	<link href="catalog/view/javascript/jquery/flexslider/flexslider.css" type="text/css" rel="stylesheet" />
<?php endif; ?>
<?php foreach($styles as $style): ?>
	<?php if($style != 'catalog/view/javascript/jquery/flexslider/flexslider.css'): ?>
    	<link href="catalog/view/javascript/jquery/flexslider/flexslider.css" type="text/css" rel="stylesheet" />
    <?php break;endif; ?>
<?php endforeach; ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php if(empty($scripts) && $scripts != 'catalog/view/javascript/jquery/flexslider/jquery.flexslider-min.js'): ?>
	<script src="catalog/view/javascript/jquery/flexslider/jquery.flexslider-min.js" type="text/javascript"></script>
<?php endif; ?>
<?php foreach($scripts as $script): ?>
	<?php if($script != 'catalog/view/javascript/jquery/flexslider/jquery.flexslider-min.js'): ?>
    	<script src="catalog/view/javascript/jquery/flexslider/jquery.flexslider-min.js" type="text/javascript"></script>
    <?php break;endif; ?>
<?php endforeach; ?>
<?php if($class == 'information-contact'): ?>
	<script src="https://maps.googleapis.com/maps/api/js"></script>
<?php endif; ?>
<script src="catalog/view/theme/monster/js/tinynav.js" type="text/javascript"></script>
<script src="catalog/view/theme/monster/js/custom.js" type="text/javascript"></script>
<?php echo $google_analytics; ?>
<?php 
	global $config;
	$mainBg =  $config->get('monster_options_main_bg'); 
	$bgColor1 =  $config->get('monster_options_bg_color'); 
	$topLinkColor = $config->get('monster_options_top_links_color');	
	$bgColor2 =  $config->get('monster_options_header_bg');
	$searchBtn = $config->get('monster_options_search_btn');
	$searchBtnColor = $config->get('monster_options_search_btn_color');
	$catColor = $config->get('monster_options_cat_color');
	$catArrow = $config->get('monster_options_cat_arrow');	
	$slideArrow = $config->get('monster_options_slide_arrow');
	$priceColor = $config->get('monster_options_price_color');
	$productTitle = $config->get('monster_options_title_color');
	$addToCartBg = $config->get('monster_options_add_to_cart');
	$addToCartIcon = $config->get('monster_options_add_to_cart_icon');
	$addToCartTxt = $config->get('monster_options_add_to_cart_text');
?>
<style>
	<?php if(!empty($mainBg)): ?>
		body{background:#<?php echo $mainBg ?>;}
	<?php endif; ?>
	
	<?php if(!empty($bgColor1)): ?>
		.bg1{background:#<?php echo $bgColor1 ?> url(<?php echo HTTP_SERVER . 'catalog/view/theme/monster/image/topBg.png'; ?>) repeat-x;height:30px;width:100%;position:fixed;}
		ul.languages > li .dropdown-menu{background:#<?php echo $bgColor1 ?>;}
	<?php endif; ?>
	
	<?php if(!empty($topLinkColor)): ?>
		.links li a,.currency li button,ul.languages li,ul.languages li a{color:#<?php echo $topLinkColor ?>;}
			.links li a:hover,.currency li button:hover{color:#<?php echo $topLinkColor ?>;opacity:0.7;}
	<?php endif; ?>
	
	<?php if(!empty($bgColor2)): ?>
		.bg2{background-color:#<?php echo $bgColor2 ?>;height:47px;width:100%;position:fixed;top:30px;}
		header.sticky{background-color:#<?php echo $bgColor2 ?>;}
		#cart{background:#<?php echo $bgColor2 ?> url(<?php echo HTTP_SERVER . 'catalog/view/theme/monster/image/miniCart.png'; ?>) no-repeat right;}
	<?php endif; ?>
	
	<?php if(!empty($searchBtn)): ?>
		#search button{background:#<?php echo $searchBtn; ?>;}
	<?php endif; ?>
	
	<?php if(!empty($searchBtnColor)): ?>
		#search button .fa{color:#<?php echo $searchBtnColor; ?>;}
	<?php endif; ?>
	
	<?php if(!empty($catColor)): ?>
		ul.categories li a, #menu .navbar-nav li a{color:#<?php echo $catColor; ?>;}
	<?php endif; ?>
	
	<?php if(!empty($catArrow)): ?>
		ul.categories li a .fa, #menu .navbar-nav li a .fa{color:#<?php echo $catArrow; ?>;}
	<?php endif; ?>
	
	<?php if(!empty($slideArrow)): ?>
		.fa-chevron-right, .fa-chevron-left,#content .panel-heading i{color:#<?php echo $slideArrow; ?>;}
		.bestseller .flex-control-paging li a.flex-active, .thumbs .flex-control-paging li a.flex-active, .related .flex-control-nav li a.flex-active{background:#<?php echo $slideArrow; ?>;}
	<?php endif; ?>
	
	<?php if(!empty($priceColor)): ?>
		p.price{color:#<?php echo $priceColor; ?>;}
	<?php endif; ?>
	
	<?php if(!empty($productTitle)): ?>
		.product-wrapper ul.slides li h4 a, ul.product-grid li h4 a,.featured_categories .left a.parent-cat,.addInfo li a,.rating a,.related .products ul li a,.breadcrumb li a,.catInfo .col-sm-3 li a,.display ul li a,.compare a,li.product-list h4 a{color:#<?php echo $productTitle; ?>;}
	<?php endif; ?>
	
	<?php if(!empty($addToCartBg)): ?>
		.button-group button:first-child, .addToCart #button-cart{background:#<?php echo $addToCartBg; ?> url(<?php echo HTTP_SERVER . 'catalog/view/theme/monster/image/buttons.png'; ?>) no-repeat left;border-color:#<?php echo $addToCartBg; ?>;}
		#cart .dropdown-menu li.miniBtns p a:first-child,.btn-checkout a, .button-confirm{background:#<?php echo $addToCartBg; ?>;}
		<?php if(!empty($addToCartTxt)): ?>
			.button-group button:first-child, .addToCart #button-cart,#cart .dropdown-menu li.miniBtns p a:first-child,.btn-checkout a, .button-confirm{color:#<?php echo $addToCartTxt; ?>;}
			.btn-checkout a, button-confirm{border-color:#<?php echo $addToCartBg; ?>}
		<?php endif; ?>
	<?php endif; ?>
	
	<?php if(!empty($addToCartIcon)): ?>
		.button-group button:first-child .fa, .addToCart #button-cart .fa,#cart .dropdown-menu li.miniBtns p a:first-child .fa{color:#<?php echo $addToCartIcon; ?>;}
	<?php endif; ?>
	
</style>

</head>
<body class="<?php echo $class; ?> <?php if(isset($_GET['route']) && $_GET['route'] == 'product/product'){echo 'product-page';} ?> <?php if (strpos($_SERVER['HTTP_USER_AGENT'], 'Trident/7.0; rv:11.0') !== false) { echo "ie"; }?>">
<div class="bg1"></div>
<div class="bg2"></div>
<div class="wrapper">
<nav id="top">
  <div class="container">
    <div id="top-links">
      <ul class="links">
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"><?php echo $text_account; ?></a></li>
		<?php if ($logged) { ?>
                <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
                <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
        <?php } ?>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><?php echo $text_checkout; ?></a></li>
      </ul>
    <?php echo $currency; ?>
    <?php echo $language; ?>
    
  	<div class="clear"></div>
    </div>
  </div>
  <div class="clear"></div>
</nav>
<header>
        <div id="logo">
          <?php if ($logo) { ?>
          	<a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          	<h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
        <ul id="hidden-nav">
			<?php foreach ($categories as $category) { ?>
                <?php if ($category['children']) { ?>
                <li><a href="<?php echo $category['href']; ?>" <?php if($category['children']){ echo "class='parent'";} ?>><?php echo $category['name']; ?></a>
                    <ul>
                          <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                            <?php foreach ($children as $child) { ?>
                                <li><a href="<?php echo $child['href']; ?>"><i class="fa fa-chevron-right"></i><?php echo $child['name']; ?></a></li>
                            <?php } ?>
                          <?php } ?>
                     </ul>
                </li>
                <?php } else { ?>
                    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                <?php } ?>
            <?php } ?>
      	</ul>
		<?php echo $search; ?>
      <?php echo $cart; ?>
      <div class="clear"></div>
</header>
<div class="main">
<?php if($data['class'] != 'common-home'): ?>
 <nav id="menu" class="navbar">
     <ul>
        <li class="navbar-header"><a href="javascript:void(0);"><?php echo $text_category; ?> <i class="fa fa-caret-down"></i></a>
            <ul class="nav navbar-nav">
				<?php foreach ($categories as $category) { ?>
					<?php if ($category['children']) { ?>
                    <li class="level0"><a href="<?php echo $category['href']; ?>" <?php if($category['children']){ echo "class='parent'";} ?>><?php echo $category['name']; ?></a>
                        <ul class="list-unstyled">
							  <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                              	<?php foreach ($children as $child) { ?>
                                	<li><a href="<?php echo $child['href']; ?>"><i class="fa fa-chevron-right"></i><?php echo $child['name']; ?></a></li>
                                <?php } ?>
                              <?php } ?>
                         </ul>
                    </li>
                    <?php } else { ?>
                        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                    <?php } ?>
                <?php } ?>
              </ul>
          </li>
      </ul>
  </nav>
<?php endif; ?>
