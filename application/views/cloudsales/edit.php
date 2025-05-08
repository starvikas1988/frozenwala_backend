<!DOCTYPE html>
<html>
<head>
   <?php $this->load->view('comman/code_css.php'); ?>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
   <?php $this->load->view('sidebar'); ?>
   <div class="content-wrapper">
      <section class="content-header">
         <h1>Edit Sale</h1>
         <ol class="breadcrumb">
            <li><a href="<?= base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?= base_url('cloudsales'); ?>">Sales</a></li>
            <li class="active">Edit</li>
         </ol>
      </section>

      <section class="content">
         <div class="box box-primary">
            <div class="box-header with-border">
               <h3 class="box-title">Edit Sale</h3>
            </div>
            <form method="POST" action="<?= base_url('cloudsales/update/'.$sale->id) ?>">
            <?php
            if ($this->security->get_csrf_token_name()) {
                echo '<input type="hidden" name="'.$this->security->get_csrf_token_name().'" value="'.$this->security->get_csrf_hash().'" />';
            }
            ?>
               <div class="box-body">
                  <div class="form-group">
                     <label>Customer</label>
                     <input type="text" class="form-control" value="<?= $sale->customer_name ?>" readonly>
                  </div>
                  <div class="form-group">
                     <label>Product</label>
                     <input type="text" class="form-control" value="<?= $sale->product_name ?>" readonly>
                  </div>
                  <div class="form-group">
                     <label>Quantity</label>
                     <input type="number" name="quantity" class="form-control" value="<?= $sale->quantity ?>" required>
                  </div>
                  <div class="form-group">
                     <label>Total Price</label>
                     <input type="text" name="total_price" class="form-control" value="<?= $sale->total_price ?>" required>
                  </div>
                  <div class="form-group">
                     <label>Status</label>
                     <select name="status" class="form-control">
                        <option value="1" <?= ($sale->payment_id!="") ? 'selected' : '' ?>>Paid</option>
                        <option value="0" <?= ($sale->payment_id =="") ? 'selected' : '' ?>>Pending</option>
                     </select>
                  </div>
               </div>
               <div class="box-footer">
                  <button type="submit" class="btn btn-primary">Update</button>
                  <a href="<?= base_url('cloudsales') ?>" class="btn btn-default">Cancel</a>
               </div>
            </form>
         </div>
      </section>
   </div>
   <?php $this->load->view('footer'); ?>
</div>
<?php $this->load->view('comman/code_js'); ?>
</body>
</html>
