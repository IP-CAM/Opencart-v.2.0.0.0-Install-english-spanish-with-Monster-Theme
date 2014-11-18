<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-featured" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-featured" class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="featured_category_status" id="input-status" class="form-control">
                <?php if ($featured_category_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>   
          <table id="module" class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <td class="text-right">#</td>
                <td class="text-left"><?php echo $entry_cat; ?></td>
                <td class="text-left"><?php echo $entry_thumb; ?></td>
                <td></td>
                <td></td>
              </tr>
            </thead>
            <tbody>
              <?php $module_row = 1; ?>
              <?php //var_dump($featured_category_cat);?>
              <?php foreach ($featured_category_cat as $featured_module) { ?>
              <tr id="module-row<?php echo $featured_module['key']; ?>">
                <td class="text-right"><?php echo $module_row; ?></td>
                <td class="text-left">
                	<select name="featured_category_cat[<?php echo $featured_module['key']; ?>][cat]">
					<?php foreach($categories as $category): ?>
                		<option value="<?php echo $category['category_id']; ?>" <?php if($featured_module['cat']==$category['category_id']){ echo 'selected="selected"'; }?>><?php echo $category['name']; ?></option>
					<?php endforeach; ?>
                    </select>               
                </td>
                 <td class="text-left"><a href="" id="thumb-image<?php echo $featured_module['key']; ?>" data-toggle="image" class="img-thumbnail"><img src="<?php echo $featured_module['thumb']; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                  <input type="hidden" name="featured_category_cat[<?php echo $featured_module['key']; ?>][image]" value="<?php echo $featured_module['image']; ?>" id="input-image<?php echo $featured_module['key']; ?>" /></td>
                  <td></td>
               
                  <?php if (isset($error_image[$featured_module['key']])) { ?>
                  <div class="text-danger"><?php echo $error_image[$featured_module['key']]; ?></div>
                  <?php } ?></td>
                <td class="text-left"><button type="button" onclick="$('#module-row<?php echo $featured_module['key']; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
              </tr>
              <?php $module_row++; ?>
              <?php } ?>
            </tbody>
            <tfoot>
              <tr>
                <td colspan="4"></td>
                <td class="text-left"><button type="button" onclick="addModule();" data-toggle="tooltip" title="<?php echo $button_module_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
              </tr>
            </tfoot>
          </table>
        </form>
      </div>
    </div>
  </div>
  <script type="text/javascript"><!--
function addModule() {
	var token = Math.random().toString(36).substr(2);
			
	html  = '<tr id="module-row' + token + '">';
	html += '  <td class="text-right">' + ($('tbody tr').length + 1) + '</td>';
	html += '<td class="text-left">';
		html += '<select name="featured_category_cat[' + token + '][cat]">';
			html += '<option></option>';
				<?php foreach($categories as $cat): ?>
					html += '<option value="<?php echo $cat['category_id']; ?>"><?php echo $cat['name']; ?></option>';    	
				<?php endforeach; ?>
		html += '</select>';
	html += '</td>';
	html += '<td class="text-left"><a href="" id="thumb-image' + token + '" data-toggle="image" class="img-thumbnail"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><input type="hidden" name="featured_category_cat[' + token + '][image]" value="" id="input-image' + token + '" /></td>';
	html += '  <td class="text-left"><input type="text" name="featured_category_cat[' + token + '][width]" value="200" placeholder="<?php echo $entry_width; ?>" class="form-control" /> <input type="text" name="featured_category_cat[' + token + '][height]" value="200" placeholder="<?php echo $entry_height; ?>" class="form-control" /></td>';	
	html += '  <td class="text-left"><button type="button" onclick="$(\'#module-row' + token + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';
	
	$('#module tbody').append(html);
}
//--></script></div>
<?php echo $footer; ?>