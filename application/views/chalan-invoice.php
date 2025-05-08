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
    if(isset($id)){
      /*  $this->db->select("*");
		$this->db->from("db_chalan as a");
		$this->db->join("db_customers as b","b.id=a.customer_id","left");
		$q2=$this->db->get()->result_array();
		return $q2;*/
      $q2 = $this->db->query("select * from db_chalan where id=$id");
      //$this->db->join('db_customers','db_chalan.customer_id = db_customers.id');
     	
      $customer_id=$q2->row()->customer_id;
      $sales_date=show_date($q2->row()->sales_date);
      $invoice_no=$q2->row()->invoice_no;
      $delivered_by=$q2->row()->delivered_by;
      $vehicle_no=$q2->row()->vehicle_no;
     
      $q3 = $this->db->query("select * from db_customers where id=$customer_id");  
      $customer_name = $q3->row()->customer_name;

      $items_qty = $this->db->query("select SUM(quantity) as total_qty from db_chalan_item where chalan_id=$id")->row()->total_qty;
      
      
       $store_id = get_current_store_id();
      
      
    $query1=$this->db->query("select * from db_store where id=".$store_id." ");
    $get_store_details=$query1->row();
    
  
    $store_name=$get_store_details->store_name;
    $company_mobile=$get_store_details->mobile;
    $company_phone=$get_store_details->phone;
    $company_email=$get_store_details->email;
    // $company_country=$get_store_details->country;
    // $company_state=$get_store_details->state;
    $company_city=$get_store_details->city;
    $company_address=$get_store_details->address;
    $company_gst_no=$get_store_details->gst_no;
    $company_vat_no=$get_store_details->vat_no;
    $company_pan_no=$get_store_details->pan_no;
      
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
                 
                            
                           <!-- /.box-body -->
                           
                           <div class="row">
                              <div class="col-md-12">
                                <div class="col-md-12">
                                  <div class="box">
                                    <div class="box-info">
                                      
    <!-- print section -->
	
            
                                  <div id="item_list" class="box-body">
                                      <h2 style="text-align:center;">DELIVERED CHALLAN</h2>
                                    <div style="display: flex;justify-content: space-around; flex-wrap: nowrap; align-items: center;">
                                    <div>
                                    <h1><?php echo $store_name;?></h1>
                                    <p style="font-size:medium;">
                                      <br><?php echo $company_address;?> <br>
                                      Mobile No. +<?php echo $company_mobile; if($company_phone!=''){?> | Ph No:+<?php echo $company_phone;}?> <br>E-mail : <?php echo $company_email;?>
                                    </p>
                                  </div>
                            <div style="display: flex;flex-direction: column; " class="form-group">
                        <label for="customer_id" class="col-sm-12 control-label"><?= $this->lang->line('customer_name'); ?> : <?= $customer_name; ?></label>
                                 
                                 <label for="sales_date" class="col-sm-12 control-label"><?= $this->lang->line('sales_date'); ?> : <?= $sales_date;?></label>
                                 
									<label for="invoice_no" class="col-sm-12 control-label"><?= $this->lang->line('invoice_no'); ?> : <?= $invoice_no;?></label>
                                 
                                
                              </div>
                              
                 </div>                     
                                      
                                        <div class="table-responsive" style="width: 100%">
                                        <table class="table table-hover table-bordered" style="width:100%" id="sales_table">
                                             <thead class="custom_thead">
                                                <tr class="bg-primary" >
                                                    <th  style="width:2%">SL no. </th>
                                                   <th style="width:15%"><?= $this->lang->line('item_name'); ?></th>
                                                 
                                                   <th style="width:10%;min-width: 180px;"><?= $this->lang->line('quantity'); ?></th>

                                                </tr>
                                             </thead>
                                             <tbody>
                                                 <?php
                                                  $i=0;
                                                  
                                                  $q2=$this->db->query("SELECT *
                                                                      FROM 
                                                                      db_chalan_item AS a,db_items AS c 
                                                                      WHERE 
                                                                      c.id=a.item_id AND a.chalan_id='$id'");
                                                  foreach ($q2->result() as $res2) {
                                                      
                                                      echo "<tr>";  
                                                      echo "<td align='center'>".++$i."</td>";
                                                      echo "<td align='center'>";
                                                        echo $res2->item_name;
                                                        echo (!empty($res2->description)) ? "<br><i>[".nl2br($res2->description)."]</i>" : '';
                                                      echo "</td>";
                                                    echo "<td align='center'>";
                                                        echo $res2->quantity;
                                                      echo "</td>";
                                                      echo "</tr>";  
                                                      
                                                  }
                                                  ?>
                                               
                                             </tbody>
                                          </table>
                                          <hr style="height:2px;">
                                            <!-- <div style=" display: flex; justify-content: space-between;align-items: center;"> -->
                                            <div  class="col-md-12">
                                                <!--<div style="display: flex; justify-content: flex-end; text-align: right;" class="form-group">-->
                                                <!--    <label for=""style="  " class="col-sm-10 control-label"><?= $this->lang->line('quantity'); ?>: <?=$items_qty; ?></label>    -->
                                                    
                                                

                                                <!--</div>-->
                                    <div class="col-md-12" style="padding: 10px;">
                                                <label class="col-sm-4 control-label">Delivered By : <?= $delivered_by;?></label>
                                                
									</div>
									 <div class="col-md-12" style="padding: 10px;">
													
                                               <label class="col-sm-4 control-label">Vehicle No. : <?= $vehicle_no;?></label>
                                                 
									</div>
									<div class="col-md-12" style="padding: 10px;">
                                           <label class="col-sm-4 control-label">Receiver Signature :</label>
                                    </div>                                         
                              <div class="row">
                                               <div class="col-md-12" style="padding: 10px;">
                                                     <div class="col-sm-12 control-label" style="text-align:right;">
                                                         <img src="<?php echo base_url();?>uploads/sig.jpeg" width="170" height="90"/>
                                                        </div>
                                               </div>
                                         </div>
                                 

                    
                                       
                                       <!-- /.box-body -->
                                    </div>
                                 <!-- /.box -->
                              </div>

                                                </div>
                             


                            
                                     


                           
                           <!-- /.box-body -->
                  
                           
						   
						
						   
						   
						   
						   
						   
						   
						   
						   <script>
                            function PrintElem(elem)
                                {
                                    var mywindow = window.open('', 'PRINT');

                                    mywindow.document.write('<html><head><title>' + document.title  + '</title>');
                                    mywindow.document.write('</head><body >');
                                    mywindow.document.write('<h1>' + document.title  + '</h1>');
                                    mywindow.document.write(document.getElementById(elem).innerHTML);
                                    mywindow.document.write('</body></html>');

                                    mywindow.document.close(); // necessary for IE >= 10
                                    mywindow.focus(); // necessary for IE >= 10*/

                                    mywindow.print();

                                    return true;
                                }
                           </script>
                            <div class="box-footer col-sm-12">
                            
                              <center>
                               
                                 <div class="col-md-3 col-md-offset-3">
                                    <button type="button" onclick="PrintElem('item_list')" class="btn btn-block btn-success payments_modal" title="Print Challan?">Print</button>
                                 </div>
                                 <div class="col-sm-3"><a href="<?= base_url()?>chalan">
                                    <button type="button" class="btn btn-block btn-warning" title="Go To Challan List">Back</button>
                                  </a>
                                </div>
                              </center>
                           </div>
                           
				
                            
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

<script src="<?php echo $theme_link; ?>js/chalan.js"></script>  
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
         
           for(i=1;i<=rowcount;i++){
         
             if(document.getElementById("td_data_"+i+"_3")){
               //customer_id must exist
               if($("#td_data_"+i+"_3").val()!=null && $("#td_data_"+i+"_3").val()!=''){
                    actual_taxable=actual_taxable+ + +(parseFloat($("#td_data_"+i+"_13").val()) * parseFloat($("#td_data_"+i+"_3").val()));
                    subtotal=subtotal+ + +parseFloat($("#td_data_"+i+"_9").val());
                    if($("#td_data_"+i+"_7").val()>=0){
                      tax_amt=tax_amt+ + +$("#td_data_"+i+"_7").val();
                    }   
                    total_quantity +=parseFloat($("#td_data_"+i+"_3").val());
                }
                   
             }//if end
           }//for end
           
          
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
                     if(discount_type=='in_fixed'){
                       taxable-=discount_input;
                       discount=discount_input;
                       //Minus
                     }
                     else if(discount_type=='in_percentage'){
                         discount=(taxable*discount_input)/100;
                        taxable-=discount;
             
                     }
                 }
                 else{
                    //discount += $("#")
                 }
                   discount=parseFloat(discount);
                   
                    $("#coupon_discount_amt").html(to_Fixed(coupon_amt));  
                    $("#discount_to_all_amt").html(to_Fixed(discount));  
                    $("#hidden_discount_to_all_amt").val(to_Fixed(discount));  
             //}
             //subtotal_round=Math.round(taxable);
             subtotal_round=round_off(taxable);//round_off() method custom defined
             subtotal_diff=subtotal_round-taxable;
         
             $("#round_off_amt").html(to_Fixed(subtotal_diff)); 
             $("#total_amt").html(to_Fixed(subtotal_round)); 
             $("#hidden_total_amt").val(to_Fixed(subtotal_round)); 
             $("#amount").val(to_Fixed(subtotal_round)); 
// musaddiq
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
