<?php if (count($languages) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">
<ul class="languages">
    <li>
    <span data-toggle="dropdown">
		<?php foreach ($languages as $language) { ?>
            <?php if ($language['code'] == $code) { ?>
                <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>">
            <?php } ?>
        <?php } ?>
        <?php echo $text_language; ?>
    </span>
    <ul class="dropdown-menu">
      <?php foreach ($languages as $language) { ?>
     	<li><a href="<?php echo $language['code']; ?>"><img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
      <?php } ?>
    </ul>
    </li>
    
  </ul>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
<?php } ?>
