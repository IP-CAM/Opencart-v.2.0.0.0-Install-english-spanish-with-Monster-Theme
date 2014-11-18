<div class="category-mod">
    <div class="block-title">Categor&iacute;as</div>
    <ul class="categories">
      <?php foreach ($categories as $category) { ?>
            <li class="level0<?php if($category['category_id'] == $category_id){ echo " active";} ?>"><a href="<?php echo $category['href']; ?>" <?php if($category['children']){ echo "class='parent'";} ?>><?php echo $category['name']; ?></a>
                <?php if ($category['children']) { ?>
                    <ul>
                      <?php foreach ($category['children'] as $child) { ?>
                          <?php if ($child['category_id'] == $child_id) { ?>
                            <li><a href="<?php echo $child['href']; ?>" class="active"><?php echo $child['name']; ?></a></li>
                          <?php } else { ?>
                            <li><a href="<?php echo $child['href']; ?>"><i class="fa fa-chevron-right"></i><?php echo $child['name']; ?></a></li>
                          <?php } ?>
                      <?php } ?>
                     </ul>
                <?php } ?>
            </li>
      <?php } ?>
      <li class="more-cat">
                	<a href="javascript:void(0);">M&aacute;s categor&iacute;as</a>
                </li>
    </ul>
</div>
