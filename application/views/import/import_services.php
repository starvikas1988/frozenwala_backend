<!DOCTYPE html>
<html>
   <head>
      <!-- TABLES CSS CODE -->
      <?php $this->load->view('comman/code_css');?>
      <!-- </copy> -->  
   </head>
   <body class="hold-transition skin-blue sidebar-mini">
      <div class="wrapper">
         <?php $this->load->view('sidebar');?>
         <?php
            if(!isset($brand_name)){
                 $brand_code=$brand_name=$description="";
            }
            ?>
         <!-- Content Wrapper. Contains page content -->
         <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
               <h1>
                  <?=$page_title;?>
                  <small>Add/Update Brand</small>
               </h1>
               <ol class="breadcrumb">
                  <li><a href="<?php echo $base_url; ?>dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
                  <li><a href="<?php echo $base_url; ?>items"><?= $this->lang->line('items_list'); ?></a></li>
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
                           <h3 class="box-title">Please Enter Valid Data</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <form class="form-horizontal" id="import-form" enctype="multipart/form-data" method="POST">
                           <input type="hidden" name="<?php echo $this->security->get_csrf_token_name();?>" value="<?php echo $this->security->get_csrf_hash();?>">
                           <input type="hidden" id="base_url" value="<?php echo $base_url;; ?>">
                           <div class="box-body">
                               <!-- Store Code -->
                                    <?php 
                                       echo "<input type='hidden' name='store_id' id='store_id' value='".get_current_store_id()."'>";
                                     ?>
                                <!-- Store Code end -->

                              
                              <!-- Warehouse Code end -->
                              <div class="form-group">
                                 <label for="brand" class="col-sm-2 control-label"><?= $this->lang->line('import_services'); ?><label class="text-danger">*</label></label>
                                 <div class="col-sm-4">
                                    <input type="file" id="import_file" name="import_file">
                                    <span id="import_file_msg" style="display:block;" class="text-danger">
                                      Note: File must be in CSV format.
                                    </span>
                                 </div>
                              </div>
                           </div>
                           <!-- /.box-footer -->
                           <div class="box-footer">
                              <div class="col-sm-8 text-center">
                                 <div class="col-md-3 ">
                                    <button type="button" id="import" class=" btn btn-block btn-success" title="Save Data"><i class="fa fa-arrow-circle-o-left "></i> Import</button>
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
              <h3 class="box-title"><?= $this->lang->line('import_instructions'); ?></h3>
              <a href="<?= base_url('import/download/services');?>"><button type="button" class="btn btn-info pull-right btnExport" title="Download Data in Excel Format"><?= $this->lang->line('download_example_format'); ?></button>
              </a>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">

              <table class="table table-bordered table-hover " id="report-data" >
                <thead>
                <tr>
                  <th style="">#</th>
                  <th style=""><?= $this->lang->line('column_name'); ?></th>
                  <th style=""><?= $this->lang->line('value'); ?></th>
                  <th style=""><?= $this->lang->line('description'); ?></th>
                </tr>
                </thead>
                <tbody id="tbodyid">
                  <?php $i=1; ?>
                  <tr>
                    <td><?=$i++;?></td>
                    <td><?= $this->lang->line('service_name'); ?></td>
                    <td style="color:green;"><span class="label label-success"><?= $this->lang->line('required'); ?></span></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td><?=$i++;?></td>
                    <td><?= $this->lang->line('category_name'); ?></td>
                    <td style="color:green;"><span class="label label-success"><?= $this->lang->line('required'); ?></span></td>
                    <td></td>
                  </tr>
                 
                  <tr>
                    <td><?=$i++;?></td>
                    <td><?= $this->lang->line('price_before_tax'); ?></td>
                    <td style="color:green;"><span class="label label-success"><?= $this->lang->line('required'); ?></span></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td><?=$i++;?></td>
                    <td><?= $this->lang->line('price_after_tax'); ?></td>
                    <td style="color:green;"><span class="label label-success"><?= $this->lang->line('required'); ?></span></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td><?=$i++;?></td>
                    <td><?= $this->lang->line('tax_name'); ?></td>
                    <td style="color:green;"><span class="label label-success"><?= $this->lang->line('required'); ?></span></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td><?=$i++;?></td>
                    <td><?= $this->lang->line('tax_value'); ?></td>
                    <td style="color:green;"><span class="label label-success"><?= $this->lang->line('required'); ?></span></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td><?=$i++;?></td>
                    <td><?= $this->lang->line('tax_type'); ?></td>
                    <td style="color:green;"><span class="label label-success"><?= $this->lang->line('required'); ?></span></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td><?=$i++;?></td>
                    <td><?= $this->lang->line('sales_price'); ?></td>
                    <td style="color:green;"><span class="label label-success"><?= $this->lang->line('required'); ?></span></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td><?=$i++;?></td>
                    <td><?= $this->lang->line('hsn'); ?></td>
                    <td style="font-style: italic;"><span class="label label-default"><?= $this->lang->line('optional'); ?></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td><?=$i++;?></td>
                    <td><?= $this->lang->line('barcode'); ?></td>
                    <td style="font-style: italic;"><span class="label label-default"><?= $this->lang->line('optional'); ?></td>
                      <td></td>
                  </tr>
                  <tr>
                    <td><?=$i++;?></td>
                    <td><?= $this->lang->line('seller_points'); ?></td>
                    <td style="font-style: italic;"><span class="label label-default"><?= $this->lang->line('optional'); ?></td>
                      <td></td>
                  </tr>
                  <tr>
                    <td><?=$i++;?></td>
                    <td><?= $this->lang->line('description'); ?></td>
                    <td style="font-style: italic;"><span class="label label-default"><?= $this->lang->line('optional'); ?></td>
                      <td></td>
                  </tr>
                  <tr>
                    <td><?=$i++;?></td>
                    <td><?= $this->lang->line('discount_type'); ?></td>
                    <td style="font-style: italic;"><span class="label label-default"><?= $this->lang->line('optional'); ?></td>
                      <td>"Percentage" or "Fixed"</td>
                  </tr>
                  <tr>
                    <td><?=$i++;?></td>
                    <td><?= $this->lang->line('discount'); ?></td>
                    <td style="font-style: italic;"><span class="label label-default"><?= $this->lang->line('optional'); ?></td>
                      <td></td>
                  </tr>
                  
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
      <script type="text/javascript">
        //Post the file
        $("#import").on("click",function(e) {
          var base_url = $("#base_url").val();
          if($("#import_file").val()==''){
            toastr["warning"]("Please select file to Import!");
            failed.currentTime = 0; 
            failed.play();
            return;
          }

          if(confirm("Are you sure ?")){
            e.preventDefault();
            data = new FormData($('#import-form')[0]);//form name
            /*Check XSS Code*/
            if(!xss_validation(data)){ return false; }
            
            $(".box").append('<div class="overlay"><i class="fa fa-refresh fa-spin"></i></div>');
            $("#import").attr('disabled',true);  //Enable Save or Update button
            $.ajax({
            type: 'POST',
            url: base_url+'import/import_services_csv',
            data: data,
            cache: false,
            contentType: false,
            processData: false,
            success: function(result){
              if(result=="success")
              {
                window.location=base_url+"items";
              }
              else if(result=="failed")
              {
                toastr["error"]("Sorry! Failed to save Record.Try again!");
              }
              else
              {
                toastr["error"](result);
              }
              $("#import").attr('disabled',false);  //Enable Save or Update button
              $(".overlay").remove();
             }
             });
        }
        });
        
        
      </script>
      <!-- Make sidebar menu hughlighter/selector -->
      <script>$(".<?php echo basename(__FILE__,'.php');?>-active-li").addClass("active");</script>
   </body>
</html>

