<!DOCTYPE html>
<html>
   <head>
      <!-- TABLES CSS CODE -->
      <?php include"comman/code_css.php"; ?>
      <!-- </copy> -->  
   </head>
   <body class="hold-transition skin-blue sidebar-mini">
      <div class="wrapper">
         <?php include"sidebar.php"; ?>
         <!-- Content Wrapper. Contains page content -->
         <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
               <h1>
                  <?=$page_title;?>
                  <small></small>
               </h1>
               <ol class="breadcrumb">
                  <li><a href="<?php echo $base_url; ?>dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
                  <li><a href="<?php echo $base_url; ?>purchase"><?= $this->lang->line('purchase_list'); ?></a></li>
                  <li class="active"><?=$page_title;?></li>
               </ol>
            </section>
            <!-- Main content -->
            <section class="content">
               <div class="row">
                  <!-- right column -->
                  <div class="col-md-12">
                     <!-- Horizontal Form -->
                     <div class="box box-primary ">
                        <div class="box-header with-border">
                           <h3 class="box-title">Please Enter Valid Information</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <form class="form-horizontal" id="report-form" onkeypress="return event.keyCode != 13;">
                           <input type="hidden" name="<?php echo $this->security->get_csrf_token_name();?>" value="<?php echo $this->security->get_csrf_hash();?>">
                           <input type="hidden" id="base_url" value="<?php echo $base_url;; ?>">
                           <div class="box-body">
                              <div class="form-group">
                                 <!-- Store Code --> 
                                 <?php if(store_module() && is_admin()) {$this->load->view('store/store_code',array('show_store_select_box'=>true,'store_id'=>get_current_store_id(),'div_length'=>'col-sm-3','show_all'=>'true','form_group_remove' => 'true')); }else{
                                    echo "<input type='hidden' name='store_id' id='store_id' value='".get_current_store_id()."'>";
                                    }?>
                                 <!-- Store Code end -->
                              </div>
                              <div class="form-group">
                                 <!-- Warehouse Code -->
                                  <?php /*if(warehouse_module() && warehouse_count()>1) {$this->load->view('warehouse/warehouse_code',array('show_warehouse_select_box'=>true,'div_length'=>'col-sm-3','show_all'=>'true','form_group_remove' => 'true','show_all_option'=>true)); }else{
                                     echo "<input type='hidden' name='warehouse_id' id='warehouse_id' value='".get_store_warehouse_id()."'>";
                                     }
                                     */
                                     ?>

                                 <label for="item_id" class="col-sm-2 control-label"><?= $this->lang->line('item_name'); ?></label>
                                 <div class="col-sm-3">
                                    <select class="form-control select2 " id="item_id" name="item_id" ">
                                       <option value="">-All-</option>
                                       <?= get_items_select_list(null,get_current_store_id());?>
                                    </select>
                                    <span id="item_id_msg" style="display:none" class="text-danger"></span>
                                 </div>

                                  <!-- Warehouse Code end -->
                                 <label for="supplier_id" class="col-sm-2 control-label"><?= $this->lang->line('supplier_name'); ?></label>
                                 <div class="col-sm-3">
                                    <select class="form-control select2 " id="supplier_id" name="supplier_id" ">
                                       <option value="">-All-</option>
                                       <?= get_suppliers_select_list(null,get_current_store_id());?>
                                    </select>
                                    <span id="supplier_id_msg" style="display:none" class="text-danger"></span>
                                 </div>
                              </div>
                              
                              <div class="form-group">
                                 <label for="brand_id" class="col-sm-2 control-label"><?= $this->lang->line('brand'); ?></label>
                                 <div class="col-sm-3">
                                    <select class="form-control select2 " id="brand_id" name="brand_id"  style="width: 100%;">
                                       <option value="">-Select-</option>
                                       <?= get_brands_select_list();  ?>
                                    </select>
                                    <span id="brand_id_msg" style="display:none" class="text-danger"></span>
                                 </div>
                              </div>
                             
                           </div>
                          
                           <!-- /.box-body -->
                           <div class="box-footer">
                              <div class="col-sm-8 col-sm-offset-2 text-center">
                                 <div class="col-md-3 col-md-offset-3">
                                    <button type="button" id="view" class=" btn btn-block btn-success" title="Save Data">Show</button>
                                 </div>
                                 <div class="col-sm-3">
                                    <a href="<?=base_url('dashboard');?>">
                                    <button type="button" class="col-sm-3 btn btn-block btn-warning close_btn" title="Go Dashboard">Close</button>
                                    </a>
                                 </div>
                              </div>
                           </div>
                           <!-- /.box-footer -->
                        </form>
                     </div>
                     <!-- /.box -->
                  </div>
                  <!--/.col (right) -->
               </div>
               <!-- /.row -->
            </section>
            <!-- /.content -->
            <section class="content">
               <div class="row">
                  <!-- right column -->
                  <div class="col-md-12">
                     <div class="box">
                        <div class="box-header">
                           <h3 class="box-title">Records Table</h3>
                           <?php $this->load->view('components/export_btn',array('tableId' => 'report-data'));?>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body table-responsive no-padding">
                           <table class="table table-bordered table-hover " id="report-data" >
                              <thead>
                                 <tr class="bg-blue">
                                    <th style="">#</th>
                                    <?php if(store_module() && is_admin()){ ?>
                                    <th style=""><?= $this->lang->line('store_name'); ?></th>
                                    <?php } ?>
                                    <?php if(warehouse_module() && warehouse_count()>0){ ?>
                                      <th style=""><?= $this->lang->line('warehouse_name'); ?></th>
                                    <?php } ?>
                                    <th style=""><?= $this->lang->line('invoice_no'); ?></th>
                                    <th style=""><?= $this->lang->line('purchase_date'); ?></th>
                                    <th style=""><?= $this->lang->line('supplier_name'); ?></th>
                                    <th style=""><?= $this->lang->line('item_code'); ?></th>
                                    <th style=""><?= $this->lang->line('item_name'); ?></th>
                                    <th style=""><?= $this->lang->line('item_qty'); ?></th>
                                    <th style=""><?= $this->lang->line('purchase_price'); ?></th>
                                 </tr>


                              </thead>
                              <tbody id="tbodyid">
                              </tbody>
                           </table>
                        </div>
                        <!-- /.box-body -->
                     </div>
                     <!-- /.box -->
                  </div>
               </div>
            </section>
         </div>
         <!-- /.content-wrapper -->
         <?php include"footer.php"; ?>
         <!-- Add the sidebar's background. This div must be placed
            immediately after the control sidebar -->
         <div class="control-sidebar-bg"></div>
      </div>
      <!-- ./wrapper -->
      <!-- SOUND CODE -->
      <?php include"comman/code_js_sound.php"; ?>
      <!-- TABLES CODE -->
      <?php include"comman/code_js.php"; ?>
      <!-- TABLE EXPORT CODE -->
      <?php include"comman/code_js_export.php"; ?>
      <script src="<?php echo $theme_link; ?>js/sheetjs.js" type="text/javascript"></script>
      
      <script src="<?php echo $theme_link; ?>js/report-supplier_items.js"></script>
      <script type="text/javascript">
         var base_url=$("#base_url").val();
         $("#store_id").on("change",function(){
           var store_id=$(this).val();
           $.post(base_url+"sales/get_items_select_list",{store_id:store_id},function(result){
            console.log(result);
               result='<option value="">All</option>'+result;
               $("#item_id").html('').append(result).select2();
           });
           $.post(base_url+"purchase/get_suppliers_select_list",{store_id:store_id},function(result){
               result='<option value="">All</option>'+result;
               $("#supplier_id").html('').append(result).select2();
           });
           /*$.post(base_url+"sales/get_warehouse_select_list",{store_id:store_id},function(result){
              result='<option value="">All</option>'+result;
              $("#warehouse_id").html('').append(result).select2();
          });*/
         });
      </script>
      <!-- Make sidebar menu hughlighter/selector -->
      <script>$(".<?php echo basename(__FILE__,'.php');?>-active-li").addClass("active");</script>
   </body>
</html>
