<!DOCTYPE html>
<html>

<head>
<!-- FORM CSS CODE -->
<?php include"comman/code_css.php"; ?>
<!-- </copy> -->
<!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="<?php echo $theme_link; ?>plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<style type="text/css">
table.table-bordered > thead > tr > th {
/* border:1px solid black;*/
text-align: center;
}
.table > tbody > tr > td, 
.table > tbody > tr > th, 
.table > tfoot > tr > td, 
.table > tfoot > tr > th, 
.table > thead > tr > td, 
.table > thead > tr > th 
{
padding-left: 2px;
padding-right: 2px;  

}

</style>
</head>


<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
 
 
 <?php include"sidebar.php"; ?>
 
 <?php
    if(isset($sales_id)){
      $q2 = $this->db->query("select * from db_sales where id=$sales_id");
      $customer_id=$q2->row()->customer_id;
      $sales_date=show_date($q2->row()->sales_date);
      $due_date=(!empty($q2->row()->due_date)) ? show_date($q2->row()->due_date) : '';
      $sales_status=$q2->row()->sales_status;
      $warehouse_id=$q2->row()->warehouse_id;
      $reference_no=$q2->row()->reference_no;
      $discount_input=store_number_format($q2->row()->discount_to_all_input,0);
      $discount_type=$q2->row()->discount_to_all_type;
      $other_charges_input=store_number_format($q2->row()->other_charges_input,0);
      $other_charges_tax_id=$q2->row()->other_charges_tax_id;
      $sales_note=$q2->row()->sales_note;
      $add_interest = $q2->row()->add_interest;
      $store_id=$q2->row()->store_id;
      
      $init_code=$q2->row()->init_code;
      $count_id=$q2->row()->count_id;

      $coupon_id=$q2->row()->coupon_id;
      $coupon_code = (!empty($coupon_id)) ? get_customer_coupon_details($coupon_id)->code : '';
      $invoice_terms=$q2->row()->invoice_terms;
      
      $finance_id=$q2->row()->finance_id;
      $finance_amount=$q2->row()->finance_amount;
      $total_emi_month=$q2->row()->total_emi_month;
      $emi_per_month=$q2->row()->emi_per_month;


      $items_count = $this->db->query("select count(*) as items_count from db_salesitems where sales_id=$sales_id")->row()->items_count;
    }
    else if(isset($quotation_id) && !empty($quotation_id)){
      $q2 = $this->db->query("select * from db_quotation where id=$quotation_id");
      $customer_id=$q2->row()->customer_id;
      $sales_date=show_date($q2->row()->quotation_date);
      $due_date='';
      $sales_status='';
      $warehouse_id=$q2->row()->warehouse_id;
      $reference_no=$q2->row()->reference_no;
      $discount_input=store_number_format($q2->row()->discount_to_all_input,0);
      $discount_type=$q2->row()->discount_to_all_type;
      $other_charges_input=store_number_format($q2->row()->other_charges_input,0);
      $other_charges_tax_id=$q2->row()->other_charges_tax_id;
      $sales_note=$q2->row()->quotation_note;
      $store_id=$q2->row()->store_id;

      //$sales_code = get_init_code('sales');
      $init_code=get_only_init_code('sales');
      $count_id=get_last_count_id('db_sales');

      $items_count = $this->db->query("select count(*) as items_count from db_quotationitems where quotation_id=$quotation_id")->row()->items_count;
      $coupon_code='';

      $store_details = get_store_details($store_id);
      $invoice_terms =$store_details->invoice_terms;
    }
    else{
      $customer_id  = $sales_date = $sales_status = $warehouse_id =$due_date=
      $reference_no  =$coupon_code=
      $other_charges_input          = $other_charges_tax_id = $store_id =
      $discount_type  = $sales_note = '';
      $sales_date=show_date(date("d-m-Y"));
      $discount_input = $this->db->select("sales_discount")->get('db_store')->row()->sales_discount;
      $discount_input = ($discount_input==0) ? 0 : $discount_input;
      
      $init_code=get_only_init_code('sales');
      $count_id=get_last_count_id('db_sales');

      $store_details = get_store_details();
      $invoice_terms =$store_details->invoice_terms;

    }
   
    ?>

 

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- **********************MODALS***************** -->
    <?php include"modals/modal_customer.php"; ?>
    <?php include"modals/modal_item.php"; ?>
    <?php include"modals/modal_item_or_service.php"; ?>
   <?php /*include"modals/modal_service.php";*/ ?>
    <!-- **********************MODALS END***************** -->
    <!-- Content Header (Page header) -->
    <section class="content-header">
         <h1>
            <?=$page_title;?>
            <small>Add/Update Sales</small>
         </h1>
         <ol class="breadcrumb">
            <li><a href="<?php echo $base_url; ?>dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?php echo $base_url; ?>sales"><?= $this->lang->line('sales_list'); ?></a></li>
            <li><a href="<?php echo $base_url; ?>sales/add"><?= $this->lang->line('new_sales'); ?></a></li>
            <li class="active"><?=$page_title;?></li>
         </ol>
      </section>

    <!-- Main content -->
     <section class="content">
               <div class="row">
                <!-- ********** ALERT MESSAGE START******* -->
               <?php include"comman/code_flashdata.php"; ?>
               <?php include"modals/modal_sales_item.php"; ?>
               
               <!-- ********** ALERT MESSAGE END******* -->
                  <!-- right column -->
                  <div class="col-md-12">
                     <!-- Horizontal Form -->
                     <div class="box box-primary " >
                        <!-- style="background: #68deac;" -->
                        
                        <!-- form start -->
                         <!-- OK START -->
                        <?= form_open('#', array('class' => 'form-horizontal', 'id' => 'sales-form', 'enctype'=>'multipart/form-data', 'method'=>'POST'));?>
                           <input type="hidden" id="base_url" value="<?php echo $base_url;; ?>">
                           <input type="hidden" value='1' id="hidden_rowcount" name="hidden_rowcount">
                           <input type="hidden" value='0' id="hidden_update_rowid" name="hidden_update_rowid">
                           <input type="hidden" value='Final' id="sales_status" name="sales_status">

                          <?php if(isset($quotation_id)) {?>
                           <input type="hidden" id="quotation_id" name="quotation_id" value="<?php echo $quotation_id;; ?>">
                           <?php } ?>

                           <div class="box-body">
                              <!-- Store Code -->
                              <?php 
                              /*if(store_module() && is_admin()) {$this->load->view('store/store_code',array('show_store_select_box'=>true,'store_id'=>$store_id,'div_length'=>'col-sm-3')); }else{*/
                                echo "<input type='hidden' name='store_id' id='store_id' value='".get_current_store_id()."'>";
                              /*}*/
                              ?>
                              <!-- Store Code end -->
                              <!-- Warehouse Code -->
                              
                              <!-- Warehouse Code end -->
                              <div class="form-group">
                                 <label for="warehouse_id" class="col-sm-2 control-label"><?= $this->lang->line('warehouse'); ?><label class="text-danger">*</label></label>
                                 <div class="col-sm-3">
                                    <select class="form-control select2 " id="warehouse_id" name="warehouse_id" >
                                       <?= get_warehouse_select_list($warehouse_id,get_current_store_id());?>
                                    </select>
                                    <span id="warehouse_id_msg" style="display:none" class="text-danger"></span>
                                 </div>
                                 <label for="init_code" class="col-sm-2 control-label"><?= $this->lang->line('sales_code'); ?><label class="text-danger">*</label></label>
                                 <div class="col-sm-2" style="padding-right:0;">
                                    <input type="text" value="<?= $init_code; ?>" class="form-control  no-padding" style='font-size:20px;'  id="init_code" name="init_code" placeholder="" >
                                       <span id="init_code_msg" style="display:none" class="text-danger"></span>
                                 </div>
                                 <div class="col-sm-1" style="padding-left:1;">
                                    <input type="text" style='font-size:20px;' value="<?php echo  $count_id; ?>"  class="form-control no_special_char" id="count_id" name="count_id" placeholder="" >
                                       <span id="count_id_msg" style="display:none" class="text-danger"></span>
                                 </div>

                                 
                            <!-- <div class="col-sm-2">
                                <div class="checkbox">
                                    <label toggle='tooltip' title="Check for Non GST Bill Creation">
                                        <input type="checkbox" name="" checked="" />
                                        <span></span>
                                        Non GST
                                    </label>
                                </div>
                            </div> -->


                                 
                              </div>
                              <div class="form-group">
                                 <label for="customer_id" class="col-sm-2 control-label"><?= $this->lang->line('customer_name'); ?><label class="text-danger">*</label></label>
                                 <div class="col-sm-3">
                                    <div class="input-group">
                                       <select class="form-control select2" id="customer_id" name="customer_id">
                                          <?= get_customers_select_list($customer_id,get_current_store_id()); ?>
                                       </select>
                                       <span class="input-group-addon pointer" data-toggle="modal" data-target="#customer-modal" title="New Customer?">
                                           <i class="fa fa-user-plus text-primary fa-lg"></i>
                                         </span>
                                    </div>
                                    <span id="customer_id_msg" style="display:none" class="text-danger"></span>
                                    <lable><?= $this->lang->line('previous_due'); ?> :<label class="customer_previous_due text-red" style="font-size: 18px;">0.00</label></lable>
                                 </div>
                                 <label class="col-sm-2 control-label"><?= $this->lang->line('sales_date'); ?> <label class="text-danger">*</label></label>
                                 <div class="col-sm-3">
                                    <div class="input-group date">
                                       <div class="input-group-addon">
                                          <i class="fa fa-calendar"></i>
                                       </div>
                                       <input type="text" class="form-control pull-right datepicker"  id="sales_date" name="sales_date" readonly onkeyup="shift_cursor(event,'sales_status')" value="<?= $sales_date;?>">
                                    </div>
                                    <span id="sales_date_msg" style="display:none" class="text-danger"></span>
                                 </div>
                              </div>
                              <div class="form-group">
                                 <label for="reference_no" class="col-sm-2 control-label"><?= $this->lang->line('reference_name'); ?> </label>
                                 <div class="col-sm-3">
                                    <input type="text" value="<?php echo  $reference_no; ?>" class="form-control " id="reference_no" name="reference_no" placeholder="" >
                  <span id="reference_no_msg" style="display:none" class="text-danger"></span>
                                 </div>
                                <label  class="col-sm-2 control-label"><?= $this->lang->line('due_date'); ?></label>
                                 <div class="col-sm-3">
                                    <div class="input-group date">
                                       <div class="input-group-addon">
                                          <i class="fa fa-calendar"></i>
                                       </div>
                                       <input type="text" class="form-control pull-right datepicker"  id="due_date" name="due_date"  value="<?= $due_date;?>">
                                    </div>
                                    <span id="due_date_msg" style="display:none" class="text-danger"></span>
                                 </div>
                              </div>
                              
                           </div>
                           <!-- /.box-body -->
                           
                           <div class="row">
                              <div class="col-md-12">
                                <div class="col-md-12">
                                  <div class="box">
                                    <div class="box-info">
                                      <div class="box-header">
                                        <div class="col-md-8 col-md-offset-2 d-flex justify-content" >
                                          <div class="input-group">
                                                <span class="input-group-addon" title="Select Items"><i class="fa fa-barcode"></i></span>
                                                 <input type="text" class="form-control " placeholder="Item name/Barcode/Itemcode" autofocus id="item_search">


                                                 <span class="input-group-addon pointer text-green show_item_service" title="Click to Add New Item or Service"><i class="fa fa-plus"></i></span>

                                                 


                                              </div>
                                        </div>
                                      </div>
                                      <div class="box-body">
                                        <div class="table-responsive" style="width: 100%">
                                        <table class="table table-hover table-bordered" style="width:100%" id="sales_table">
                                             <thead class="custom_thead">
                                                <tr class="bg-primary" >
                                                   <th rowspan='2' style="width:15%"><?= $this->lang->line('item_name'); ?></th>
                                                 <?php /*
                                                 <th rowspan='2' style="width:10%;min-width: 180px;"><?= $this->lang->line('serial_no'); ?></th>
                                                 */ ?>
                                                   <th rowspan='2' style="width:10%;min-width: 180px;"><?= $this->lang->line('quantity'); ?></th>
                                                   
                                                   <th rowspan='2' style="width:10%;min-width: 180px;"><?= $this->lang->line('unit'); ?></th>
                                                   <th rowspan='2' style="width:10%"><?= $this->lang->line('unit_price'); ?></th> 
                                                   
                                                   <th rowspan='2' style="width:10%"><?= $this->lang->line('discount'); ?>(<?= $CI->currency() ?>)</th>
                                                   <th rowspan='2' style="width:10%"><?= $this->lang->line('tax_amount'); ?></th>
                                                   <th rowspan='2' style="width:5%"><?= $this->lang->line('tax'); ?></th>
                                                   <th rowspan='2' style="width:7.5%"><?= $this->lang->line('total_amount'); ?></th>
                                                   <th rowspan='2' style="width:7.5%"><?= $this->lang->line('action'); ?></th>
                                                </tr>
                                             </thead>
                                             <tbody>
                                               
                                             </tbody>
                                          </table>
                                      </div>
                                      </div>
                                    </div>
                                  </div>
                                  

                                </div>
                              </div>
                              
                              <div class="col-md-6">
                                <div class="row">
                                    <div class="col-md-12">
                                       <div class="form-group">
                                          <label for="" class="col-sm-4 control-label"><?= $this->lang->line('quantity'); ?></label>    
                                          <div class="col-sm-4">
                                             <label class="control-label total_quantity text-success" style="font-size: 15pt;">0</label>
                                          </div>
                                       </div>
                                    </div>
                                 </div>

                                 

                                 <div class="row">
                                    <div class="col-md-12">
                                       <div class="form-group">
                                          <label for="other_charges_input" class="col-sm-4 control-label"><?= $this->lang->line('other_charges'); ?></label>    
                                          <div class="col-sm-4">
                                             <input type="text" class="form-control text-right only_currency" id="other_charges_input" name="other_charges_input" onkeyup="final_total();" value="<?php echo  $other_charges_input; ?>">
                                          </div>
                                          <div class="col-sm-4">
                                             <select class="form-control " id="other_charges_tax_id" name="other_charges_tax_id" onchange="final_total();" style="width: 100%;">
                                                <?= get_tax_select_list($other_charges_tax_id,get_current_store_id());?>
                                             </select>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="row">
                                    <div class="col-md-12">
                                       <div class="form-group">
                                          <label for="other_charges_input" class="col-sm-4 control-label"><?= $this->lang->line('discountCouponCode'); ?></label>    
                                          <div class="col-sm-8">
                                             <input type="text" class="form-control" id="coupon_code" name="coupon_code" value="<?=$coupon_code; ?>">

                                             <label class="control-label pull-left"><?= $this->lang->line('couponType'); ?>:<span class="coupon_type">---</span></label>
                                             <label class="control-label pull-right"><?= $this->lang->line('couponValue'); ?>:<span class="coupon_value">0.00</span></label>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="col-md-12 div1 hide">
                                       <div class="form-group">    
                                          <div class="col-sm-8 col-sm-offset-4">
                                             <div class="alert text-left msg_color">
                                              <strong id="coupon_code_msg">
                                              </strong>
                                            </div>
                                          </div>
                                       </div>
                                    </div>

                                 </div>

                                 
                                 <div class="row" style="display:none;">
                                    <div class="col-md-12">
                                       <div class="form-group">
                                          <label for="discount_to_all_input" class="col-sm-4 control-label"><?= $this->lang->line('discount_on_all'); ?></label>    
                                          <div class="col-sm-4">
                                             <input type="text" class="form-control  text-right only_currency" id="discount_to_all_input" name="discount_to_all_input" onkeyup="enable_or_disable_item_discount();" value="<?= store_number_format($discount_input,0); ?>">
                                          </div>
                                          <div class="col-sm-4">
                                             <select class="form-control" onchange="final_total();" id='discount_to_all_type' name="discount_to_all_type">
                                                <option value='in_percentage'>Per%</option>
                                                <option value='in_fixed'>Fixed</option>
                                             </select>
                                          </div>
                                          <!-- Dynamicaly select Supplier name -->
                                          <script type="text/javascript">
                                             <?php if($discount_type!=''){ ?>
                                                 document.getElementById('discount_to_all_type').value='<?php echo  $discount_type; ?>';
                                             <?php }?>
                                          </script>
                                          <!-- Dynamicaly select Supplier name end-->
                                       </div>
                                    </div>
                                 </div>
                                <div class="row">
                                    <div class="col-md-12">
                                       <div class="form-group">
                                          <label for="sales_note" class="col-sm-4 control-label"><?= $this->lang->line('note'); ?></label>    
                                          <div class="col-sm-8">
                                             <textarea class="form-control text-left" id='sales_note' name="sales_note"><?= $sales_note; ?></textarea>
                                            <span id="sales_note_msg" style="display:none" class="text-danger"></span>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 
                                <?php /* 
                                 <div class="row">
                                    <div class="col-md-12">
                                       <div class="form-group">
                                          <label for="add_interest" class="col-sm-4 control-label"><?= $this->lang->line('add_interest'); ?></label>    
                                          <div class="col-sm-8">
                                             <input type="checkbox" name="add_interest" id="add_interest" class="form-control" <?= (($add_interest == 'YES')?'checked':'') ?> />
                                            <span id="add_interest" style="display:none" class="text-danger"></span>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 
                                 */ ?>

                                 
                              </div>
                              

                              <div class="col-md-6">
                                 <div class="row">
                                    <div class="col-md-12">
                                       <div class="form-group">
                                           
                                          <table  class="col-md-9">
                                             <tr>
                                                <th class="text-right" style="font-size: 17px;"><?= $this->lang->line('subtotal'); ?></th>
                                                <th class="text-right" style="padding-left:10%;font-size: 17px;">
                                                   <h4><b id="subtotal_amt" name="subtotal_amt">0.00</b></h4>
                                                </th>
                                             </tr>
                                             <tr>
                                                <th class="text-right" style="font-size: 17px;"><?= $this->lang->line('other_charges'); ?></th>
                                                <th class="text-right" style="padding-left:10%;font-size: 17px;">
                                                   <h4><b id="other_charges_amt" name="other_charges_amt">0.00</b></h4>
                                                </th>
                                             </tr>
                                             <tr>
                                                <th class="text-right" style="font-size: 17px;"><?= $this->lang->line('couponDiscount'); ?></th>
                                                <th class="text-right" style="padding-left:10%;font-size: 17px;">
                                                   <h4><b id="coupon_discount_amt" name="coupon_discount_amt">0.00</b></h4>
                                                </th>
                                             </tr>
                                             <tr>
                                                <th class="text-right" style="font-size: 17px;"><?= $this->lang->line('discount_on_all'); ?></th>
                                                <th class="text-right" style="padding-left:10%;font-size: 17px;">
                                                   <h4><b id="discount_to_all_amt" name="discount_to_all_amt">0.00</b></h4>
                                                </th>
                                             </tr>
                                             
                                             <tr>
                                                <th class="text-right" style="font-size: 17px;"><?= "Total GST"; ?></th>
                                                <th class="text-right" style="padding-left:10%;font-size: 17px;">
                                                   <h4><b id="total_gst" name="discount_to_all_amt">0.00</b></h4>
                                                </th>
                                             </tr>
                                             <tr style="<?= (!is_enabled_round_off()) ? 'display: none;' : '';?>">
                                                <th class="text-right" style="font-size: 17px;"><?= $this->lang->line('round_off'); ?>
                                                <i class="hover-q " data-container="body" data-toggle="popover" data-placement="top" data-content="Go to Site Settings-> Site -> Disable the Round Off(Checkbox)." data-html="true" data-trigger="hover" data-original-title="" title="Do you wants to Disable Round Off ?">
                                                      <i class="fa fa-info-circle text-maroon text-black hover-q"></i>
                                                    </i>
                                                  
                                                </th>
                                                <th class="text-right" style="padding-left:10%;font-size: 17px;">
                                                   <h4><b id="round_off_amt" name="tot_round_off_amt">0.00</b></h4>
                                                </th>
                                             </tr>
                                             <tr>
                                                <th class="text-right" style="font-size: 17px;"><?= $this->lang->line('grand_total'); ?></th>
                                                <th class="text-right" style="padding-left:10%;font-size: 17px;">
                                                   <h4><b id="total_amt" name="total_amt">0.00</b></h4>
                                                </th>
                                             </tr>
                                          </table>
                                       </div>
                                    </div>
                                 </div>
                              </div>

                              <div class="col-xs-12 ">
                                 <div class="col-sm-12">
                                       <div class="box-body ">
                                        <div class="col-md-12">
                                          <table class="table table-hover table-bordered" style="width:100%" id="payments_table"><h4 class="box-title text-info"><?= $this->lang->line('previous_payments_information'); ?> : </h4>
                                             <thead>
                                                <tr class="bg-gray " >
                                                   <th>#</th>
                                                   <th><?= $this->lang->line('date'); ?></th>
                                                   <th><?= $this->lang->line('payment_type'); ?></th>
                                                   <th><?= $this->lang->line('payment_note'); ?></th>
                                                   <th><?= $this->lang->line('payment'); ?></th>
                                                   <th><?= $this->lang->line('action'); ?></th>
                                                </tr>
                                             </thead>
                                             <tbody>
                                                <?php 
                                                  if(isset($sales_id)){
                                                    $q3 = $this->db->query("select * from db_salespayments where sales_id=$sales_id");
                                                    if($q3->num_rows()>0){
                                                      $i=1;
                                                      $total_paid = 0;
                                                      foreach ($q3->result() as $res3) {
                                                        echo "<tr class='text-center text-bold' id='payment_row_".$res3->id."'>";
                                                        echo "<td>".$i."</td>";
                                                        echo "<td>".show_date($res3->payment_date)."</td>";
                                                        echo "<td>".$res3->payment_type."</td>";
                                                        echo "<td>".$res3->payment_note."</td>";
                                                        echo "<td class='text-right' id='paid_amt_$i'>".store_number_format($res3->payment)."</td>";
                                                        echo '<td><i class="fa fa-trash text-red pointer" onclick="delete_payment('.$res3->id.')"> Delete</i></td>';
                                                        echo "</tr>";
                                                        $total_paid +=$res3->payment;
                                                        $i++;
                                                      }
                                                      echo "<tr class='text-right text-bold'><td colspan='4' >Total</td><td data-rowcount='$i' id='paid_amt_tot'>".store_number_format($total_paid)."</td><td></td></tr>";
                                                    }
                                                    else{
                                                      echo "<tr><td colspan='6' class='text-center text-bold'>No Previous Payments Found!!</td></tr>";
                                                    }

                                                  }
                                                  else{
                                                    echo "<tr><td colspan='6' class='text-center text-bold'>Payments Pending!!</td></tr>";
                                                  }
                                                ?>
                                             </tbody>
                                          </table>
                                        </div>
                                       </div>
                                       <!-- /.box-body -->
                                    </div>
                                 <!-- /.box -->
                              </div>
                              
                              
                              


                              <div class="col-xs-12 ">

                                 <div class="col-sm-12">



                                    <div class="col-md-12">
                                       
                                       <!-- /.box-header -->
                                       <div class="box-body">
                                         

                                         <div class="box box-default collapsed-box">
                                       <div class="box-header with-border">
                                         <h3 class="box-title"><?= $this->lang->line('invoiceTermsAndConditions')?></h3>

                                         <div class="box-tools pull-right">
                                           <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus text-danger"></i>
                                           </button>
                                       </div>
                                    </div>
                                       <!-- /.box-header -->
                                       <div class="box-body">
                                        <textarea id="invoice_terms" name="invoice_terms" class="textarea" placeholder="Place some text here" style="width: 100%; height: 100px; font-size: 14px; border: 1px solid #dddddd; padding: 10px;"><?= $invoice_terms;?></textarea>
                                       </div>
                                       <!-- /.box-body -->
                                      
                                     </div>

                                       </div>
                                       <!-- /.box-body -->
                                    
                                     <!-- /.box -->
                                   </div>



                                       <div class="box-body ">

                                          <div class="col-md-12 payments_div payments_div_">
                                            <h4 class="box-title text-info"><?= $this->lang->line('payment'); ?> : </h4>

                                            <div class="row">
                                                 <div class="col-md-4">

                                                  <span for="">
                                                    <label>
                                                    <?= $this->lang->line('advance'); ?> : <label class='customer_tot_advance'></label>
                                                  </label>
                                                  </span>
                                                  
                                                  <div class="checkbox">
                                                    <label>
                                                      <input type="checkbox" id="allow_tot_advance" name="allow_tot_advance"> <?= $this->lang->line('adjust_advance_payment'); ?>
                                                    </label>
                                                  </div>
                                                 </div>
                                                  
                                              <div class="clearfix"></div>
                                          </div>
                                          <br>

                                          <div class="box box-solid bg-gray">
                                            <div class="box-body">
                                               
                                              <div class="row">
                                         
                                                <div class="col-md-4">
                                                  <div class="">
                                                  <label for="amount"><?= $this->lang->line('amount'); ?></label>
                                                    <input type="text" class="form-control text-right paid_amt only_currency" id="amount" name="amount" placeholder="" >
                                                      <span id="amount_msg" style="display:none" class="text-danger"></span>
                                                </div>
                                               </div>
                                                <div class="col-md-4">
                                                  <div class="">
                                                    <label for="payment_type"><?= $this->lang->line('payment_type'); ?></label>
                                                    <select class="form-control select2" id='payment_type' name="payment_type">
                                                      <?php
                                                        $q1=$this->db->query("select * from db_paymenttypes where status=1 and store_id=".get_current_store_id());
                                                         if($q1->num_rows()>0){
                                                            echo "<option value=''>-Select-</option>";
                                                             foreach($q1->result() as $res1){
                                                             echo "<option value='".$res1->payment_type."'>".$res1->payment_type ."</option>";
                                                           }
                                                         }
                                                         else{
                                                            echo "<option value=''>None</option>";
                                                         }
                                                        ?>
                                                    </select>
                                                    <span id="payment_type_msg" style="display:none" class="text-danger"></span>
                                                  </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <label for="account_id"><?= $this->lang->line('account'); ?></label>
                                                    <select class="form-control select2" id='account_id' name="account_id">
                                                      <?php
                                                        echo '<option value="">-None-</option>'; 
                                                        echo get_accounts_select_list();
                                                        ?>
                                                    </select>
                                                    <span id="account_id_msg" style="display:none" class="text-danger"></span>
                                                </div>
                                            <div class="clearfix"></div>
                                        </div> 

                                        <div class="row cheque_div" style="display: none;">
                                         
                                                <div class="col-md-8">
                                                  <div class="">
                                                  <label for="cheque_number"><?= $this->lang->line('cheque_number'); ?></label>
                                                    <input type="text" class="form-control" id="cheque_number" name="cheque_number" placeholder="" >
                                                      <span id="cheque_number_msg" style="display:none" class="text-danger"></span>
                                                </div>
                                               </div>
                                                
                                               <div class="col-md-4">
                                                  <div class="">
                                                  <label for="cheque_period"><?= $this->lang->line('cheque_period_days'); ?></label>
                                                    <input type="text" class="form-control only_currency" id="cheque_period" name="cheque_period" placeholder="" >
                                                      <span id="cheque_period_msg" style="display:none" class="text-danger"></span>
                                                </div>
                                               </div>

                                            <div class="clearfix"></div>
                                        </div> 

                                        <div class="row">
                                               <div class="col-md-12">
                                                  <div class="">
                                                    <label for="payment_note"><?= $this->lang->line('payment_note'); ?></label>
                                                    <textarea type="text" class="form-control" id="payment_note" name="payment_note" placeholder="" ></textarea>
                                                    <span id="payment_note_msg" style="display:none" class="text-danger"></span>
                                                  </div>
                                               </div>
                                                
                                            <div class="clearfix"></div>
                                        </div>   
                                        </div>
                                        </div>
                                        
                                        <?php /*
                                        <h4 class="box-title text-info"><?= $this->lang->line('emi_payment'); ?> : </h4>
                                        <div class="box box-solid bg-gray">
                                            
                                            <div class="box-body">
                                              <div class="row">
                                                  
                                                <div class="col-md-3">
                                                    <label for="finance_name"><?= $this->lang->line('finance_name'); ?></label>
                                                    <select class="form-control select2" id='finance_name' name="finance_name">
                                                      <?php
                                                        echo '<option value="">-Select-</option>';
                                                        if($finance)
                                                            foreach($finance as $fin)
                                                                echo '<option value="'.$fin->id.'" '.(($fin->id == $finance_id)?"selected":"").' >'.$fin->finance_name.'</option>';
                                                        ?>
                                                    </select>
                                                    <span id="account_id_msg" style="display:none" class="text-danger"></span>
                                                </div> 
                                                  
                                                <div class="col-md-3">
                                                  <div class="">
                                                      <label for="amount"><?= $this->lang->line('finance_amount'); ?></label>
                                                        <input type="text" class="form-control text-right paid_amt only_currency" id="finance_amount" name="finance_amount" value="<?=$finance_amount?>" placeholder="" >
                                                        <span id="amount_msg" style="display:none" class="text-danger"></span>
                                                    </div>
                                               </div>
                                               
                                                <div class="col-md-3">
                                                  <div class="">
                                                    <label for="total_emi_month"><?= $this->lang->line('total_emi_month'); ?></label>
                                                        <input type="text" class="form-control text-right paid_amt" id="total_emi_month" name="total_emi_month" value="<?=$total_emi_month?>" placeholder="" >
                                                        <span id="total_emi_month" style="display:none" class="text-danger"></span>
                                                  </div>
                                                </div>
                                                
                                                <div class="col-md-3">
                                                  <div class="">
                                                    <label for="emi_per_month"><?= $this->lang->line('emi_per_month'); ?></label>
                                                        <input type="text" class="form-control text-right paid_amt" id="emi_per_month" name="emi_per_month" value="<?=$emi_per_month?>" placeholder="" >
                                                        <span id="emi_per_month" style="display:none" class="text-danger"></span>
                                                  </div>
                                                </div>
                                                
                                                <div class="clearfix"></div>
                                            </div> 
                                        </div>
                                        </div>
                                        
                                        */ ?>
                                        
                                        </div><!-- col-md-12 -->
                                       </div>
                                       <!-- /.box-body -->
                                    </div>
                                 <!-- /.box -->
                              </div>

                              <!-- SMS Sender while saving -->
                                <?php 
                                   //Change Return
                                    $send_sms_checkbox='disabled';
                                    if($CI->is_sms_enabled()){
                                      if(!isset($sales_id)){
                                        $send_sms_checkbox='checked';  
                                      }else{
                                        $send_sms_checkbox='';
                                      }
                                    }

                              ?>
                             
                              <div class="col-xs-12 ">
                                 <div class="col-sm-12">
                                       <div class="box-body ">
                                          <div class="col-md-12">
                                            <div class="checkbox icheck">
                                      <label>
                                        <input type="checkbox" <?=$send_sms_checkbox;?> class="form-control" id="send_sms" name="send_sms" > <label for="sales_discount" class=" control-label"><?= $this->lang->line('send_sms_to_customer'); ?>
                                          <i class="hover-q " data-container="body" data-toggle="popover" data-placement="top" data-content="If checkbox is Disabled! You need to enable it from SMS -> SMS API <br><b>Note:<i>Walk-in Customer will not receive SMS!</i></b>" data-html="true" data-trigger="hover" data-original-title="" title="Do you wants to send SMS ?">
                                  <i class="fa fa-info-circle text-maroon text-black hover-q"></i>
                                </i>
                                        </label>
                                      </label>
                                    </div>
                                        </div><!-- col-md-12 -->
                                       </div>
                                       <!-- /.box-body -->
                                    </div>
                                 <!-- /.box -->
                              </div> 
                           </div>
                           
                           <!-- /.box-body -->
                           <div class="box-footer col-sm-12">
                              <center>
                                <?php
                                if(isset($sales_id)){
                                  $btn_id='update';
                                  $btn_name="Update";
                                  echo '<input type="hidden" name="sales_id" id="sales_id" value="'.$sales_id.'"/>';
                                }
                                else{
                                  $btn_id='save';
                                  $btn_name="Save";
                                }

                                ?>
                                 <div class="col-md-3 col-md-offset-3">
                                    <button type="button" id="<?php echo $btn_id;?>" class="btn btn-block btn-success payments_modal" title="Save Data"><?php echo $btn_name;?></button>
                                 </div>
                                 <div class="col-sm-3"><a href="<?= base_url()?>dashboard">
                                    <button type="button" class="btn btn-block btn-warning" title="Go Dashboard">Close</button>
                                  </a>
                                </div>
                              </center>
                           </div>
                           

                           <?= form_close(); ?>
                           <!-- OK END -->
                     </div>
                  </div>
                  <!-- /.box-footer -->
                 
               </div>
               <!-- /.box -->
             </section>
            <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
 <?php include"footer.php"; ?>
