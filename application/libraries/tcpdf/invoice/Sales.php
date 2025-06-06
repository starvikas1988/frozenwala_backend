<?php

include('MyPDF.php');

class Sales extends MyPDF{
	//public $CI=null;

	protected $sales_id =null;

	//public $store =array();

	protected $customer =array();

	protected $sales =array();

	public function __construct(array $param=array())
	{
		parent::__construct();

		$this->sales_id = $param['sales_id'];
    	$this->invoice_sales_id = $param['invoice_sales_id'];
		//$this->CI =& get_instance();

		//$this->store = get_store_details();//Declared in MyPDF Pa

		$this->sales = get_sales_details($this->sales_id);
		
		$this->customer = get_customer_details($this->sales->customer_id);
		
// 		echo '<pre>';
// 		print_r($this->customer);

	}
	public function _get_customer_details()
    {   

    	$customer = $this->customer;//array()

    	$store = $this->store;//array()

    	//Customer Records
	    $state = (!empty($customer->state_id)) ? get_state_details($customer->state_id) : '';
	    $customer_state_name = (!empty($state)) ? $state->state : $store->state;

        $w = 100;
        $h = 40;

        $custmer_details = '<span style="color:rgb(65, 59, 212);font-style:italic;">'.$this->CI->lang->line('bill_to').'</span>';
        $custmer_details .= "<br><b>".$this->CI->lang->line('name')." :</b> ".$customer->customer_name;
        $custmer_details .= "<br><b>".$this->CI->lang->line('address')." :</b> ".$customer->address;
        $custmer_details .= "<br><b>".$this->CI->lang->line('postcode')." :</b> ".$customer->postcode;
        $custmer_details .= "<br><b>".$this->CI->lang->line('mobile')." :</b> ".$customer->mobile;
        $custmer_details .= "<br><b>".$this->CI->lang->line('phone')." :</b> ".$customer->phone;
        $custmer_details .= "<br><b>".$this->CI->lang->line('email')." :</b> ".$customer->email;
        $custmer_details .= "<br><b>".$this->CI->lang->line('gst_number')." :</b> ".$customer->gstin;

        //$this->setCellMargins(1,1,1,1);
        $this->setCellPaddings(2,1,1,1);
        $this->setFont($this->get_font_name(), '', 9);
        $this->setFillColor(255, 255, 255);

        $this->writeHTMLCell($w, $h, $x ='6', $y='52', $custmer_details, 1, 0, 1, true, 'J', true);
        return $this;
    } 

    public function _get_invoice_details()
    {
    	$sales = $this->sales;//array()

        $w = 100;
        $h = 40;
        $invoice_details = "";
        $invoice_details = '<span style="color:rgb(65, 59, 212);font-style:italic;">'.$this->CI->lang->line('invoice_details').'</span>';
        $invoice_details .= '<br><b>'.$this->CI->lang->line('invoice_no').' :</b> <span style="font-size:16px;">'.$sales->sales_code.'</span>';
        $invoice_details .= '<br><b>'.$this->CI->lang->line('date').' :</b> <span style="">'.show_date($sales->sales_date).'</span>';
        $invoice_details .= '<br><b>'.$this->CI->lang->line('due_date').' :</b> <span style="">'.((!empty($sales->due_date)) ? show_date($sales->due_date):'').'</span>';
        $invoice_details .= '<br><b>'.$this->CI->lang->line('reference_no').' :</b> <span style="">'.$sales->reference_no.'</span>';

        $this->writeHTMLCell($w, $h, $x ='104', $y='', $invoice_details, 1, 1, 1, true, 'J', true);
        return $this;
    }

