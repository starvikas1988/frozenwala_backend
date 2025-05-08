<!DOCTYPE html>
<html>
   <head>
      <?php $this->load->view('comman/code_css.php'); ?>
      <link rel="stylesheet" href="<?php echo $theme_link; ?>plugins/datepicker/datepicker3.css">
   </head>
   <body class="hold-transition skin-blue sidebar-mini">
      <div class="wrapper">
         <?php $this->load->view('sidebar'); ?>
         <?php $CI =& get_instance(); ?>
         <div class="content-wrapper">
            <section class="content-header">
               <h1><?= $page_title; ?></h1>
               <ol class="breadcrumb">
                  <li><a href="<?= base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
                  <li><a href="<?= base_url('stock'); ?>">Stock</a></li>
                  <li class="active">Edit Stock</li>
               </ol>
            </section>

            <div class="box box-primary">
               <div class="box-header with-border">
                  <h3 class="box-title"><i class="fa fa-edit"></i> Edit Stock</h3>
               </div>
               <form action="<?= base_url('stock/update/' . $stock->id) ?>" method="post">
                  <div class="box-body">
                     <!-- CSRF Token -->
                     <input type="hidden" name="<?= $this->security->get_csrf_token_name(); ?>" 
                            value="<?= $this->security->get_csrf_hash(); ?>" />

                     <div class="form-group">
                        <label for="item_id_id">Select Item</label>
                        <select name="item_id_id" id="item_id_id" class="form-control" required>
                           <option value="">-- Select Item --</option>
                           <?php foreach ($items as $item): ?>
                              <option value="<?= $item->id ?>" <?= $item->id == $stock->item_id_id ? 'selected' : '' ?>>
                                 <?= $item->item_name ?>
                              </option>
                           <?php endforeach; ?>
                        </select>
                     </div>

                     <div class="form-group">
                        <label for="openingstock">Opening Stock</label>
                        <input type="number" name="openingstock" id="openingstock" class="form-control"
                               value="<?= $stock->openingstock ?>" required>
                     </div>
                     <div class="form-group">
                        <label for="piece_count">Piece Count</label>
                        <input type="number" name="piece_count" id="piece_count" class="form-control"
                               value="<?= $stock->piece_count ?>" required>
                     </div>
                  </div>

                  <div class="box-footer">
                     <button type="submit" class="btn btn-primary">
                        <i class="fa fa-save"></i> Update Stock
                     </button>
                     <a href="<?= base_url('stock') ?>" class="btn btn-default">Cancel</a>
                  </div>
               </form>
            </div>
         </div>
         <?php $this->load->view('footer'); ?>
         <div class="control-sidebar-bg"></div>
      </div>

      <?php $this->load->view('comman/code_js_sound'); ?>
      <?php $this->load->view('comman/code_js'); ?>
   </body>
</html>
