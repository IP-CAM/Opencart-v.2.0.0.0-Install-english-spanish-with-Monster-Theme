<div class="bestseller">
	<div class="product-wrapper">
        <h3><?php echo $heading_title; ?></h3>
        <div class="products">
           <ul class="slides">
                <?php foreach ($products as $product) { ?>
                    <li>
                        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
                        <div class="caption">
                            <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                            <p class="description"><?php echo $product['description']; ?></p>
                            <?php if ($product['price']) { ?>
                                <p class="price">
                            <?php if (!$product['special']) { ?>
                                <?php echo $product['price']; ?>
                            <?php } else { ?>
                                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                            <?php } ?>
                            <?php if ($product['tax']) { ?>
                                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                            <?php } ?>
                                </p>
                            <?php } ?>
                        </div>
                    </li>
                <?php } ?>
            </ul>
        </div>
     </div>
</div>
<script type="text/javascript"><!--
$(window).load(function() {
	$('.bestseller .products').flexslider({
		animation: 'slide',
		animationLoop: false,
		slideshow:false,
		directionNav: false,
		controlNav: true,
		itemWidth: 210,
		itemMargin: 11,
		touch: true,
		animationSpeed:500
	});
	$('.bestseller .products .flex-control-nav').prepend('<li><a href="prev" class="btnPrev slideBtn"><i class="fa fa-chevron-left"></i></a></li>');
	$('.bestseller .products .flex-control-nav').append('<li><a href="next" class="btnNext slideBtn"><i class="fa fa-chevron-right"></i></a></li>');
	function slides(slideBtn,block){
		$(slideBtn).on('click', function(){
			var href = $(this).attr('href');
			$(block).flexslider(href)
			return false;
		});
	}
	slides('.bestseller .btnPrev,.bestseller .btnNext','.bestseller .products');
});

--></script>

