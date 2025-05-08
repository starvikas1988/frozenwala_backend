<!DOCTYPE html>
<html>
<head>
   <?php $this->load->view('comman/code_css.php'); ?>
   <link rel="stylesheet" href="<?php echo $theme_link; ?>plugins/datepicker/datepicker3.css">
   <script>$(".cloudsales-active-li").addClass("active");</script>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<style>
@media print {
    .no-print {
        display: none !important;
    }
}
</style>

<div class="wrapper">
   <?php $this->load->view('sidebar'); ?>
   <?php $CI =& get_instance(); ?>

   <div class="content-wrapper">
      <section class="content-header">
         <h1><?= $page_title; ?></h1>
         <ol class="breadcrumb">
            <li><a href="<?= base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active"><?= $page_title; ?></li>
         </ol>
      </section>

      <div class="box box-primary">
         <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-list"></i> Sales List</h3>
            <div class="pull-right">
               <a href="<?= base_url('cloudsales/download?format=csv') ?>" class="btn btn-sm btn-info"><i class="fa fa-download"></i> Download CSV</a>
               <a href="<?= base_url('cloudsales/download?format=excel') ?>" class="btn btn-sm btn-success"><i class="fa fa-file-excel-o"></i> Download Excel</a>
               <a href="#" class="btn btn-sm btn-default" onclick="printSalesTable();"><i class="fa fa-print"></i> Print</a>
            </div>

         </div>

         <div class="box-body">
            <form method="GET" class="form-inline mb-3">
               <div class="form-group">
                  <label for="customer_id">Customer:</label>
                  <select name="customer_id" class="form-control">
                     <option value="">All</option>
                     <?php foreach ($customers as $c): ?>
                        <option value="<?= $c->id ?>" <?= ($filter_customer == $c->id) ? 'selected' : '' ?>>
                           <?= $c->name ?>
                        </option>
                     <?php endforeach; ?>
                  </select>
               </div>
               <div class="form-group">
                  <label for="product_id">Product:</label>
                  <select name="product_id" class="form-control">
                     <option value="">All</option>
                     <?php foreach ($products as $p): ?>
                        <option value="<?= $p->id ?>" <?= ($filter_product == $p->id) ? 'selected' : '' ?>>
                           <?= $p->title ?>
                        </option>
                     <?php endforeach; ?>
                  </select>
               </div>
               <div class="form-group">
                  <label>Date:</label>
                  <input type="text" name="date" class="form-control datepicker" value="<?= $filter_date ?>" placeholder="Select Date">
               </div>
               <button type="submit" class="btn btn-primary">Filter</button>
               <a href="<?= base_url('cloudsales') ?>" class="btn btn-default">Reset</a>
            </form>

            <div class="table-responsive" id="print-section">
               <table class="table table-bordered table-striped table-hover">
                  <thead class="bg-primary">
                     <tr>
                        <th>ID</th>
                        <th>Customer</th>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th>Total Price</th>
                        <th>Status</th>
                        <th>Date</th>
                        <th>Actions</th>
                     </tr>
                  </thead>
                  <tbody>
                  <?php
                    $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
                   

                     $serial = $page ? $page + 1 : 1;
                     ?>
                     <?php if (!empty($sales)): ?>
                        <?php  foreach ($sales as $sale): ?>
                           <tr>
                              <td><?= $serial++ ?></td>
                              <!-- <td><?= $sale->product_id ?></td> -->
                              <td><?= $sale->customer_name ?></td>
                              <td><?= $sale->product_name ?></td>
                              <td><?= $sale->quantity ?></td>
                              <td><?= number_format($sale->total_price, 2) ?></td>
                              <td>
                                 <?php if ($sale->payment_id!=""): ?>
                                    <span class="label label-success">Paid</span>
                                 <?php else: ?>
                                    <span class="label label-warning">Pending</span>
                                 <?php endif; ?>
                              </td>
                              <td><?= date('d-m-Y', strtotime($sale->created_at)) ?></td>
                              <td>
                                 <a href="<?= base_url('cloudsales/edit/'.$sale->id) ?>" class="btn btn-sm btn-primary">
                                    <i class="fa fa-edit"></i> Edit
                                 </a>
                                 <a href="<?= base_url('cloudsales/delete/'.$sale->id) ?>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure?')">
                                    <i class="fa fa-trash"></i> Delete
                                 </a>
                              </td>
                           </tr>
                        <?php endforeach; ?>
                     <?php else: ?>
                        <tr>
                           <td colspan="8" class="text-center text-muted">No sales records found.</td>
                        </tr>
                     <?php endif; ?>
                  </tbody>
               </table>
            </div>

            <!-- Pagination -->
            <div class="text-center mt-3">
            <?php if (!empty($pagination_links)): ?>
               <nav>
                     <?= $pagination_links; ?>
               </nav>
            <?php endif; ?>
         </div>



         </div>
      </div>
   </div>

   <?php $this->load->view('footer'); ?>
   <div class="control-sidebar-bg"></div>
</div>

<?php $this->load->view('comman/code_js_sound'); ?>
<?php $this->load->view('comman/code_js'); ?>
<script src="<?php echo $theme_link; ?>plugins/datepicker/bootstrap-datepicker.js"></script>
<script type="text/javascript">
   $('.datepicker').datepicker({
      autoclose: true,
      format: 'dd-mm-yyyy',
      todayHighlight: true
   });
</script>
<script>$(".sales-active-li").addClass("active");</script>
<script>
function printSalesTable() {
    var content = document.getElementById("print-section").innerHTML;
    var printWindow = window.open('', '', 'height=600,width=900');
    printWindow.document.write('<html><head><title>Sales List</title>');
    printWindow.document.write('<style>');
    printWindow.document.write('table { width: 100%; border-collapse: collapse; }');
    printWindow.document.write('table, th, td { border: 1px solid #000; padding: 8px; text-align: left; }');
    printWindow.document.write('</style>');
    printWindow.document.write('</head><body>');
    printWindow.document.write(content);
    printWindow.document.write('</body></html>');
    printWindow.document.close();
    printWindow.print();
}
</script>

</body>
</html>
