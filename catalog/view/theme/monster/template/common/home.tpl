<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6 no-padding'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-10 no-padding'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
		<?php echo $content_top; ?>
    </div>
    <div class="clear"></div>
    <div class="bottom">
		<?php echo $content_bottom; ?>
    </div>
</div>

</div>
<?php echo $footer; ?>