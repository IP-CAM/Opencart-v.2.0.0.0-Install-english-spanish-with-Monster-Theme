<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-monster-options" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
  	 <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
          <div class="panel-heading">
              <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
          </div>  
          <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-monster-options" class="form-horizontal"> 
          <table id="module" class="table table-striped table-bordered table-hover">
            <tbody>
            	<tr>
            		<td>Main Background Color (Default Grey)</td>
               		<td>
               			<input type="text" name="monster_options_main_bg" value="<?php echo $monster_options_main_bg; ?>" class="colorPicker"/>
                    	<span style="background:#<?php echo $monster_options_main_bg; ?>;width:15px;height:15px;display:block;"></span>
               		</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
           		<tr>
            		<td>Top Navigation Background Color</td>
               		<td>
               			<input type="text" name="monster_options_bg_color" value="<?php echo $monster_options_bg_color; ?>" class="colorPicker"/>
                    	<span style="background:#<?php echo $monster_options_bg_color; ?>;width:15px;height:15px;display:block;"></span>
               		</td>
                    
            		<td>Top Links Color</td>
               		<td>
               			<input type="text" name="monster_options_top_links_color" value="<?php echo $monster_options_top_links_color; ?>" class="colorPicker"/>
                    	<span style="background:#<?php echo $monster_options_top_links_color; ?>;width:15px;height:15px;display:block;"></span>
               		</td>
                    <td></td>
                    <td></td>
                </tr>
                
                <tr>
            		<td>Header Background Color</td>
               		<td>
               			<input type="text" name="monster_options_header_bg" value="<?php echo $monster_options_header_bg; ?>" class="colorPicker"/>
                    	<span style="background:#<?php echo $monster_options_header_bg; ?>;width:15px;height:15px;display:block;"></span>
               		</td>
                    <td>Search Button Background</td>
               		<td>
               			<input type="text" name="monster_options_search_btn" value="<?php echo $monster_options_search_btn; ?>" class="colorPicker"/>
                    	<span style="background:#<?php echo $monster_options_search_btn; ?>;width:15px;height:15px;display:block;"></span>
               		</td>
                    <td>Search Button Color</td>
               		<td>
               			<input type="text" name="monster_options_search_btn_color" value="<?php echo $monster_options_search_btn_color; ?>" class="colorPicker"/>
                    	<span style="background:#<?php echo $monster_options_search_btn_color; ?>;width:15px;height:15px;display:block;"></span>
               		</td>
                </tr>
                <tr>
                	 <td>Category Links Color</td>
                    <td>
               			<input type="text" name="monster_options_cat_color" value="<?php echo $monster_options_cat_color; ?>" class="colorPicker"/>
                    	<span style="background:#<?php echo $monster_options_cat_color; ?>;width:15px;height:15px;display:block;"></span>
               		</td>
                     <td>Sub Categories Arrow Color</td>
                    <td>
               			<input type="text" name="monster_options_cat_arrow" value="<?php echo $monster_options_cat_arrow; ?>" class="colorPicker"/>
                    	<span style="background:#<?php echo $monster_options_cat_arrow; ?>;width:15px;height:15px;display:block;"></span>
               		</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                	<td>Slideshow Arrows Color</td>
                    <td>
               			<input type="text" name="monster_options_slide_arrow" value="<?php echo $monster_options_slide_arrow; ?>" class="colorPicker"/>
                    	<span style="background:#<?php echo $monster_options_slide_arrow; ?>;width:15px;height:15px;display:block;"></span>
               		</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Product Title Color</td>
                	<td>
                    	<input type="text" name="monster_options_title_color" value="<?php echo $monster_options_title_color; ?>" class="colorPicker"/>
                    	<span style="background:#<?php echo $monster_options_title_color; ?>;width:15px;height:15px;display:block;"></span></td>
                    <td>Price Color</td>
                    <td>
               			<input type="text" name="monster_options_price_color" value="<?php echo $monster_options_price_color; ?>" class="colorPicker"/>
                    	<span style="background:#<?php echo $monster_options_price_color; ?>;width:15px;height:15px;display:block;"></span>
               		</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                	<td>Add to Cart Button Color</td>
                    <td>
               			<input type="text" name="monster_options_add_to_cart" value="<?php echo $monster_options_add_to_cart; ?>" class="colorPicker"/>
                    	<span style="background:#<?php echo $monster_options_add_to_cart; ?>;width:15px;height:15px;display:block;"></span>
               		</td>
                    <td>Add to Cart Icon Color</td>
                    <td>
               			<input type="text" name="monster_options_add_to_cart_icon" value="<?php echo $monster_options_add_to_cart_icon; ?>" class="colorPicker"/>
                    	<span style="background:#<?php echo $monster_options_add_to_cart_icon; ?>;width:15px;height:15px;display:block;"></span>
               		</td>
                    <td>Add to Cart Text Color</td>
                    <td>
               			<input type="text" name="monster_options_add_to_cart_text" value="<?php echo $monster_options_add_to_cart_text; ?>" class="colorPicker"/>
                    	<span style="background:#<?php echo $monster_options_add_to_cart_text; ?>;width:15px;height:15px;display:block;"></span>
               		</td>
                </tr>
                <tr>
                	<td>Footer Banner 1 (350x180px)
                    </td>
                    <td>
                        <div class="form-group">
                            <div class="col-sm-10">
                                <a href="" id="banner1" data-toggle="image" class="img-thumbnail"><img src="<?php echo $banner1; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                              <input type="hidden" name="monster_options_banner_one" value="<?php echo $banner_one; ?>" id="banner_one" />
                            </div>
                       </div>
              	   </td>
                   <td>URL</td>
                   <td><input type="text" name="monster_options_banner_one_url" value="<?php echo $monster_options_banner_one_url; ?>" /></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                   <td>Footer Banner 2 (350x180px)</td>
                    <td>
                        <div class="form-group">
                            <div class="col-sm-10">
                                <a href="" id="banner2" data-toggle="image" class="img-thumbnail"><img src="<?php echo $banner2; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                              <input type="hidden" name="monster_options_banner_two" value="<?php echo $banner_two; ?>" id="banner_two" />
                            </div>
                       </div>
              	   </td>
                   <td>URL</td>
                   <td><input type="text" name="monster_options_banner_two_url" value="<?php echo $monster_options_banner_two_url; ?>" /></td>
                    <td></td>
                    <td></td>
                   </tr>
                   <tr>
                   <td>Footer Banner 3 (350x180px)</td>
                    <td>
                        <div class="form-group">
                            <div class="col-sm-10">
                                <a href="" id="banner3" data-toggle="image" class="img-thumbnail"><img src="<?php echo $banner3; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                              <input type="hidden" name="monster_options_banner_three" value="<?php echo $banner_three; ?>" id="banner_three" />
                            </div>
                       </div>
              	   </td>
                   <td>URL</td>
                   <td><input type="text" name="monster_options_banner_three_url" value="<?php echo $monster_options_banner_three_url; ?>" /></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                	<td>Google Map Latitude</td>
                    <td><input type="text" name="monster_options_google_lat" value="<?php echo $monster_options_google_lat; ?>" /></td>
                    <td>Google Map Longitube</td>
                    <td><input type="text" name="monster_options_google_lng" value="<?php echo $monster_options_google_lng; ?>" /></td>
                    <td>Location Icon</td>
                    <td>
                        <div class="form-group">
                            <div class="col-sm-10">
                                <a href="" id="map" data-toggle="image" class="img-thumbnail"><img src="<?php echo $map_icon; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                              <input type="hidden" name="monster_options_map_icon" value="<?php echo $mapIcon; ?>" id="mapIcon" />
                            </div>
                       </div>
              	   </td>
                </tr>
                 <tr>
                	<td>Facebook URL</td>
                    <td><input type="text" name="monster_options_fb" value="<?php echo $monster_options_fb; ?>" /></td>
                 </tr>
                 <tr>
                	<td>Twitter URL</td>
                    <td><input type="text" name="monster_options_tw" value="<?php echo $monster_options_tw; ?>" /></td>
                 </tr>
                 <tr>
                	<td>Pinterest URL</td>
                    <td><input type="text" name="monster_options_pin" value="<?php echo $monster_options_pin; ?>" /></td>
                 </tr>
                 <tr>
                	<td>Youtube URL</td>
                    <td><input type="text" name="monster_options_yt" value="<?php echo $monster_options_yt; ?>" /></td>
                 </tr>
             </tbody>
      </table>
      </form>
     </div>
  </div>
   <?php /*?>   <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <table class="form">
     		 <tr>
               <td>Background Color</td>
               <td>
               		<input type="text" name="monster_options[bgColor]" value="<?php if(isset($monster_options['bgColor'])){ echo $monster_options['bgColor']; } ?>" class="colorPicker" />
                    <span style="background:#<?php if(isset($monster_options['bgColor'])){ echo $monster_options['bgColor']; } ?>;"></span>
               </td>
           		<td>Background Pattern/Image (Upload a pattern/Image) <br /> <small style="color:red">Note:</small> <small>If you are going to use a pattern/image, the "Background Color" field must be blank.</small></td>
           		<td>
                		<div class="image">
                        <?php if($monster_options['bgImage']): ?>
                        	<img src="<?php echo HTTP_CATALOG . 'image/' . $monster_options['bgImage']; ?>" alt="" id="thumb" width="100" height="100" />
                        <?php endif; ?>
                  		<input type="hidden" name="monster_options[bgImage]" value="<?php echo $monster_options['bgImage']; ?>" id="image"  />
                      	<br />
                      	<a onclick="image_upload('image', 'thumb');"><?php echo $text_browse; ?></a>
                     	<a onclick="$('#image').attr('value','');$('#thumb').remove();"><?php echo $button_remove; ?></a>
               </td>             
           </tr>
      </table>
      <table class="form">      
      <tr>
            	<td>Show/Hide Social Icons (Header Section):</td>
                <td>
                    <select name="monster_options[social]">
                    	<option></option>
                        <option value="Show" <?php if(isset($monster_options['social']) && $monster_options['social']=='Show'){ echo 'selected="selected"'; }?>>Show</option>
                        <option value="Hide" <?php if(isset($monster_options['social']) && $monster_options['social']=='Hide'){ echo 'selected="selected"'; }?>>Hide</option>
                    </select>                
               </td>
           </tr>		
      		
      		<tr>
                <td>Primary Colour (Default Red):</td>
                        <td>
                           <input type="text" name="monster_options[primary]" value="<?php if(isset($monster_options['primary'])){ echo $monster_options['primary']; } ?>" class="colorPicker" />
                           <span style="background:#<?php if(isset($monster_options['primary'])){ echo $monster_options['primary']; } ?>;"></span>
                    </td>
                    <td>Search and Top Menu "Background Colour": </td>
                        <td>
                            <input type="text" name="monster_options[secondary]" value="<?php if(isset($monster_options['secondary'])){ echo $monster_options['secondary'];} ?>" class="colorPicker" /> 
                            <span style="background:#<?php echo $monster_options['secondary'] ?>;"></span>
                        </td>
        	</tr>
            <tr>
                <td>Top Menu "Link" Colour: </td>
                    <td>
                       <input type="text" name="monster_options[slideTop]" value="<?php if(isset($monster_options['slideTop'])){ echo $monster_options['slideTop']; } ?>" class="colorPicker" />
                       <span style="background:#<?php echo $monster_options['slideTop']; ?>;"></span>
                </td>
                <td>Top Menu "Active Link" Colour: </td>
                    <td>
                       <input type="text" name="monster_options[active]" value="<?php if(isset($monster_options['active'])){ echo $monster_options['active']; } ?>" class="colorPicker" />
                       <span style="background:#<?php echo $monster_options['active']; ?>;"></span>
                </td>
                <td>Search & Category "Border" Colour:</td>
                    <td>
                       <input type="text" name="monster_options[slideBottom]" value="<?php if(isset($monster_options['slideBottom'])){ echo $monster_options['slideBottom']; } ?>" class="colorPicker" />
                       <span style="background:#<?php echo $monster_options['slideBottom']; ?>;"></span>
                </td>
            </tr>
           
            <tr>
            	<td>Slideshow Speed, e.g 5000. <br />(5000 = 5 Seconds)</td>
                <td><input type="text" name="monster_options[slideSpeed]" value="<?php if(isset($monster_options['slideSpeed'])){ echo $monster_options['slideSpeed']; } ?>" /></td>
                <td>Slideshow Animation</td>
                <td>
                    <select name="monster_options[slideAnim]">
                        <option value="slide" <?php if(isset($monster_options['slideAnim']) && $monster_options['slideAnim']=='slide'){ echo 'selected="selected"'; }?>>Slide</option>
                        <option value="fade" <?php if(isset($monster_options['slideAnim']) && $monster_options['slideAnim']=='fade'){ echo 'selected="selected"'; }?>>Fade</option>
                    </select>                
               </td>
            </tr>
           <tr>
            	<td>Show/Hide "Add to cart" button in module blocks:</td>
                <td>
                    <select name="monster_options[atc]">
                    	<option></option>
                        <option value="Show" <?php if(isset($monster_options['atc']) && $monster_options['atc']=='Show'){ echo 'selected="selected"'; }?>>Show</option>
                        <option value="Hide" <?php if(isset($monster_options['atc']) && $monster_options['atc']=='Hide'){ echo 'selected="selected"'; }?>>Hide</option>
                    </select>                
               </td>
           </tr>
      </table>
      <table class="form">
      	<td>Header Image (Top Right):</td>
           		<td>
                		<div class="image1">
                        <?php if($monster_options['headerImage']): ?>
                        	<img src="<?php echo HTTP_CATALOG . 'image/' . $monster_options['headerImage']; ?>" alt="" id="thumb1" width="100" height="100" />
                        <?php endif; ?>
                  		<input type="hidden" name="monster_options[headerImage]" value="<?php echo $monster_options['headerImage']; ?>" id="image1"  />
                      	<br />
                      	<a onclick="image_upload('image1', 'thumb1');"><?php echo $text_browse; ?></a>
                        <a onclick="$('#image1').attr('value','');$('#thumb1').remove();"><?php echo $button_remove; ?></a>
                        </div><br />
                        Image Link
                        <input type="text" name="monster_options[topImgHref]" value="<?php if($monster_options['topImgHref']){ echo $monster_options['topImgHref']; } else { echo "http://"; } ?>" />
               </td>
      </table>
      <table class="form">
      	<td>Footer Image 1</td>
        <td><div class="image2">
                        <?php if($monster_options['footerImage']): ?>
                        	<img src="<?php echo HTTP_CATALOG . 'image/' . $monster_options['footerImage']; ?>" alt="" id="thumb2" width="100" height="100" />
                        <?php endif; ?>
                  		<input type="hidden" name="monster_options[footerImage]" value="<?php echo $monster_options['footerImage']; ?>" id="image2"  />
                      	<br />
                      	<a onclick="image_upload('image2', 'thumb2');"><?php echo $text_browse; ?></a>
                        <a onclick="$('#image2').attr('value','');$('#thumb2').remove();"><?php echo $button_remove; ?></a>
                        </div><br />
                        Image Link
                        <input type="text" name="monster_options[footerImgHref]" value="<?php if($monster_options['footerImgHref']){ echo $monster_options['footerImgHref']; } else { echo "http://"; } ?>" /></td>
        <td>Footer Image 2</td>
        <td><div class="image3">
                        <?php if($monster_options['footerImage1']): ?>
                        	<img src="<?php echo HTTP_CATALOG . 'image/' . $monster_options['footerImage1']; ?>" alt="" id="thumb3" width="100" height="100" />
                        <?php endif; ?>
                  		<input type="hidden" name="monster_options[footerImage1]" value="<?php echo $monster_options['footerImage1']; ?>" id="image3"  />
                      	<br />
                      	<a onclick="image_upload('image3', 'thumb3');"><?php echo $text_browse; ?></a>
                        <a onclick="$('#image3').attr('value','');$('#thumb3').remove();"><?php echo $button_remove; ?></a>
                        </div><br />
                        Image Link
                        <input type="text" name="monster_options[footerImgHref1]" value="<?php if($monster_options['footerImgHref1']){ echo $monster_options['footerImgHref1']; } else { echo "http://"; } ?>" /></td>
        <td>Footer Image 3</td>
        <td><div class="image4">
                        <?php if($monster_options['footerImage']): ?>
                        	<img src="<?php echo HTTP_CATALOG . 'image/' . $monster_options['footerImage2']; ?>" alt="" id="thumb4" width="100" height="100" />
                        <?php endif; ?>
                  		<input type="hidden" name="monster_options[footerImage2]" value="<?php echo $monster_options['footerImage2']; ?>" id="image4"  />
                      	<br />
                      	<a onclick="image_upload('image4', 'thumb4');"><?php echo $text_browse; ?></a>
                        <a onclick="$('#image4').attr('value','');$('#thumb4').remove();"><?php echo $button_remove; ?></a>
                        </div><br />
                        Image Link
                        <input type="text" name="monster_options[footerImgHref2]" value="<?php if($monster_options['footerImgHref2']){ echo $monster_options['footerImgHref2']; } else { echo "http://"; } ?>" /></td>
      </table>
    </div>
  
  </div><?php */?>
  
  
</div>
<script type="text/javascript"><!--
	$(function(){
		$('input.colorPicker').ColorPicker({
			onSubmit: function(hsb, hex, rgb, el) {
				$(el).val(hex);
				$(el).ColorPickerHide();
				$(el).parent().find('span').css('background','#'+hex);	
			},
			onBeforeShow: function () {
				$(this).ColorPickerSetColor(this.value);
			}
		})
		.bind('keyup', function(){
			$(this).ColorPickerSetColor(this.value);	
		});
	});
--></script>

<?php echo $footer; ?>