    public function _get_shipping_address()
    {
        $w = 100;
        $h = 40;

        $customer = $this->customer;//array()
        $get_invoice_sales_id = $this->invoice_sales_id;
        //print_r($get_invoice_sales_id);die();
        //Customer Shipping Address Records
	    $country='';
	    $state='';
	    $city='';
	    $address='';
	    $postcode='';
	    if(!empty($customer->shippingaddress_id)){
	        $Q10 = $this->CI->db->select("c.country,s.state,a.city,a.postcode,a.address")
	                        ->where("a.id",$customer->shippingaddress_id)
	                        ->from("db_shippingaddress a")
	                        ->join("db_country c","c.id = a.country_id",'left')
	                        ->join("db_states s","s.id = a.state_id",'left')
	                        ->get();                    
	        if($Q10->num_rows()>0){
	          $country=$Q10->row()->country;
	          $address=$Q10->row()->address;
	          $state=$Q10->row()->state;
	          $city=$Q10->row()->city;
	          $postcode=$Q10->row()->postcode;
	        }
	      }
	   
	   
	   $Q2 = $this->CI->db->select("*")
	                        ->where("invoice_sales_id",$get_invoice_sales_id)
	                        ->from("db_shippingaddress")
	                        ->get(); 
	  

        $custmer_details = '<span style="color:rgb(65, 59, 212);font-style:italic;">'.$this->CI->lang->line('ship_to').'</span>';

        $custmer_details .= "<br><b>".$this->CI->lang->line('name')." :</b> ".$customer->customer_name;
        $custmer_details .= "<br><b>".$this->CI->lang->line('mobile')." :</b> ".$customer->mobile;
        
        if($Q2->num_rows()>0){
        $custmer_details .= "<br><b>".$this->CI->lang->line('address')." :</b> ".$Q2->row()->address;
        }
        
        elseif($Q10->row()->address>0){
         $custmer_details .= "<br><b>".$this->CI->lang->line('address')." :</b> ".$address;
        //  $custmer_details .= "<br><b>".$this->CI->lang->line('city')." :</b> ".$state=$Q10->row()->city;
        //   $custmer_details .= "<br><b>".$this->CI->lang->line('state')." :</b> ".$address=$Q10->row()->state;
        //   $custmer_details .= "<br><b>".$this->CI->lang->line('country')." :</b> ".$address=$Q10->row()->country;
        
        
        $custmer_details .= "<br><b>".$this->CI->lang->line('postcode')." :</b> ".$postcode;
        $custmer_details .= "<br><b>".$this->CI->lang->line('city')." :</b> ".$city;
        $custmer_details .= "<br><b>".$this->CI->lang->line('state')." :</b> ".$state;
        $custmer_details .= "<br><b>".$this->CI->lang->line('country')." :</b> ".$country;
}
        $this->writeHTMLCell($w, $h, $x ='6', $y='90', $custmer_details, 1, 0, 1, true, 'J', true);
        return $this;
    }

    public function _get_bank_details()
    {
    	$store = $this->store;
        $w = 100;
        $h = 40;
        $invoice_details = "";
        $invoice_details = '<span style="color:rgb(65, 59, 212);font-style:italic;">'.$this->CI->lang->line("bank_details").'</span>';
       // $invoice_details .= nl2br($store->bank_details);
        $invoice_details .= "<br><b>".$this->CI->lang->line('name')." :</b> MEGASFROZEN GOODS PVT. LTD.";
        $invoice_details .= "<br>Bank Name: STATE BANK OF INDIA <br><b>A/C No.</b> 03333333333 <br>A/C Type: Current Account";
        $invoice_details .= "<br>Branch Name: Kolkata <br>Address: BANDHERI WEST, MUMBAI SUBURBAN MUMBAI 400053";
        $invoice_details .= "<br><b>".$this->CI->lang->line('ifsc_code')." :</b> SBIN0000000 <b>MICR Code:</b> 999999999";
       
        $this->writeHTMLCell($w, $h, $x ='104', $y='', $invoice_details, 1, 1, 1, true, 'J', true);
        return $this;
    }

   
	public function show_pdf()
	{
		$this->_main_body();
	}

	

