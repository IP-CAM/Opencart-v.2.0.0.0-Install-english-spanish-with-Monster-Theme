<div class="clear"></div>
</div> <?php //End Main div from header.tpl ?>
<div class="bottom-content">
	<div class="banners">
    	<?php
			global $config;
			$banner_one = $config->get('monster_options_banner_one');
				$banner_one_url = $config->get('monster_options_banner_one_url');
			$banner_two = $config->get('monster_options_banner_two');
				$banner_two_url = $config->get('monster_options_banner_two_url');
			$banner_three = $config->get('monster_options_banner_three');
				$banner_three_url = $config->get('monster_options_banner_three_url');
		?>
    	<ul>
        <?php if(!empty($banner_one)): ?>
        	<li><a href="<?php echo $banner_one_url; ?>"><img src="<?php echo HTTP_SERVER . 'image/' . $banner_one; ?>" /></a></li>
        <?php endif; ?>
        <?php if(!empty($banner_two)): ?>
            <li><a href="<?php echo $banner_two_url; ?>"><img src="<?php echo HTTP_SERVER . 'image/' . $banner_two; ?>" /></a></li>
        <?php endif; ?>
		<?php if(!empty($banner_three)): ?>
            <li><a href="<?php echo $banner_three_url; ?>"><img src="<?php echo HTTP_SERVER . 'image/' . $banner_three; ?>" /></a></li>
        <?php endif; ?>
        </ul>
    </div>
</div>

<footer>
  <div class="container">
    <div class="row">
      <div class="col-sm-3 social">
        <h5>Siguenos en:</h5>
        <ul>
        <?php
			$fb = $config->get('monster_options_fb');
			$tw = $config->get('monster_options_tw');
			$pin = $config->get('monster_options_pin');
			$yt = $config->get('monster_options_yt');
		?>
          <li class="fb"><a href="<?php echo $fb; ?>">Facebook</a></li>
          <li class="tw"><a href="<?php echo $tw; ?>">Twitter</a></li>
          <li class="pin"><a href="<?php echo $pin; ?>">Pinterest</a></li>
          <li class="yt"><a href="<?php echo $yt; ?>">YouTube</a></li>
        </ul>
      </div>
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3 last">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
      <div class="shipping">
      	<h5>ENV&Iacute;OS Y PAGOS</h5>
      	<p>Enviamos sus pedidos a todo el mundo y aceptamos todas las tarjetas de crédito y PayPal.</p>
        <img src="<?php echo HTTP_SERVER . 'catalog/view/theme/monster/image/shipping.jpg'; ?>" />
      </div>
    </div>
  <div class="clear"></div> 
  </div>
</footer>
<div class="credits">
	<p class="copyright">© <?php echo date('Y'); ?> - <span>Monster OpenCart Theme</span></p>
    <p class="author">Powered by <a href="http://opencart.com">OpenCart</a>. Theme by <a href="http://themeforest.net/user/raviG/portfolio?ref=raviG">raviG</a></p> 
    <div class="clear"></div>
</div>


</div> <?php //End Wrapper ?>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//--> 

<!-- Theme created by raviG http://themeforest.net/user/raviG/portfolio?ref=raviG -->

</body></html>