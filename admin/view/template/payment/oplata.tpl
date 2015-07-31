<?php echo $header; ?>
<?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-cod" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $heading_title; ?></h3>
            </div>
            <div class="panel-body">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <tr>
            <td><span class="required">*</span> <?php echo $entry_merchant; ?></td>
            <td><input type="text" name="oplata_merchant" value="<?php echo $oplata_merchant; ?>" />
              <?php if ($error_merchant) { ?>
              <span class="error"><?php echo $error_merchant; ?></span>
              <?php } ?></td>
          </tr>
          <tr>  
            <td><span class="required">*</span> <?php echo $entry_secretkey; ?></td>
            <td><input type="text" name="oplata_secretkey" value="<?php echo $oplata_secretkey; ?>" />
              <?php if ($error_secretkey) { ?>
              <span class="error"><?php echo $error_secretkey; ?></span>
              <?php } ?></td>
          </tr>

           <tr>
            <td><?php echo $entry_currency; ?></td>
            <td><input type="text" name="oplata_currency" value="<?php echo ($oplata_currency == "") ? "UAH" : $oplata_currency; ?>" /></td>
          </tr>  

           <tr>
            <td><?php echo $entry_backref; ?></td>
            <td><input type="text" name="oplata_backref" value="<?php echo $oplata_backref; ?>" /></td>
          </tr>

            <tr>
                <td><?php echo $entry_server_back; ?></td>
                <td><input type="text" name="oplata_server_back" value="<?php echo $oplata_server_back; ?>" /></td>
            </tr>

            <tr>
            <td><?php echo $entry_language; ?></td>
            <td><input type="text" name="oplata_language" value="<?php echo ($oplata_language == "") ? "RU" : $oplata_language; ?>" /></td>
          </tr> 

          <tr>
            <td><?php echo $entry_order_status; ?></td>
            <td><select name="oplata_order_status_id">
                <?php 
                foreach ($order_statuses as $order_status) { 

                $st = ($order_status['order_status_id'] == $oplata_order_status_id) ? ' selected="selected" ' : ""; 
                ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" <?= $st ?> ><?php echo $order_status['name']; ?></option>
                <?php } ?>
              </select></td>
          </tr>
                  <tr>
            <td><?php echo $entry_status; ?></td>
            <td><select name="oplata_status">
                <? $st0 = $st1 = ""; 
                 if ( $oplata_status == 0 ) $st0 = 'selected="selected"';
                  else $st1 = 'selected="selected"';
                ?>

                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>

              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_sort_order; ?></td>
            <td><input type="text" name="oplata_sort_order" value="<?php echo $oplata_sort_order; ?>" size="1" /></td>
          </tr>
        </table>
      </form>
            </div>
        </div>
    </div>
</div>
<?php echo $footer; ?>