	public function _main_body()
	{	
		$sales 		= $this->sales;//array()
		$store 		= $this->store;//array()
		$customer 	= $this->customer;//array()
			
		$this->_invoice_name = "Tax Invoice";

		//$this->_QRCODE = $sales->sales_code;

		// set font
		$this->setFont($this->get_font_name(), 'B', 20);

		// add a page
		$this->AddPage();

		// Cusomer Details
		$this->_get_customer_details(); 

		// Cusomer Details
		$this->_get_invoice_details();

		// Shipping Details
		$this->_get_shipping_address(); 

		// Bank Details
		$this->_get_bank_details();

		//Set document name (footer -R)
		$this->_set_document_name($this->CI->lang->line("invoice_number"));
		
		//Sey document number (footer -R)
		$this->_set_document_number($sales->sales_code);
		
		//Search Coupon Details
		$coupon_code = $coupon_type = '';
	    $coupon_value=0;
	    if(!empty($sales->coupon_id)){
	      $coupon_details =get_customer_coupon_details($sales->coupon_id);
	      $coupon_code =$coupon_details->code;
	      $coupon_value =$coupon_details->value;
	      $coupon_type =$coupon_details->type;
	    } 
		$this->setFont($this->get_font_name(), '', 8);

		// set cell padding
		$this->setCellPaddings(1, 1, 1, 1);

		// set cell margins
		//$this->setCellMargins(1, 1, 1, 1);

		// set color for background
		$this->setFillColor(255, 255, 255);

		$this->Ln(0);

		
		$show_tax = true;


		$this->setFont($this->get_font_name(), '', 8);
		
		
		$tbl = '
		<style type="text/css">
			table, td, th {
			    border-collapse: collapse;
			    border: 0.01px solid    #26066c  ;
			    
			}
			
			table + table, table + table tr:first-child th, table + table tr:first-child td {
			    border-top: 0;
			}
			.text-right{
				text-align: right;
			}
			.text-center{
				text-align: center;
			}
			.text-bold{
				font-weight: bold;
			}
		
		</style>
		<table >';

			$widthArray = array(
				'sl_no' 		=> '2',
				'description' 	=> '25',
				'hsn' 			=> '8',
				'unit_cost' 	=> '8',
				'qty' 			=> '5',
				'taxable_value'	=> '8',
				'unit'	        => '5',
				'tax' 			=> '9',
				'tax_amt'		=> '10',
				'disc' 			=> '10',
				'amount' 		=> '10',

			);

			$tot_col = count($widthArray);

			$equalize =0;

			if(!$show_tax){
				$tot_col -=2;
				$equalize = 20/$tot_col;
			}

			//Sum the value
			$sumOfWidth = 0;

			$colW =array();
			foreach($widthArray as $key => $val){

				//if tax hidden
				if(!$show_tax){
					$makeZero = array('tax','tax_amt');
					$val = (in_array($key,$makeZero)) ? 0 : $val+$equalize;
				}
				else{
					//Add percentage value
					$val +=$equalize;
				}
				
				//Update value
				$colWidthSize[$key] = $val;

				//New Array => Reasssign % symbol
				$colW[$key] = $val.'%';

				//Sum of value
				$sumOfWidth+=$val;
			}

			
			
		    $tbl .='<thead>
		        <tr style="background-color: #e4eaff ;" class="text-bold">
			        <th colspan="1" style="width: '.$colW['sl_no'].'">'.$this->CI->lang->line("sl_no").'</th>
			        <th colspan="1" style="width: '.$colW['description'].'" >'.$this->CI->lang->line("description").'</th>
			        <th colspan="1" style="width: '.$colW['hsn'].'">'.$this->CI->lang->line("hsn").'</th>
			        <th colspan="1" style="width: '.$colW['unit_cost'].'">'.$this->CI->lang->line("unit_cost").'</th>
			        <th colspan="1" style="width: '.$colW['qty'].'">'.$this->CI->lang->line("qty").'</th>
			        <th colspan="1" style="width: '.$colW['disc'].'">'.$this->CI->lang->line("discount_per").'</th>
			        <th colspan="1" style="width: '.$colW['taxable_value'].'">'.$this->CI->lang->line("taxable_value").'</th>
			        <th colspan="1" style="width: '.$colW['unit'].'">'.$this->CI->lang->line("unit").'</th>';
			     //   if($show_tax){
			     //   	$tbl .='<th colspan="1" style="width: '.$colW['tax'].'">'.$this->CI->lang->line("tax").'</th>';
			     //   	$tbl .='<th colspan="1" style="width: '.$colW['tax_amt'].'">'.$this->CI->lang->line("tax_amt").'</th>';
			    	// }
			    	if($customer->state_id!="51"){
			    	    
			    	    	$tbl .='<th colspan="1" style="width: '.$colW['tax'].'">'.$this->CI->lang->line("igst").'</th>';
			        $tbl .='<th colspan="1" style="width: '.$colW['tax_amt'].'">TAX%</th>';
			    	    
			    	}else{
			    	$tbl .='<th colspan="1" style="width: '.$colW['tax'].'">'.$this->CI->lang->line("cgst").'</th>';
			        $tbl .='<th colspan="1" style="width: '.$colW['tax_amt'].'">'.$this->CI->lang->line("sgst").'</th>';
			    	}
			        $tbl .='<th colspan="1" style="width: '.$colW['amount'].'">'.$this->CI->lang->line("amount").'</th>
		        </tr>
		    </thead>
		    <tbody>';
		        
		      $i=1;
              $tot_qty=0;
              $tot_sales_price=0;
              $tot_tax_amt=0;
              $tot_discount_amt=0;
              $tot_unit_total_cost=0;
              $tot_total_cost=0;
              $tot_before_tax=0;
              
              $tot_price_per_unit=0;
              $sum_of_tot_price=0;

              $this->CI->db->select("  c.description,c.item_name, a.sales_qty,a.tax_type,a.serial_no,
                                  a.price_per_unit, b.tax,b.tax_name,a.tax_amt,
                                  a.discount_input,a.discount_amt, a.unit_total_cost,
                                  a.total_cost , d.unit_name,c.sku,c.hsn
                              ");
              $this->CI->db->where("a.sales_id",$this->sales_id);
              $this->CI->db->from("db_salesitems a");
              $this->CI->db->join("db_tax b","b.id=a.tax_id","left");
              $this->CI->db->join("db_items c","c.id=a.item_id","left");
              $this->CI->db->join("db_units d","d.id = c.unit_id","left");
              //$this->CI->db->limit("10");
              
			  
              $q2=$this->CI->db->get();
			  
		        foreach ($q2->result() as $res2) {
                  $discount = (empty($res2->discount_input)||$res2->discount_input==0)? '0':$res2->discount_input."%";
                  $discount_amt = (empty($res2->discount_amt)||$res2->discount_input==0)? '0':$res2->discount_amt."";//comment by plaban
                  $discount_input = (empty($res2->discount_amt)||$res2->discount_input==0)? '0':$res2->discount_input."";//added by plaban
                  $before_tax=$res2->unit_total_cost;// * $res2->sales_qty;
                  $tot_cost_before_tax=$before_tax * $res2->sales_qty;
                  $total_gst = $res2->tax_amt;

                  $price_per_unit = $res2->price_per_unit;
                  if($res2->tax_type=='Inclusive'){
                    $price_per_unit -= ($res2->tax_amt/$res2->sales_qty);
                  }

                  $tot_price = $price_per_unit * $res2->sales_qty;

                 $tbl .='<tr style="" nobr="true">';
				      $tbl .='<td colspan="1" style="width: '.$colW['sl_no'].'">'.$i++.'</td>';
				      $tbl .='<td colspan="1" style="width: '.$colW['description'].'" >';
				      $tbl .= $res2->item_name;
				      $tbl .= (!empty($res2->serial_no)) ? "<br><i>Sl No-(".nl2br($res2->serial_no).")</i>" : '';
				      $tbl .= (!empty($res2->description)) ? "<br><i>[".nl2br($res2->description)."]</i>" : '';
				      $tbl .= '</td>';
				      $tbl .='<td colspan="1" style="width: '.$colW['hsn'].'">'.$res2->hsn.'</td>';
				      $tbl .='<td colspan="1" class="text-right" style="width: '.$colW['unit_cost'].'">'.store_number_format($price_per_unit).'</td>';
				      $tbl .='<td colspan="1" style="width: '.$colW['qty'].'">'.format_qty($res2->sales_qty).'</td>';
				      $tbl .='<td colspan="1" class="text-right" style="width: '.$colW['disc'].'">'.store_number_format($discount_input)."%".'</td>';
				      $tbl .='<td colspan="1" style="width: '.$colW['taxable_value'].'">'.format_qty(($res2->sales_qty*$price_per_unit)-$discount_amt).'</td>';
				      
				      $tbl .='<td colspan="1" style="width: '.$colW['unit'].'">'.$res2->unit_name.'</td>';
				//       if($show_tax){
				// 	   //   $tbl .='<td colspan="1" style="width: '.$colW['tax'].'">'.$res2->tax_name.'</td>';
				// 	   //   $tbl .='<td colspan="1" class="text-right" style="width: '.$colW['tax_amt'].'">'.store_number_format($res2->tax_amt).'</td>';
				// 	  }
				if($customer->state_id!="51"){
			    	$tbl .='<td colspan="1" style="width: '.$colW['tax'].'">'.store_number_format($res2->tax_amt).'</td>';
			        $tbl .='<td colspan="1" class="text-right" style="width: '.$colW['tax_amt'].'">'.store_number_format($res2->tax).'</td>';
				}else{
				    
				    $tbl .='<td colspan="1" style="width: '.$colW['tax'].'">'.store_number_format($res2->tax_amt/2).'<br>'.store_number_format($res2->tax/2).'%</td>';
			        $tbl .='<td colspan="1" class="text-right" style="width: '.$colW['tax_amt'].'">'.store_number_format($res2->tax_amt/2).'<br>'.store_number_format($res2->tax/2).'%</td>';
				}
				
				      
				      //$tbl .='<td colspan="1" class="text-right" style="width: '.$colW['amount'].'">'.store_number_format($res2->total_cost).'</td>';//comment by plaban
			      $tbl .='<td colspan="1" class="text-right" style="width: '.$colW['amount'].'">'.(format_qty(($price_per_unit*$res2->sales_qty)-$discount_amt)+$total_gst).'</td>';
		          $tbl .='</tr>';

                  $tot_qty +=$res2->sales_qty;
                  $tot_tax_amt +=$res2->tax_amt;
                  $tot_discount_amt +=$res2->discount_amt;
                  $tot_unit_total_cost +=$res2->unit_total_cost;
                  $tot_before_tax +=$before_tax;
                  //$tot_total_cost +=$res2->total_cost;//comment by plaban
                  $tot_total_cost += format_qty(($price_per_unit*$res2->sales_qty)-$discount_amt)+$total_gst;
                  $tot_price_per_unit +=$price_per_unit;
                  $sum_of_tot_price +=$tot_price;
                  $tot_taxable_value += ($res2->sales_qty*$price_per_unit)-$discount_amt;
                  $tot_unit =$res2->unit_name;
                  $subtotal_amount+=($price_per_unit*$res2->sales_qty);
                  $total_gst_amount+=$res2->tax_amt;
              }
			
		    $tbl .='</tbody>
		    
		</table>
		';

		$tbl .='<table>
		            <tbody>';

		            	$tbl .='<tr nobr="true" class="text-bold">';

		                	$tbl .='<td colspan="3"  style="width:'.($colWidthSize['sl_no']+$colWidthSize['description']+$colWidthSize['hsn']).'%">';
		                	$tbl .=$this->CI->lang->line("total");
		                	$tbl .='</td>';

		                	$tbl .='<td colspan="1" class="text-right" style="width:'.($colWidthSize['unit_cost']).'%">';
		                	$tbl .="-";
		                	$tbl .='</td>';

		                	$tbl .='<td colspan="1" style="width:'.($colWidthSize['qty']).'%">';
		                	$tbl .=format_qty($tot_qty);
		                	$tbl .='</td>';
		                	 $tbl .='<td colspan="1" class="text-right" style="width:'.($colWidthSize['disc']).'%">';
		                	//$tbl .=store_number_format($tot_discount_amt);//comment by plaban
		                	$tbl .="-";//added by plaban
		                	$tbl .='</td>';
		                	
		                	$tbl .='<td colspan="1" style="width:'.($colWidthSize['taxable_value']).'%">';
		                	$tbl .=format_qty($tot_taxable_value);
		                	$tbl .='</td>';
		                	
		                	$tbl .='<td colspan="1" style="width:'.($colWidthSize['unit']).'%">';
		                	$tbl .=$tot_unit;
		                	$tbl .='</td>';
		              //  	if($show_tax){
			             //   	$tbl .='<td colspan="1" class="text-right" style="width:'.($colWidthSize['tax']).'%">';
			             //   	$tbl .='';
			             //   	$tbl .='</td>';

			             //   	$tbl .='<td colspan="1" class="text-right" style="width:'.($colWidthSize['tax_amt']).'%">';
			             //   	$tbl .=store_number_format($tot_tax_amt);
			             //   	$tbl .='</td>';
			             //   }
			             
			             if($customer->state_id!="51"){
			             
			                	$tbl .='<td colspan="1" class="text-right" style="width:'.($colWidthSize['tax']).'%">';
			                	$tbl .=store_number_format($tot_tax_amt);;
			                	$tbl .='</td>';

			                	$tbl .='<td colspan="1" class="text-right" style="width:'.($colWidthSize['tax_amt']).'%">';
			                	$tbl .='';
			                	$tbl .='</td>';
			             }else{
			                 
			                 $tbl .='<td colspan="1" class="text-right" style="width:'.($colWidthSize['tax']).'%">';
			                	$tbl .=store_number_format($tot_tax_amt/2);;
			                	$tbl .='</td>';

			                	$tbl .='<td colspan="1" class="text-right" style="width:'.($colWidthSize['tax_amt']).'%">';
			                	$tbl .=store_number_format($tot_tax_amt/2);
			                	$tbl .='</td>';
			                 
			             }

			               

		                	$tbl .='<td colspan="1" class="text-right" style="width:'.($colWidthSize['amount']).'%">';
		                	$tbl .=store_number_format($tot_total_cost);
		                	$tbl .='</td>';


		                $tbl .='</tr>';

		                //Sub Total
		                $tbl .='<tr nobr="true">
		                	<td colspan="'.((!$show_tax)?4:6).'" style="width:'.($sumOfWidth-$colWidthSize['amount']-$colWidthSize['disc']-$colWidthSize['tax_amt']-(($show_tax)?0:$colWidthSize['qty'])).'%">';
		                	$tbl .='';
		                	$tbl .='</td>
		                	<td colspan="2" class="text-right" style="width:'.($colWidthSize['disc']+$colWidthSize['tax_amt']+(($show_tax)?0:$colWidthSize['qty'])).'%">';
		                	$tbl .=$this->CI->lang->line("subtotal");
		                	$tbl .='</td>
		                	<td colspan="1" class="text-right" style="width:'.($colWidthSize['amount']).'%">';
		                	$tbl .=store_number_format($subtotal_amount);
		                	$tbl .='</td>';
		                $tbl .='</tr>';

		                //Other charges
		                $tbl .='<tr nobr="true">
		                	<td colspan="'.((!$show_tax)?4:6).'" style="width:'.($sumOfWidth-$colWidthSize['amount']-$colWidthSize['disc']-$colWidthSize['tax_amt']-(($show_tax)?0:$colWidthSize['qty'])).'%">';
		                	$tbl .='';
		                	$tbl .='</td>
		                	<td colspan="2" class="text-right" style="width:'.($colWidthSize['disc']+$colWidthSize['tax_amt']+(($show_tax)?0:$colWidthSize['qty'])).'%">';
		                	$tbl .=$this->CI->lang->line("other_charges");
		                	$tbl .='</td>
		                	<td colspan="1" class="text-right" style="width:'.($colWidthSize['amount']).'%">';
		                	$tbl .=store_number_format($sales->other_charges_amt);
		                	$tbl .='</td>';
		                $tbl .='</tr>';

		                //Coupon
		                if(!empty($coupon_code)){
			                $tbl .='<tr nobr="true">
			                	<td colspan="'.((!$show_tax)?4:6).'" style="width:'.($sumOfWidth-$colWidthSize['amount']-$colWidthSize['disc']-$colWidthSize['tax_amt']-(($show_tax)?0:$colWidthSize['qty'])).'%">';
			                	$tbl .="<b>".$this->CI->lang->line("couponCode")."</b>: ".getTruncatedCCNumber($coupon_code);
			                	$tbl .='</td>
			                	<td colspan="2" class="text-right" style="width:'.($colWidthSize['disc']+$colWidthSize['tax_amt']+(($show_tax)?0:$colWidthSize['qty'])).'%">';
			                	$tbl .=$this->CI->lang->line("couponDiscount").":";
			                	$tbl .=($coupon_type=='Percentage') ? $coupon_value .'%' : '[Fixed]' ;
			                	$tbl .='</td>
			                	<td colspan="1" class="text-right" style="width:'.($colWidthSize['amount']).'%">';
			                	$tbl .=store_number_format($sales->coupon_amt);
			                	$tbl .='</td>';
			                $tbl .='</tr>';
		            	}

		            	//Discount on All
		            	$tbl .='<tr nobr="true">
		                	<td colspan="'.((!$show_tax)?4:6).'" style="width:'.($sumOfWidth-$colWidthSize['amount']-$colWidthSize['disc']-$colWidthSize['tax_amt']-(($show_tax)?0:$colWidthSize['qty'])).'%">';
		                	$tbl .='';
		                	$tbl .='</td>
		                	<td colspan="2" class="text-right" style="width:'.($colWidthSize['disc']+$colWidthSize['tax_amt']+(($show_tax)?0:$colWidthSize['qty'])).'%">';
		                	$tbl .=$this->CI->lang->line("discount_on_all");
		                	/*$tbl .="[";
		                	$tbl .=store_number_format($sales->discount_to_all_input)." ".(($sales->discount_to_all_type=='percentage') ? '%' : 'Fixed');
		                	$tbl .="]";*/
		                	$tbl .='</td>
		                	<td colspan="1" class="text-right" style="width:'.($colWidthSize['amount']).'%">';
		                	//$tbl .=store_number_format($sales->other_charges_amt);//comment by plaban
		                	$tbl .=store_number_format($tot_discount_amt);//added by plaban
		                	$tbl .='</td>';
		                $tbl .='</tr>';
		                
		                  $tbl .='<tr nobr="true">
		                	<td colspan="'.((!$show_tax)?4:6).'" style="width:'.($sumOfWidth-$colWidthSize['amount']-$colWidthSize['disc']-$colWidthSize['tax_amt']-(($show_tax)?0:$colWidthSize['qty'])).'%">';
		                	$tbl .='';
		                	$tbl .='</td>
		                	<td colspan="2" class="text-right" style="width:'.($colWidthSize['disc']+$colWidthSize['tax_amt']+(($show_tax)?0:$colWidthSize['qty'])).'%">';
		                	$tbl .="Total GST";
		                	$tbl .='</td>
		                	<td colspan="1" class="text-right" style="width:'.($colWidthSize['amount']).'%">';
		                	$tbl .=store_number_format($total_gst_amount);
		                	$tbl .='</td>';
		                $tbl .='</tr>';

		                //Round Off
		                $tbl .='<tr nobr="true">
		                	<td colspan="'.((!$show_tax)?4:6).'" style="width:'.($sumOfWidth-$colWidthSize['amount']-$colWidthSize['disc']-$colWidthSize['tax_amt']-(($show_tax)?0:$colWidthSize['qty'])).'%">';
		                	$tbl .='';
		                	$tbl .='</td>
		                	<td colspan="2" class="text-right" style="width:'.($colWidthSize['disc']+$colWidthSize['tax_amt']+(($show_tax)?0:$colWidthSize['qty'])).'%">';
		                	$tbl .=$this->CI->lang->line("round_off");
		                	$tbl .='</td>
		                	<td colspan="1" class="text-right" style="width:'.($colWidthSize['amount']).'%">';
		                	$tbl .=store_number_format($sales->round_off);
		                	$tbl .='</td>';
		                $tbl .='</tr>';

		                //Grand Total
		                $tbl .='<tr nobr="true">
		                	<td colspan="'.((!$show_tax)?4:6).'" style="width:'.($sumOfWidth-$colWidthSize['amount']-$colWidthSize['disc']-$colWidthSize['tax_amt']-(($show_tax)?0:$colWidthSize['qty'])).'%">';
		                	$tbl .="<b>".$this->CI->lang->line("amount_in_words")."</b>: ".no_to_words($sales->grand_total);
		                	$tbl .='</td>
		                	<td colspan="2" class="text-right" style="width:'.($colWidthSize['disc']+$colWidthSize['tax_amt']-(($show_tax)?0:$colWidthSize['qty'])).'%">';
		                	$tbl .="<b>".$this->CI->lang->line("grand_total")."</b>";
		                	$tbl .='</td>
		                	<td colspan="1" class="text-right" style="width:'.($colWidthSize['amount']).'%">';
		                	//$tbl .="<b>".store_number_format($sales->grand_total)."</b>";
		                	$tbl .="<b>".store_number_format(round($tot_total_cost))."</b>";
		                	$tbl .='</td>';
		                $tbl .='</tr>';

		      //          if($store->previous_balance_bit==1){
		      //          	$previous_due=($customer->sales_due)-($sales->grand_total-$sales->paid_amount);
						  //  $previous_due = ($previous_due>0) ? $previous_due : 0;
						  //  $total_due=$customer->sales_due;

				    //         $tbl .='<tr nobr="true">
			     //           	<td colspan="'.((!$show_tax)?4:6).'" style="width:'.($sumOfWidth-$colWidthSize['amount']-$colWidthSize['disc']-$colWidthSize['tax_amt']).'%">';
			     //           	$tbl .='';
			     //           	$tbl .='</td>
			     //           	<td colspan="2" class="text-right" style="width:'.($colWidthSize['disc']+$colWidthSize['tax_amt']).'%">';
			     //           	$tbl .=$this->CI->lang->line("previous_balance");
			     //           	$tbl .='</td>
			     //           	<td colspan="1" class="text-right" style="width:'.($colWidthSize['amount']).'%">';
			     //           	$tbl .=store_number_format($previous_due);
			     //           	$tbl .='</td>';
			     //           $tbl .='</tr>';

			     //           $tbl .='<tr nobr="true">
			     //           	<td colspan="'.((!$show_tax)?4:6).'" style="width:'.($sumOfWidth-$colWidthSize['amount']-$colWidthSize['disc']-$colWidthSize['tax_amt']).'%">';
			     //           	$tbl .='';
			     //           	$tbl .='</td>
			     //           	<td colspan="2" class="text-right" style="width:'.($colWidthSize['disc']+$colWidthSize['tax_amt']).'%">';
			     //           	$tbl .=$this->CI->lang->line("total_due");
			     //           	$tbl .='</td>
			     //           	<td colspan="1" class="text-right" style="width:'.($colWidthSize['amount']).'%">';
			     //           	$tbl .=store_number_format($total_due);
			     //           	$tbl .='</td>';
			     //           $tbl .='</tr>';
		      //      	}
		          //  	$tbl .='<tr nobr="true">
		          //      	<td colspan="'.((!$show_tax)?7:9).'" style="width:'.($sumOfWidth).'%; height:30px;">';
		          //      	$tbl .="<b>".$this->CI->lang->line("note")."</b>: ".nl2br($sales->sales_note);
		          //      	$tbl .='</td>';
		          //      $tbl .='</tr>';


		            $tbl .='</tbody>
		        </table>
		       
		        ';	
		        
		 //finance section
		 if($sales->finance_id)
		 {
		      $tbl .='<table></table>';
		     $tbl .='<br/>';    
		     $financeName = $this->CI->db->query("SELECT finance_name FROM `db_finance` WHERE id='$sales->finance_id'")->row()->finance_name;
		     $tbl .='<table style="margin-top:5px;">
		 	    <thead>
		 	    <tr>
		 	        <th class="text-bold">'.$this->CI->lang->line("finance_name").'</th>
		 	        <th class="text-bold">'.$this->CI->lang->line("finance_amount").'</th>
		 	        <th class="text-bold">'.$this->CI->lang->line("total_emi_month").'</th>
		 	        <th class="text-bold">'.$this->CI->lang->line("emi_per_month").'</th>
		 	    </tr>
		 	    </thead>
				<tbody>
					<tr>
						<td>'.$financeName.'</td>
						<td>'.$sales->finance_amount.'</td>
						<td>'.$sales->total_emi_month.'</td>
						<td>'.$sales->emi_per_month.'</td>
					</tr>					
				</tbody>
			</table>'; 
		 }
		
		$tbl .='<table nobr="true">
		            <tbody>
		                <tr nobr="true">
		                    <td colspan="12"><div style="font-size:10px;"><span style="color:rgb(65, 59, 212);font-style:italic;">'.$this->CI->lang->line("termsAndConditions").':</span><br>';
		                        	$tbl .=nl2br(html_entity_decode($sales->invoice_terms));
		                    		$tbl .='</div>
		                    		</td>
		                    <td colspan="6" style="vertical-align:bottom;text-align:center;min-height:60px;height:60px;"><div style="font-size:10px;"><span style="color:rgb(65, 59, 212);font-style:italic;vertical-align:bottom;">'.$this->CI->lang->line("authorised_signatory").':</span></div>
		                    		</td>
		                </tr>
		                
		            </tbody>
		        </table>
		       
		        ';

			$tbl .='<table nobr="true">
				<tbody>
					<tr nobr="true">
						<td colspan="12"><div style="font-size:10px;"><span style="color:rgb(65, 59, 212);font-style:italic;">'.$this->CI->lang->line("note").':</span><br>';
								$tbl .=$sales->sales_note;
								$tbl .='</div>
								</td>						
					</tr>					
				</tbody>
			</table>		   
			';
			
	   // echo $tbl;
	   // die;

		      //  echo $tbl;exit;
		$this->writeHTMLCell('', '', $x ='', $y='', $tbl, 0, 1, 1, true, 'J', true);

		$this->Output('invoice_100.pdf', 'I');
	}

}

