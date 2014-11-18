<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    	<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
    <div class="catInfo">
          <h1><?php echo $heading_title; ?></h1>
          <?php if ($thumb || $description) { ?>
          <div class="row">
            <?php if ($thumb) { ?>
            <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
            <?php } ?>
            <?php if ($description) { ?>
            <div class="col-sm-10"><?php echo $description; ?></div>
            <?php } ?>
             <div class="clear"></div>
          </div>
          <?php } ?>
          <div class="clear"></div>
          <?php if ($categories) { ?>
          <div class="refine">
              <h3><?php echo $text_refine; ?></h3>
              <?php if (count($categories) <= 5) { ?>
              <div class="row">
                <div class="col-sm-3">
                  <ul>
                    <?php foreach ($categories as $category) { ?>
                    	<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                </div>
              </div>
              <?php } else { ?>
              <div class="row">
                <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
                <div class="col-sm-3">
                  <ul>
                    <?php foreach ($categories as $category) { ?>
                    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                </div>
                <?php } ?>
              </div>
              <?php } ?>
              <div class="clear"></div>
          </div>
          <?php } ?>
          <?php echo $content_top; ?>
      </div>
      <?php if ($products) { ?>
      <div class="toolbar">
        <div class="sorter">
            <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
          <select id="input-sort" class="form-control col-sm-3" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
        <div class="limit">
          <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
          <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
        <div class="display">
        	<ul>
            	<li>View as:</li>
            	<li><a id="grid-view" href="#" data-toggle="tooltip"><?php echo $button_grid; ?></a></li>
                <li><a id="list-view" href="#" data-toggle="tooltip"><?php echo $button_list; ?></a></li>
            </ul>
        </div>
        <p class="compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p>
        <div class="clear"></div>
      </div><?php //end toolbar div ?>
      <ul class="product-list">
        <?php foreach ($products as $product) { ?>
        <li class="product-layout">
          <div class="product-thumb">
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
              <div class="button-group">
                <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart fa-flip-horizontal"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                <button type="button" class="addTo" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                <button type="button" class="addTo" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
              </div>
            </div>
              </div>
        </li>
        <?php } ?>
      </ul>
      	<?php if($pagination): ?>
        	<div class="pagination><?php echo $pagination; ?></div>
        <?php endif; ?>
        <div class="results"><?php echo $results; ?></div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <div class="catEmpty">
     	<p><?php echo $text_empty; ?></p>
        <a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?>
      <div class="clear"></div>
      </div>
    <?php echo $column_right; ?>
    </div>
</div>
<?php echo $footer; ?>