<!-- SOUND CODE -->
<?php include"comman/code_js_sound.php"; ?>
<!-- GENERAL CODE -->
<?php include"comman/code_js.php"; ?>

<script src="<?php echo $theme_link; ?>js/modals.js"></script>
<script src="<?php echo $theme_link; ?>js/modals/modal_item.js"></script>
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
<script type="text/javascript">
  var walk_in_customer_name ='<?= get_walk_in_customer_name();?>'
</script>
<!-- Bootstrap WYSIHTML5 -->
<script src="<?php echo $theme_link; ?>plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>

<script src="<?php echo $theme_link; ?>js/sales.js"></script>  
      <script>

         $("#payment_type").on("change",function(){
          show_cheque_details();
        });
        function show_cheque_details(){
            var payment_type = $("#payment_type").val();
            if(payment_type.toUpperCase()=='<?=strtoupper(cheque_name())?>'){
               $(".cheque_div").show();
            }
            else{
               $(".cheque_div").hide();
               $("#cheque_period,#cheque_number").val('');
            }
        }
        

        $("#customer_id").on("change",function(){
          set_previous_due();
        });
        function set_previous_due(){
          $(".customer_previous_due").html($('option:selected', "#customer_id").attr('data-previous_due'));
          $(".customer_tot_advance").html($('option:selected', "#customer_id").attr('data-tot_advance'));
        }

        var base_url=$("#base_url").val();
        $("#store_id").on("change",function(){
          var store_id=$("#store_id").val();
          $.post(base_url+"sales/get_customers_select_list",{store_id:store_id},function(result){
              $("#customer_id").html('').append(result).select2();
              $("#sales_table > tbody").empty();
              calculate_tax();
          });
          $.post(base_url+"sales/get_tax_select_list",{store_id:store_id},function(result){
              $("#other_charges_tax_id").html('').append(result).select2();
              calculate_tax();
          });
        });

        /*Warehouse*/
        $("#warehouse_id").on("change",function(){
          var warehouse_id=$(this).val();
          $("#sales_table > tbody").empty();
          final_total();
        });
        /*Warehouse end*/

         $(".close_btn").on("click",function(){
           if(confirm('Are you sure you want to navigate away from this page?')){
               window.location='<?php echo $base_url; ?>dashboard';
             }
         });
         //Initialize Select2 Elements
             $(".select2").select2();
         //Date picker
             $('.datepicker').datepicker({
               autoclose: true,
            format: 'dd-mm-yyyy',
              todayHighlight: true
             });
          
        /*if($("#warehouse_id").val()==''){
          $("#item_search").attr({
            disabled: true,
          });
          toastr["warning"]("Please Select Warehouse!!");
          failed.currentTime = 0; 
          failed.play();
         
        }*/
         
         /* ---------- CALCULATE TAX -------------*/
        

         function calculate_tax(i){ //i=Row
            set_tax_value(i);

           //Find the Tax type and Tax amount
           var tax_type = $("#tr_tax_type_"+i).val();
           var tax_amount = $("#td_data_"+i+"_11").val();

           var qty=$("#td_data_"+i+"_3").val();
           var sales_price=parseFloat($("#td_data_"+i+"_10").val());
           $("#td_data_"+i+"_4").val(sales_price);
           /*Discounr*/
           var discount_amt=$("#td_data_"+i+"_8").val();
               discount_amt   =(isNaN(parseFloat(discount_amt)))    ? 0 : parseFloat(discount_amt);

           var amt=parseFloat(qty) * sales_price;//Taxable

           var total_amt=amt-discount_amt;
           total_amt = (tax_type=='Inclusive') ? total_amt : parseFloat(total_amt) + parseFloat(tax_amount);
           
           //Set Unit cost
           $("#td_data_"+i+"_9").val('').val(to_Fixed(total_amt));
        
           final_total();
         }

        
         /* ---------- CALCULATE GST END -------------*/

         /*Calculate Coupon Discount Amount*/
         const discount_coupon_tot = function(subtotal) {
             var coupon_value=parseFloat($(".coupon_value").text());
                 coupon_value = isNaN(coupon_value) ? 0 : coupon_value;

             var coupon_type=$(".coupon_type").text();

             var discount_amt =0;
             if(coupon_type!='' && coupon_value>0){
                 if(coupon_type=='Percentage'){
                     discount_amt=(subtotal*coupon_value)/100;
                 }
                 else{//Fixed
                     discount_amt=coupon_value;
                 }
             }
             return discount_amt;
         }

         /* ---------- Final Description of amount ------------*/
         function final_total(){
           

           var rowcount=$("#hidden_rowcount").val();
           var subtotal=parseFloat(0);
           
           var other_charges_per_amt=parseFloat(0);
           var other_charges_total_amt=0;
           var taxable=0;
          if($("#other_charges_input").val()!=null && $("#other_charges_input").val()!=''){
             
              other_charges_tax_id =$('option:selected', '#other_charges_tax_id').attr('data-tax');
             other_charges_input=$("#other_charges_input").val();
             if(other_charges_tax_id>0){

               other_charges_per_amt=(other_charges_tax_id * other_charges_input)/100;
             }
             
             taxable=parseFloat(other_charges_per_amt)+parseFloat(other_charges_input);//Other charges input
             other_charges_total_amt=parseFloat(other_charges_per_amt)+parseFloat(other_charges_input);
           }
           else{
             //$("#other_charges_amt").html('0.00');
           }
           
         
           var tax_amt=0;
           var actual_taxable=0;
           var total_quantity=0;
           var total_discount=0;
           var total_tax_amt=0;
           
         
           for(i=1;i<=rowcount;i++){
         
             if(document.getElementById("td_data_"+i+"_3")){
               //customer_id must exist
               if($("#td_data_"+i+"_3").val()!=null && $("#td_data_"+i+"_3").val()!=''){
                    actual_taxable=actual_taxable+ + +(parseFloat($("#td_data_"+i+"_13").val()) * parseFloat($("#td_data_"+i+"_3").val()));
                    subtotal=subtotal+ + +(parseFloat($("#td_data_"+i+"_3").val()))*(parseFloat($("#td_data_"+i+"_10").val()));
                    if($("#td_data_"+i+"_7").val()>=0){
                      tax_amt=tax_amt+ + +$("#td_data_"+i+"_7").val();
                    }   
                    total_quantity +=parseFloat($("#td_data_"+i+"_3").val());
                    total_discount +=parseFloat($("#td_data_"+i+"_8").val());
                    total_tax_amt +=parseFloat($("#td_data_"+i+"_11").val());
                }
                   
             }//if end
           }//for end
           $("#total_gst").html(format_qty(total_tax_amt));
          
          
          //Show total Sales Quantitys
           $(".total_quantity").html(format_qty(total_quantity));

           //Apply Output on screen
           //subtotal
           if((subtotal!=null || subtotal!='') && (subtotal!=0)){
             
             //subtotal
             $("#subtotal_amt").html(to_Fixed(subtotal));
             
             //other charges total amount
             $("#other_charges_amt").html(to_Fixed(other_charges_total_amt));
             
             //other charges total amount
            

             taxable=taxable+subtotal;

             //Calculate Coupon Discount
             var coupon_amt = discount_coupon_tot(taxable);
               taxable-=coupon_amt;

             //discount_to_all_amt
            // if($("#discount_to_all_input").val()!=null && $("#discount_to_all_input").val()!=''){
                 var discount_input=parseFloat($("#discount_to_all_input").val());
                 discount_input = isNaN(discount_input) ? 0 : discount_input;
                 var discount=0;
                 if(discount_input>0){
                     var discount_type=$("#discount_to_all_type").val();
                    //  if(discount_type=='in_fixed'){
                    //   taxable-=discount_input;
                    //   discount=discount_input;
                    //   //Minus
                    //  }
                    //  else if(discount_type=='in_percentage'){
                    //      discount=(taxable*discount_input)/100;
                    //     taxable-=discount;
             
                    //  }
                 }
                 else{
                    //discount += $("#")
                 }
                   discount=parseFloat(discount);
                   
                    $("#coupon_discount_amt").html(to_Fixed(coupon_amt));  
                    // $("#discount_to_all_amt").html(to_Fixed(discount));  
                    // $("#hidden_discount_to_all_amt").val(to_Fixed(discount));  
                    $("#discount_to_all_amt").html(to_Fixed(total_discount));  
                    $("#hidden_discount_to_all_amt").val(to_Fixed(total_discount));  
                    
                    
             //}
             //subtotal_round=Math.round(taxable);
             subtotal_round=round_off(taxable);//round_off() method custom defined
             subtotal_diff=subtotal_round-taxable;
         
             $("#round_off_amt").html(to_Fixed(subtotal_diff)); 
             //$("#total_amt").html(to_Fixed(subtotal_round)); //comment by plaban
             //var calculate_grand_total = to_Fixed(subtotal_round)-to_Fixed(total_discount);
            
             $("#total_amt").html(format_qty((to_Fixed(subtotal_round)-total_discount)+total_tax_amt));
             $("#hidden_total_amt").val(to_Fixed(subtotal_round)); 
           }
           else{
             $("#subtotal_amt").html('0.00'); 
             $("#tax_amt").html('0.00'); 
             $("#round_off_amt").html('0.00'); 
             $("#total_amt").html('0.00'); 
             $("#hidden_total_amt").html('0.00'); 
             $("#discount_to_all_amt").html('0.00'); 
             $("#hidden_discount_to_all_amt").html('0.00'); 
             $("#subtotal_amt").html('0.00'); 
             $("#other_charges_amt").html('0.00'); 
           }
           
          // adjust_payments();
          //alert("final_total() end");
         }
         /* ---------- Final Description of amount end ------------*/
          
         function removerow(id){//id=Rowid
           
         $("#row_"+id).remove();
         final_total();
         failed.currentTime = 0;
        failed.play();
         }
               
     

    function enable_or_disable_item_discount(){
      /*var discount_input=parseFloat($("#discount_to_all_input").val());
      discount_input = isNaN(discount_input) ? 0 : discount_input;
      if(discount_input>0){
        $(".item_discount").attr({
          'readonly': true,
          'style': 'border-color:red;cursor:no-drop',
        });
      }
      else{
        $(".item_discount").attr({
          'readonly': false,
          'style': '',
        });
      }*/

      var rowcount=$("#hidden_rowcount").val();
      for(k=1;k<=rowcount;k++){
       if(document.getElementById("tr_item_id_"+k)){
         calculate_tax(k);
       }//if end
     }//for end

      //final_total();
    }

    $(document).ready(function() {
        set_previous_due();
    });

    //Sale Items Modal Operations Start
    function show_sales_item_modal(row_id){
      $('#sales_item').modal('toggle');
      $("#popup_tax_id").select2();

      //Find the item details
      var item_name = $("#td_data_"+row_id+"_1").html();
      var tax_type = $("#tr_tax_type_"+row_id).val();
      var tax_id = $("#tr_tax_id_"+row_id).val();
      var description = $("#description_"+row_id).val();

      /*Discount*/
      var item_discount_input = $("#item_discount_input_"+row_id).val();
      var item_discount_type = $("#item_discount_type_"+row_id).val();

      //Set to Popup
      $("#item_discount_input").val(item_discount_input);
      $("#item_discount_type").val(item_discount_type).select2();

      $("#popup_item_name").html(item_name);
      $("#popup_tax_type").val(tax_type).select2();
      $("#popup_tax_id").val(tax_id).select2();
      $("#popup_description").val(description);
      $("#popup_row_id").val(row_id);
    }

    function set_info(){
      var row_id = $("#popup_row_id").val();
      var tax_type = $("#popup_tax_type").val();
      var tax_id = $("#popup_tax_id").val();
      var description = $("#popup_description").val();
      var tax_name = ($('option:selected', "#popup_tax_id").attr('data-tax-value'));
      var tax = parseFloat($('option:selected', "#popup_tax_id").attr('data-tax'));

      /*Discounr*/
      var item_discount_input = $("#item_discount_input").val();
      var item_discount_type = $("#item_discount_type").val();

      //Set it into row 
      $("#item_discount_input_"+row_id).val(item_discount_input);
      $("#item_discount_type_"+row_id).val(item_discount_type);

      $("#tr_tax_type_"+row_id).val(tax_type);
      $("#tr_tax_id_"+row_id).val(tax_id);
      $("#tr_tax_value_"+row_id).val(tax);//%
      $("#description_"+row_id).val(description);
      $("#td_data_"+row_id+"_12").html(tax_name);
      
      calculate_tax(row_id);
      $('#sales_item').modal('toggle');
    }
    function set_tax_value(row_id){
      //get the sales price of the item
      var tax_type = $("#tr_tax_type_"+row_id).val();
      var tax = $("#tr_tax_value_"+row_id).val(); //%
      var qty=$("#td_data_"+row_id+"_3").val();
          qty = (isNaN(qty)) ? 0 :qty;
      var sales_price = parseFloat($("#td_data_"+row_id+"_10").val());
          sales_price = (isNaN(sales_price)) ? 0 :sales_price;
          sales_price = sales_price * qty;

      /*Discount*/
      var item_discount_type = $("#item_discount_type_"+row_id).val();
      var item_discount_input = parseFloat($("#item_discount_input_"+row_id).val());
          item_discount_input = (isNaN(item_discount_input)) ? 0 :item_discount_input;

      //Calculate discount      
      var discount_amt=(item_discount_type=='Percentage') ? ((sales_price) * item_discount_input)/100 : (item_discount_input*qty);
      sales_price-=parseFloat(discount_amt);

      var tax_amount = (tax_type=='Inclusive') ? calculate_inclusive(sales_price,tax) : calculate_exclusive(sales_price,tax);
      
      $("#td_data_"+row_id+"_8").val(to_Fixed(discount_amt));

      $("#td_data_"+row_id+"_11").val(to_Fixed(tax_amount));
    }
    //Sale Items Modal Operations End
      </script>


      <!-- UPDATE OPERATIONS -->
      <script type="text/javascript">
         <?php if(isset($sales_id) || isset($quotation_id)|| isset($order_id)){ ?> 
             $(document).ready(function(){
                var base_url='<?= base_url();?>';
                var path='';
                var id='';
                <?php if(isset($sales_id) && !empty($sales_id)) {?>
                  var id='<?=$sales_id;?>';  
                  var path = 'return_sales_list';
                <?php }?>

                <?php if(isset($quotation_id) && !empty($quotation_id)) {?>
                  var id='<?=$quotation_id;?>';  
                  var path = 'return_quotation_list';
                <?php }?>
   
                $(".box").append('<div class="overlay"><i class="fa fa-refresh fa-spin"></i></div>');
                $.post(base_url+"sales/"+path+"/"+id,{},function(result){
                //  alert(result);
                  $('#sales_table tbody').append(result);
                  $("#hidden_rowcount").val(parseInt(<?=$items_count;?>)+1);
                  success.currentTime = 0;
                  success.play();
                  get_coupon_details();  
                  enable_or_disable_item_discount();
                  $(".overlay").remove();
              }); 
             });
         <?php }?>
      </script>
      <script>
        $(function () {
          //bootstrap WYSIHTML5 - text editor
          //$("#invoice_terms").wysihtml5()
        })
      </script>
      <!-- UPDATE OPERATIONS end-->

      <!-- Make sidebar menu hughlighter/selector -->
      <script>$(".<?php echo basename(__FILE__,'.php');?>-active-li").addClass("active");</script>
</body>
</html>
