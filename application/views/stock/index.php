<!DOCTYPE html>
<html>
   <head>
      <!-- TABLES CSS CODE -->
      <?php $this->load->view('comman/code_css.php');?>
      <!-- bootstrap datepicker -->
      <link rel="stylesheet" href="<?php echo $theme_link; ?>plugins/datepicker/datepicker3.css">
   </head>
   <body class="hold-transition skin-blue sidebar-mini">
      <!-- Change the theme color if it is set -->
      <div class="wrapper">
         <!-- Left side column. contains the logo and sidebar -->
         <?php $this->load->view('sidebar');?>
        <?php $CI =& get_instance(); ?>
         <!-- Content Wrapper. Contains page content -->
         <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
               <h1>
                  <?=$page_title;?>
                  
               </h1>
               <ol class="breadcrumb">
                  <li><a href="<?php echo $base_url; ?>dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
                  <li class="active"><?=$page_title;?></li>
               </ol>
            </section>
            <div class="pay_now_modal">
            </div>
            <div class="view_payments_modal">
            </div>
            <!-- Main content -->
            <div class="box box-primary">
      <div class="box-header with-border">
         <h3 class="box-title"><i class="fa fa-cubes"></i> Stock List</h3>
         <a href="<?= base_url('stock/create') ?>" class="btn btn-success btn-sm pull-right">
            <i class="fa fa-plus"></i> Add New Stock
         </a>
      </div>

      <div class="box-body">
         <div class="table-responsive">
            <table class="table table-bordered table-striped table-hover">
               <thead class="bg-primary">
                  <tr>
                     <th>ID</th>
                     <th>Item</th>
                     <th>Opening Stock</th>
                     <th>Piece Count</th>
                     <th>Created At</th>
                     <th>Actions</th>
                  </tr>
               </thead>
               <tbody>
                  <?php if (!empty($stocks)): ?>
                     <?php foreach ($stocks as $s): ?>
                        <tr>
                           <td><?= $s->id ?></td>
                           <td><?= $s->item_name ?></td>
                           <td><?= $s->openingstock ?></td>
                           <td><?= $s->piece_count ?></td>
                           <td><?= $s->created_at ?></td>
                           <td>
                              <a href="<?= base_url('stock/edit/'.$s->id) ?>" class="btn btn-sm btn-primary">
                                 <i class="fa fa-edit"></i> Edit
                              </a>
                              <a href="<?= base_url('stock/delete/'.$s->id) ?>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this stock?')">
                                 <i class="fa fa-trash"></i> Delete
                              </a>
                           </td>
                        </tr>
                     <?php endforeach; ?>
                  <?php else: ?>
                     <tr>
                        <td colspan="5" class="text-center text-muted">No stock records found.</td>
                     </tr>
                  <?php endif; ?>
               </tbody>
            </table>
         </div>
      </div>
   </div>
           
           </div>
         <!-- /.content-wrapper -->
         <?php $this->load->view('footer');?>
         <!-- Add the sidebar's background. This div must be placed
            immediately after the control sidebar -->
         <div class="control-sidebar-bg"></div>
      </div>
      <!-- ./wrapper -->
      <!-- SOUND CODE -->
      <?php $this->load->view('comman/code_js_sound');?>
      <!-- TABLES CODE -->
      <?php $this->load->view('comman/code_js');?>
      <!-- bootstrap datepicker -->
      <script src="<?php echo $theme_link; ?>plugins/datepicker/bootstrap-datepicker.js"></script>
      <script type="text/javascript">
         //Date picker
           $('.datepicker').datepicker({
             autoclose: true,
           format: 'dd-mm-yyyy',
            todayHighlight: true
           });
      </script>
     
      <!-- Make sidebar menu hughlighter/selector -->
      <script>$(".<?php echo basename(__FILE__,'.php');?>-active-li").addClass("active");</script>
   </body>
</html>
