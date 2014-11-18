<div class="featured_categories">
<h3><?php echo $heading_title; ?></h3>
<p class="block-description"><?php echo $description; ?></p>
<ul class="direction">
    <li><a href="prev" class="btnPrev slideBtn"><i class="fa fa-chevron-left"></i> Prev</a></li>
    <li><a href="next" class="btnNext slideBtn">Sig <i class="fa fa-chevron-right"></i></a></li>
</ul>
<div class="block-slide">
<ul class="category-list slides">
<?php 
	
	foreach($featured_category_cat as $featured):
	$cat = $featured['cat'];
	$catimg = $featured['catImg'];
	
?>
	<li class="top-level">
    	<?php foreach($categories as $category_1): ?>
                    <?php if($category_1['id'] == $cat) : //Top Level ?>
                    		<div class="left">
                                <a href="<?php echo $category_1['href']; ?>" class="thumb"><img src="<?php echo $catimg ; ?>"  /></a>
                                <a href="<?php echo $category_1['href']; ?>" class="parent-cat"><?php echo $category_1['name']; ?></a>
                                <?php if($category_1['children']): ?>
                                    <ul>
                                    <?php foreach($category_1['children'] as $subCat): //Get Sub Categories ?>
                                        <li><a href="<?php echo $subCat['href']; ?>"><?php echo $subCat['name']; ?></a></li>
                                    <?php endforeach; ?>            
                                    </ul>                  
                                <?php endif; ?>
                            </div>                            <?php if(count($category_1['products']) > 0): //Get Products from Category ?>
                                <ul class="right">
                                    <?php foreach($category_1['products'] as $product): ?>
                                                <li><a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><img src="<?php echo $product['thumb']; ?>" /></a></li>
                                    <?php endforeach;  ?>
                                </ul>
                            <?php endif; ?>
                            <div class="clear"></div>

                    <?php elseif($category_1['children']): ?>		
                        <?php foreach($category_1['children'] as $child) : ?>
                               <?php if($child['id'] == $cat) : ?>
                               <div class="left">
                                    <a href="<?php echo $child['href']; ?>" class="thumb"><img src="<?php echo $catimg ; ?>"  /></a>									
                                    <a href="<?php echo $child['href']; ?>" class="parent-cat"><?php echo $child['name']; ?></a>
                                <?php if($child['children']): ?>
                                    <ul class="level1">
                                        <?php foreach($child['children'] as $subCat): ?>
                                                <li><a href="<?php echo $subCat['href']; ?>"><?php echo $subCat['name']; ?></a></li>
                                        <?php endforeach; ?>
                                    </ul>
								<?php endif; ?>  
                                </div>
								 <?php if(count($child['products']) > 0): ?>
                                        <ul class="right">
                                            <?php foreach($child['products'] as $product): ?>
                                                        <li><a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><img src="<?php echo $product['thumb']; ?>" /></a></li>
                                            <?php endforeach; ?>
                                        </ul>
                                   <?php endif; ?>
                                   <div class="clear"></div>
                              
                                <?php elseif($child['children']): ?>
									<?php foreach($child['children'] as $c) : ?>
                                        <?php if($c['id'] == $cat): ?>
                                        <div class="left">
                                             <a href="<?php echo $c['href']; ?>" class="thumb"><img src="<?php echo $catimg ; ?>"  /></a>
                                             <a href="<?php echo $c['href']; ?>" class="parent-cat"><?php echo $c['name']; ?></a>
                                         </div>
                                               <?php if(count($c['products']) > 0): ?>
                                                    <ul class="right">
                                                        <?php foreach($c['products'] as $product): ?>
                                                                    <li><a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><img src="<?php echo $product['thumb']; ?>" /></a></li>
                                                        <?php endforeach; ?>
                                                    </ul>
                                               <?php endif; ?>
                                               <div class="clear"></div>
                                        <?php endif; ?>
                                    <?php endforeach; ?>
                            	<?php endif; ?>
                        <?php endforeach; ?>                    
                    <?php endif; ?>    
                <?php endforeach; ?>            
    </li>    
<?php  endforeach;?>
</ul>
</div>
</div>
<script type="text/javascript"><!--
	$(window).load(function() {
		$('.featured_categories .block-slide').flexslider({
			animation: 'slide',
			animationLoop: false,
			slideshow:false,
			directionNav: false,
			controlNav: false,
			animationSpeed:1000
		});
	});
--></script>