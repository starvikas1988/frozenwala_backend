<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sales_return_model extends CI_Model {
	//Datatable start
	var $table = 'db_salesreturn as a';
	var $column_order = array( 
								'a.id',
								'a.return_date',
								'c.sales_code',
								'a.return_code',
								'a.return_status',
								'a.reference_no',
								'b.customer_name',
								'a.grand_total',
								'a.paid_amount',
								'a.payment_status',
								'a.created_by',
								'a.pos',
								'a.store_id'
								); //set column field database for datatable orderable
	var $column_search = array( 
								'a.id',
								'a.return_date',
								'c.sales_code',
								'a.return_code',
								'a.return_status',
								'a.reference_no',
								'b.customer_name',
								'a.grand_total',
								'a.paid_amount',
								'a.payment_status',
								'a.created_by',
								'a.pos',
								'a.store_id'
								); //set column field database for datatable searchable 
	var $order = array('a.id' => 'desc'); // default order  

	public function __construct()
	{
		parent::__construct();
		$CI =& get_instance();
	}

	private function _get_datatables_query()
	{
		
		$this->db->select($this->column_order);
		$this->db->from($this->table);
		$this->db->join('db_customers as b','b.id=a.customer_id','left');
		$this->db->join('db_sales as c','c.id=a.sales_id','left');

		/*If warehouse selected*/
		$warehouse_id = $this->input->post('warehouse_id');
		if(!empty($warehouse_id)){
			$this->db->join('db_warehouse as w','w.id='.$warehouse_id,'left');
			$this->db->where('a.warehouse_id',$warehouse_id);
		}

		if(!is_admin()){
	      	if($this->session->userdata('role_id')!='2'){
	      		if(!permissions('show_all_users_sales_return_invoices')){
	      			$this->db->where("upper(a.created_by)",strtoupper($this->session->userdata('inv_username')));
	      		}
	      	}
	      }

		/*if(!is_admin()){*/
	      $this->db->where("a.store_id",get_current_store_id());
	    /*}*/

		$i = 0;
	
		foreach ($this->column_search as $item) // loop column 
		{
			if($_POST['search']['value']) // if datatable send POST for search
			{
				
				

				if($i===0) // first loop
				{
					$this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.

					$this->db->like($item, $_POST['search']['value']);

				}
				else
				{
					$this->db->or_like($item, $_POST['search']['value']);
				}

				


				if(count($this->column_search) - 1 == $i) //last loop
					$this->db->group_end(); //close bracket
			}
			$i++;
		}
		
		if(isset($_POST['order'])) // here order processing
		{
			$this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} 
		else if(isset($this->order))
		{
			$order = $this->order;
			$this->db->order_by(key($order), $order[key($order)]);
		}
	}

	function get_datatables()
	{
		$this->_get_datatables_query();
		if($_POST['length'] != -1)
		$this->db->limit($_POST['length'], $_POST['start']);
		$query = $this->db->get();
		return $query->result();
	}

	function count_filtered()
	{
		$this->_get_datatables_query();
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function count_all()
	{
		$this->db->where("store_id",get_current_store_id());
		$this->db->from($this->table);
		return $this->db->count_all_results();
	}
	//Datatable end

	public function xss_html_filter($input){
		return $this->security->xss_clean(html_escape($input));
	}

	//Save Sales
	public function verify_save_and_update(){
		//Filtering XSS and html escape from user inputs 
		extract($this->xss_html_filter(array_merge($this->data,$_POST,$_GET)));
		//echo "<pre>";print_r($this->xss_html_filter(array_merge($this->data,$_POST,$_GET)));exit();
		
		//varify max sales usage of the package subscription
		validate_package_offers('max_invoices','db_salesreturn');
		//END

		$this->db->trans_begin();
		$return_date=system_fromatted_date($return_date);

		if($other_charges_input=='' || $other_charges_input==0){$other_charges_input=null;}
	    if($other_charges_tax_id=='' || $other_charges_tax_id==0){$other_charges_tax_id=null;}
	    if($other_charges_amt=='' || $other_charges_amt==0){$other_charges_amt=null;}
	    if($discount_to_all_input=='' || $discount_to_all_input==0){$discount_to_all_input=null;}
	    if($tot_discount_to_all_amt=='' || $tot_discount_to_all_amt==0){$tot_discount_to_all_amt=null;}
	    if($tot_round_off_amt=='' || $tot_round_off_amt==0){$tot_round_off_amt=null;}
	    $sales_id = (isset($sales_id)&&!empty($sales_id)) ? $sales_id : null;

	    //If you are editing the return products.
	    if(isset($return_id) && !empty($return_id)){
			//$previous_return=$this->db->query("select item_id,return_qty from db_salesitemsreturn where return_id=".$return_id);
		}

		//Get coupon details
	    $customer_coupon_id = null;
	    if(!empty($coupon_code)){
	    	$coupon_details = get_customer_coupon_details_by_coupon_code($coupon_code);
	    	
		    if($coupon_details->num_rows()>0){
		    	if($coupon_details->row()->customer_id==$customer_id){
		    		$customer_coupon_id = $coupon_details->row()->id;		
		    	}
		    }
	    }
	    
	    $sales_entry_init = array(
		    				'coupon_id' 				=> $customer_coupon_id,
		    				'coupon_amt' 				=> $coupon_discount_amt,
	    					);



		$prev_item_ids = array();

	    if($command=='save' || $command=='create'){//Create sales code unique if first time entry

		    
			$this->db->query("ALTER TABLE db_salesreturn AUTO_INCREMENT = 1");
			
		    $sales_entry = array(
		    				'sales_id' 		=> $sales_id,
		    				'count_id' 					=> get_count_id('db_salesreturn'),
		    				'return_code' 				=> $return_code,  
		    				'reference_no' 				=> $reference_no, 
		    				'return_date' 				=> $return_date,
		    				'return_status' 			=> $return_status,
		    				'customer_id' 				=> $customer_id,
		    				/*'warehouse_id' 				=> $warehouse_id,*/
		    				/*Other Charges*/
		    				'other_charges_input' 		=> $other_charges_input,
		    				'other_charges_tax_id' 		=> $other_charges_tax_id,
		    				'other_charges_amt' 		=> $other_charges_amt,
		    				/*Discount*/
		    				'discount_to_all_input' 	=> $discount_to_all_input,
		    				'discount_to_all_type' 		=> $discount_to_all_type,
		    				'tot_discount_to_all_amt' 	=> $tot_discount_to_all_amt,
		    				/*Subtotal & Total */
		    				'subtotal' 					=> $tot_subtotal_amt,
		    				'round_off' 				=> $tot_round_off_amt,
		    				'grand_total' 				=> $tot_total_amt,
		    				'return_note' 				=> $return_note,
		    				/*System Info*/
		    				'created_date' 				=> $CUR_DATE,
		    				'created_time' 				=> $CUR_TIME,
		    				'created_by' 				=> $CUR_USERNAME,
		    				'system_ip' 				=> $SYSTEM_IP,
		    				'system_name' 				=> $SYSTEM_NAME,
		    				'status' 					=> 1,
		    			);
		    $sales_entry['store_id']=(store_module() && is_admin()) ? $store_id : get_current_store_id();  
		    $sales_entry['warehouse_id']=(warehouse_module() && warehouse_count()>1) ? $warehouse_id : get_store_warehouse_id();	
			$q1 = $this->db->insert('db_salesreturn', array_merge($sales_entry,$sales_entry_init));

			$return_id = $this->db->insert_id();
		}
		else if($command=='update'){	
			$sales_entry = array(
							'sales_id' 		=> $sales_id,
							'return_code' 				=> $return_code, 
		    				'reference_no' 				=> $reference_no, 
		    				'return_date' 			=> $return_date,
		    				'return_status' 			=> $return_status,
		    				'customer_id' 				=> $customer_id,
		    				/*'warehouse_id' 				=> $warehouse_id,*/
		    				/*Other Charges*/
		    				'other_charges_input' 		=> $other_charges_input,
		    				'other_charges_tax_id' 		=> $other_charges_tax_id,
		    				'other_charges_amt' 		=> $other_charges_amt,
		    				/*Discount*/
		    				'discount_to_all_input' 	=> $discount_to_all_input,
		    				'discount_to_all_type' 		=> $discount_to_all_type,
		    				'tot_discount_to_all_amt' 	=> $tot_discount_to_all_amt,
		    				/*Subtotal & Total */
		    				'subtotal' 					=> $tot_subtotal_amt,
		    				'round_off' 				=> $tot_round_off_amt,
		    				'grand_total' 				=> $tot_total_amt,
		    				'return_note' 			=> $return_note,
		    			);
			$sales_entry['store_id']=(store_module() && is_admin()) ? $store_id : get_current_store_id();  	
			$sales_entry['warehouse_id']=(warehouse_module() && warehouse_count()>1) ? $warehouse_id : get_store_warehouse_id();
			$q1 = $this->db->where('id',$return_id)->update('db_salesreturn', array_merge($sales_entry,$sales_entry_init));

			##############################################START
			//FIND THE PREVIOUSE ITEM LIST ID'S
			$prev_item_ids = $this->db->select("item_id")->from("db_salesitemsreturn")->where("return_id",$return_id)->get()->result_array();
			##############################################END

			$q11=$this->db->query("delete from db_salesitemsreturn where return_id='$return_id'");
			if(!$q11){
				return "failed";
			}
		}
		//end

		/*if(isset($return_id) && isset($previous_return)){
			foreach ($previous_return->result() as $row){
					if(!empty($sales_id)){
			         $this->adjust_sales_item($sales_id,$row->item_id,$row->return_qty,'add_qty_in_update_mode');
					}
			}
		}*/

		//Import post data from form
		for($i=1;$i<=$rowcount;$i++){
		
			if(isset($_REQUEST['tr_item_id_'.$i]) && !empty($_REQUEST['tr_item_id_'.$i])){

				$item_id 			=$this->xss_html_filter(trim($_REQUEST['tr_item_id_'.$i]));
				$return_qty			=$this->xss_html_filter(trim($_REQUEST['td_data_'.$i.'_3']));
				$price_per_unit 	=$this->xss_html_filter(trim($_REQUEST['td_data_'.$i.'_4']));
				$tax_id 			=$this->xss_html_filter(trim($_REQUEST['td_data_'.$i.'_15']));
				$tax_amt 			=$this->xss_html_filter(trim($_REQUEST['td_data_'.$i.'_11']));
				$unit_total_cost	=$this->xss_html_filter(trim($_REQUEST['td_data_'.$i.'_10']));
				////$discount_input	=$this->xss_html_filter(trim($_REQUEST['td_data_'.$i.'_8']));
				$total_cost			=$this->xss_html_filter(trim($_REQUEST['td_data_'.$i.'_9']));
               // $discount_input  =(empty($discount_input)) ? 0 : $discount_input;
				//$discount_amt 		=($return_qty * $unit_total_cost)*$discount_input/100;
				$unit_tax			=$this->xss_html_filter(trim($_REQUEST['tr_tax_value_'.$i]));
				$description		=$this->xss_html_filter(trim($_REQUEST['description_'.$i]));

				$tax_type			=$this->xss_html_filter(trim($_REQUEST['tr_tax_type_'.$i]));
				$discount_type 		=$this->xss_html_filter(trim($_REQUEST['item_discount_type_'.$i]));
				$discount_input 	=$this->xss_html_filter(trim($_REQUEST['item_discount_input_'.$i]));
				$discount_amt	    =$this->xss_html_filter(trim($_REQUEST['td_data_'.$i.'_8']));//Amount
				
				$discount_amt_per_unit = $discount_amt/$return_qty;
				if($tax_type=='Exclusive'){
					$single_unit_total_cost = $price_per_unit + ($unit_tax * $price_per_unit / 100);
				}
				else{//Inclusive
					$single_unit_total_cost =$price_per_unit;
				}
				$single_unit_total_cost -=$discount_amt_per_unit;


				
				

				if($tax_id=='' || $tax_id==0){$tax_id=null;}
				if($tax_amt=='' || $tax_amt==0){$tax_amt=null;}
				if($discount_input=='' || $discount_input==0){$discount_input=null;}
				//if($unit_total_cost=='' || $unit_total_cost==0){$unit_total_cost=null;}
				if($total_cost=='' || $total_cost==0){$total_cost=null;}
				
				$item_details = get_item_details($item_id);
				$purchase_price = $item_details->purchase_price;

			
				$salesitems_entry = array(
		    				'sales_id' 			=> $sales_id,
		    				'return_id' 		=> $return_id, 
		    				'return_status'		=> $return_status, 
		    				'item_id' 			=> $item_id, 
		    				'description' 		=> $description, 
		    				'return_qty' 		=> $return_qty,
		    				'price_per_unit' 	=> $price_per_unit,
		    				'tax_id' 			=> $tax_id,
		    				'tax_amt' 			=> $tax_amt,
		    				'tax_type' 			=> $tax_type,
		    				'discount_input' 	=> $discount_input,
		    				'discount_amt' 		=> $discount_amt,
		    				'discount_type' 	=> $discount_type,
		    				'unit_total_cost' 	=> $single_unit_total_cost,
		    				'total_cost' 		=> $total_cost,
		    				'purchase_price' 	=> $purchase_price,
		    				'status'	 		=> 1,


		    			);
				$salesitems_entry['store_id']=(store_module() && is_admin()) ? $store_id : get_current_store_id();  	
				$q2 = $this->db->insert('db_salesitemsreturn', $salesitems_entry);
				
				/*Find the Item Exist in sales entry or not*/
				//$this->adjust_sales_item($sales_id,$item_id,$return_qty,$command);

				//UPDATE itemS QUANTITY IN itemS TABLE
				$this->load->model('pos_model');				
				$q6=$this->pos_model->update_items_quantity($item_id);
				if(!$q6){
					return "failed";
				}
				
			}
		
		}//for end

		if($amount=='' || $amount==0){$amount=null;}
		if($amount>0 && !empty($payment_type)){

			if($amount>$tot_total_amt){
				echo "Payble amount should not be exceeds Invoice Amount!!";exit;
			}

			/**
			 * @update
			 * Verifieng previous and current payment total with invoice amount
			*/
			if($command=='update'){
				$tot_payment = $this->db->select('coalesce(sum(payment),0) as payment')->where('return_id',$return_id)->get('db_salespaymentsreturn')->row()->payment;
				if(($tot_payment+$amount)>$tot_total_amt){
					echo "Payble amount should not be exceeds Invoice Amount!!\nPlease check previous payments as well.";exit;
				}
			}

			
			$payment_code=get_init_code('sales_return_payment');
			$salespayments_entry = array(
					'payment_code' 		=> $payment_code,
		    		'count_id'	  		=> get_count_id('db_salespaymentsreturn'),
					'sales_id' 			=> $sales_id,
					'return_id' 		=> $return_id, 
					'payment_date'		=> $return_date,//Current Payment with sales entry
					'payment_type' 		=> $payment_type,
					'payment' 			=> $amount,
					'payment_note' 		=> $payment_note,
					'created_date' 		=> $CUR_DATE,
    				'created_time' 		=> $CUR_TIME,
    				'created_by' 		=> $CUR_USERNAME,
    				'system_ip' 		=> $SYSTEM_IP,
    				'system_name' 		=> $SYSTEM_NAME,
    				'status' 			=> 1,
    				'account_id' 		=> (empty($account_id)) ? null : $account_id,
    				'customer_id' 		=> $customer_id,
				);
			$salespayments_entry['store_id']=(store_module() && is_admin()) ? $store_id : get_current_store_id();  	
			$q3 = $this->db->insert('db_salespaymentsreturn', $salespayments_entry);
			//echo $account_id;exit;
			//Set the payment to specified account
			if(!empty($account_id)){
				//ACCOUNT INSERT
				$insert_bit = insert_account_transaction(array(
															'transaction_type'  	=> 'SALES PAYMENT RETURN',
															'reference_table_id'  	=> $this->db->insert_id(),
															'debit_account_id'  	=> $account_id,
															'credit_account_id'  	=> null,
															'debit_amt'  			=> $amount,
															'credit_amt'  			=> 0,
															'process'  				=> 'SAVE',
															'note'  				=> $payment_note,
															'transaction_date'  	=> $CUR_DATE,
															'payment_code'  		=> $payment_code,
															'customer_id'  			=> $customer_id,
															'supplier_id'  			=> null,
													));
				if(!$insert_bit){
					return "failed";
				}
			}
			//end
			

		}
		

		if(isset($sales_id) && !empty($sales_id)){
			$this->db->set('return_bit',1)->where('id',$sales_id)->update('db_sales');
		}

		$q10=$this->update_sales_payment_status($return_id,$customer_id);
		if($q10!=1){
			return "failed";
		}

		$sms_info='';
		if(isset($send_sms) && $customer_id!=1){
			if(send_sms_using_template($return_id,2)==true){
				$sms_info = 'SMS Has been Sent!';
			}else{
				$sms_info = 'Failed to Send SMS';
			}
		}

		##############################################START
		//FIND THE PREVIOUSE ITEM LIST ID'S
		$curr_item_ids = $this->db->select("item_id")->from("db_salesitemsreturn")->where("return_id",$return_id)->get()->result_array();
		$two_array = array_merge($prev_item_ids,$curr_item_ids);

		/*Update items in all warehouses of the item*/
		$q7=update_warehouse_items($two_array);
		if(!$q7){
			return "failed";
		}
		##############################################END

		$this->db->trans_commit();
		$this->session->set_flashdata('success', 'Success!! Record Saved Successfully! '.$sms_info);
		return "success<<<###>>>$return_id";
		
	}//verify_save_and_update() function end



	function update_sales_payment_status_by_sales_id($return_id,$customer_id){
	//UPDATE PRODUCTS QUANTITY IN PRODUCTS TABLE
		
		$q8=$this->db->query("select COALESCE(SUM(payment),0) as payment from db_salespaymentsreturn where return_id='$return_id'");
		$sum_of_payments=$q8->row()->payment;

		$q9=$this->db->query("select coalesce(sum(grand_total),0) as total from db_salesreturn where id='$return_id'");
		$payble_total=$q9->row()->total;
		
		$pending_amt=$payble_total-$sum_of_payments;

		$payment_status='';
		if($payble_total==$sum_of_payments){
			$payment_status="Paid";
		}
		else if($sum_of_payments!=0 && ($sum_of_payments<$payble_total)){
			$payment_status="Partial";
		}
		else if($sum_of_payments==0){
			$payment_status="Unpaid";
		}

		$q7=$this->db->query("update db_salesreturn set 
							payment_status='$payment_status',
							paid_amount=$sum_of_payments 
							where id='$return_id'");

		
		
		$q12 = $this->db->query("update db_customers set sales_return_due=(select COALESCE(SUM(grand_total),0)-COALESCE(SUM(paid_amount),0) from db_salesreturn where customer_id='$customer_id') where id=$customer_id");
		if(!$q7)
		{
			return false;
		}
		else{
			return true;
		}

	}

	function update_sales_payment_status($return_id=null,$customer_id=null){
	//UPDATE PRODUCTS QUANTITY IN PRODUCTS TABLE

		if(empty($return_id)){ //If sales ID not exist you need setup all the customers sales due
			$q11=$this->db->query("select id from db_customers");
			if($q11->num_rows()>0){
				foreach ($q11->result() as $res) {
					$q12=$this->db->query("select id from db_salesreturn where customer_id=".$res->id);
					if($q12->num_rows()>0){
						foreach ($q12->result() as $res12) {
							if(!$this->update_sales_payment_status_by_sales_id($res12->id,$res->id)){
								return false;
							}
						}
					}
					else{
						$q13=$this->db->query("update db_customers set sales_return_due=0 where id=".$res->id);
						if(!$q13){
							return false;
						}
					}
				}
			}
			return true;
		}
		else{
					if(!$this->update_sales_payment_status_by_sales_id($return_id,$customer_id)){
						return false;
					}
					return true;
		}
	}


	//Get sales_details
	public function get_details($id,$data){
		//Validate This sales already exist or not
		$query=$this->db->query("select * from db_sales where upper(id)=upper('$id')");
		if($query->num_rows()==0){
			show_404();exit;
		}
		else{
			$query=$query->row();
			$data['q_id']=$query->id;
			$data['item_code']=$query->item_code;
			$data['item_name']=$query->item_name;
			$data['category_name']=$query->category_name;
			$data['hsn']=$query->hsn;
			$data['unit_name']=$query->unit_name;
			$data['available_qty']=$query->available_qty;
			$data['alert_qty']=$query->alert_qty;
			$data['sales_price']=$query->sales_price;
			$data['sales_price']=$query->sales_price;
			$data['gst_percentage']=$query->gst_percentage;
			
			return $data;
		}
	}
	public function update_sales($data){
		//Validate This sales already exist or not
		$this->db->trans_begin();
		extract($this->xss_html_filter($data));
		$query=$this->db->query("select * from db_sales where upper(item_name)=upper('$item_name') and id<>$q_id");
		if($query->num_rows()>0){
			return "This sales Name already Exist.";
		}
		else{
			///Find category_id
			$query2="select id from db_category where category_name='$category_name'";
			$category_id=$this->db->query($query2)->row()->id;
			$query1="update db_sales set 
						sales_price='$sales_price',
						sales_price='$sales_price',
						item_name='$item_name',
						category_name='$category_name',
						category_id='$category_id',
						hsn='$hsn',
						alert_qty='$alert_qty',
						unit_name='$unit_name',
						gst_percentage='$gst_percentage' where id=$q_id";
						
			if ($this->db->simple_query($query1)){
				   $this->db->trans_commit();
			        return "success";
			}
			else{
					$this->db->trans_rollback();
			        return "failed";
			}
		}
	}
	public function update_status($id,$status){
		
        $query1="update db_salesreturn set status='$status' where id=$id";
        if ($this->db->simple_query($query1)){
            echo "success";
        }
        else{
            echo "failed";
        }
	}

	public function update_return_bit(){

		$q1=$this->db->query("SELECT COUNT(*) AS tot_sales_ids,sales_id FROM db_salesreturn  GROUP BY sales_id");

		/*Reset to null*/
		$this->db->set('return_bit',null)->update('db_sales');

		foreach ($q1->result() as $res) {
			if(!empty($res->sales_id)){
				$this->db->set('return_bit',1)->where('id',$res->sales_id)->update('db_sales');
			}
		}
	}
	
	public function delete_return($ids){
      	$this->db->trans_begin();
      	//ACCOUNT RESET
		$reset_accounts = $this->db->select("debit_account_id,credit_account_id")
									->where("ref_salespaymentsreturn_id in ($ids)")
									->group_by("debit_account_id,credit_account_id")
									->get("ac_transactions");
		//ACCOUNT RESET END

      	##############################################START
		//FIND THE PREVIOUSE ITEM LIST ID'S
		$prev_item_ids = $this->db->select("item_id")->from("db_salesitemsreturn")->where("return_id in ($ids)")->get()->result_array();
		##############################################END

		//find customer list group by
		$this->db->select("customer_id,id as return_id");
		$this->db->where("id in ($ids)");
		$this->db->where("store_id",get_current_store_id());
		$this->db->group_by("customer_id");
		$customer_records=$this->db->get("db_salesreturn");
		//end

		

      	//If you are editing the return products.
		/*$q1=$this->db->query("select item_id,return_qty,sales_id from db_salesitemsreturn where return_id in($ids)");
		if($q1->num_rows()>0){
			foreach ($q1->result() as $row){
					
					if(!empty($row->sales_id)){
			         $this->adjust_sales_item($row->sales_id,$row->item_id,$row->return_qty,'add_qty_in_update_mode');
					}
			}
		}*/
			#----------------------------------
			$this->db->where("id in ($ids)");
			//if not admin
			if(!is_admin()){
				$this->db->where("store_id",get_current_store_id());
			}

			$q3=$this->db->delete("db_salesreturn");
			#----------------------------------
			
		$item_ids_first = get_in_comma_delimited($prev_item_ids);


		$q6=$this->db->query("select id from db_items where id in ('".$item_ids_first."')");
		if($q6->num_rows()>0){
			$this->load->model('pos_model');				
			foreach ($q6->result() as $res6) {
				$q6=$this->pos_model->update_items_quantity($res6->id);
				if(!$q6){
					return "failed";
				}
			}
		}
		
		$this->update_return_bit();


		if($customer_records->num_rows()>0){
        	foreach ($customer_records->result() as $res) {
        		if(!$this->update_sales_payment_status($res->return_id,$res->customer_id)){
		        	return 'failed';
		        }

        	}        		
        }


		##############################################START
		/*Update items in all warehouses of the item*/
		$q7=update_warehouse_items($prev_item_ids);
		if(!$q7){
			return "failed";
		}
		##############################################END
		
		//ACCOUNT RESET
        if($reset_accounts->num_rows()>0){
        	foreach ($reset_accounts->result() as $res1) {
        		if(!update_account_balance($res1->debit_account_id)){
					return 'failed';
				}

				if(!update_account_balance($res1->credit_account_id)){
					return 'failed';
				}

        	}
        }
        //ACCOUNT RESET END

		$this->db->trans_commit();
		return "success";
	}
	public function search_item($q){
		$json_array=array();
        $query1="select id,item_name from db_items where (upper(item_name) like upper('%$q%') or upper(item_code) like upper('%$q%'))";

        $q1=$this->db->query($query1);
        if($q1->num_rows()>0){
            foreach ($q1->result() as $value) {
            	$json_array[]=['id'=>(int)$value->id, 'text'=>$value->item_name];
            }
        }
        return json_encode($json_array);
	}
	
	public function find_item_details($id){
		$json_array=array();
        $query1="select id,hsn,alert_qty,unit_name,sales_price,sales_price,gst_percentage,available_qty from db_items where id=$id";

        $q1=$this->db->query($query1);
        if($q1->num_rows()>0){
            foreach ($q1->result() as $value) {
            	$json_array=['id'=>$value->id, 
        			 'hsn'=>$value->hsn,
        			 'alert_qty'=>$value->alert_qty,
        			 'unit_name'=>$value->unit_name,
        			 'sales_price'=>$value->sales_price,
        			 'sales_price'=>$value->sales_price,
        			 'gst_percentage'=>$value->gst_percentage,
        			 'available_qty'=>$value->available_qty,
        			];
            }
        }
        return json_encode($json_array);
	}

	



	
	/*v1.1*/
	public function inclusive($price='',$tax_per){
		return ($tax_per!=0) ? $price/(($tax_per/100)+1)/10 : $tax_per;
	}
	public function get_items_info($rowcount,$item_id){

		$sales_id = $_POST['sales_id'];//empty or value

	    //Find the selected item exist or not in sales entry
	    $invoice_sales_qty=0;
	    if(!empty($sales_id)){
	    $invoice_sales_qty=$this->db->query("select coalesce(sum(sales_qty),0) as sales_qty from db_salesitems where item_id=$item_id and sales_id=$sales_id")->row()->sales_qty;
	      if($invoice_sales_qty==0){
	        return 'item_not_exist';
	        //return "Sorry! This Item Not exist in this sales Entry!!";
	      }
	    }

		$res1=$this->db->select('*')->from('db_items')->where("id=$item_id")->get()->row();
		
		$q3=$this->db->query("select * from db_tax where id=".$res1->tax_id)->row();

		$item_tax_amt = ($res1->tax_type=='Inclusive') ? calculate_inclusive($res1->sales_price,$q3->tax) :calculate_exclusive($res1->sales_price,$q3->tax);

			
			$info = array(
							'item_tax' 					=> $q3->tax, 
							'item_tax_name' 			=> $q3->tax_name, 
							'item_name' 				=> $res1->item_name,
							'item_price' 				=> $res1->price, 
							'item_available_qty' 		=> ($invoice_sales_qty!=0) ? $invoice_sales_qty : $res1->stock,
							'item_id' 					=> $res1->id, 
							'item_sales_price' 			=> $res1->sales_price, 
							'item_tax_id' 				=> $q3->id, 
							'item_sales_qty' 			=> 1, 
							'description' 				=> '', 
							'item_tax_type' 			=> $res1->tax_type, 
							'item_tax_amt' 				=> $item_tax_amt, 
							'item_discount' 			=> 0, 
							'item_discount_type' 		=> $res1->discount_type, 
							'item_discount_input' 		=> $res1->discount, 
						);
			

		$this->return_row_with_data($rowcount,$info);
	}

	/* For Sales Items List Retrieve*/
	public function sales_list($sales_id){
		$q1=$this->db->select('*')->from('db_salesitems')->where("sales_id=$sales_id")->get();
		$rowcount =1;
		foreach ($q1->result() as $res1) {
			$res2=$this->db->query("select * from db_items where id=".$res1->item_id)->row();
			$q3=$this->db->query("select * from db_tax where id=".$res1->tax_id)->row();
			
			$info = array(
							'item_tax' 					=> $q3->tax, 
							'item_tax_name' 			=> $q3->tax_name, 
							'item_name' 				=> $res2->item_name,
							'item_price' 				=> $res2->price, 
							'item_available_qty' 		=> $res1->sales_qty,
							'item_id' 					=> $res1->item_id, 
							'item_sales_price' 			=> $res1->price_per_unit, 
							'item_tax_id' 				=> $res1->tax_id, 
							'item_sales_qty' 			=> $res1->sales_qty, 
							'description' 				=> $res1->description, 
							'item_tax_type' 			=> $res1->tax_type, 
							'item_tax_amt' 				=> $res1->tax_amt, 
							'item_discount' 			=> $res1->discount_input, 
							'item_discount_type' 		=> $res1->discount_type, 
							'item_discount_input' 		=> $res1->discount_input, 
						);
			
			


			$result = $this->return_row_with_data($rowcount++,$info);
		}
		return $result;
	}

	/* For Return Items List Retrieve*/
	public function return_sales_list($return_id){
		$q1=$this->db->select('*')->from('db_salesitemsreturn')->where("return_id=$return_id")->get();
		$rowcount =1;
		foreach ($q1->result() as $res1) {
			$q2=$this->db->query("select item_name,stock,tax_type,price,sales_price from db_items where id=".$res1->item_id);
			$q3=$this->db->query("select * from db_tax where id=".$res1->tax_id)->row();
			
			
			/*Find the sales qty and Item Stock Qty*/
			$item_sales_qty=0;
			 if(!empty($res1->sales_id)) { 
		 	$item_sales_qty = $this->db->query("select coalesce(sales_qty,0) as sales_qty from db_salesitems where sales_id=".$res1->sales_id.' and item_id='.$res1->item_id)->row()->sales_qty ;
		 	} 
			$item_stock_qty = $this->db->query("select coalesce(stock,0) as stock from db_items where id=".$res1->item_id)->row()->stock;
			/*end*/
			
			//$info['item_available_qty'] = ($item_stock_qty<$item_sales_qty) ? $item_stock_qty+$res1->return_qty : $item_sales_qty+$res1->return_qty;	
			//NEW
			$item_available_qty = (!empty($res1->sales_id)) ? $item_sales_qty : $item_stock_qty+$res1->return_qty;


			$info = array(
							'item_tax' 					=> $q3->tax, 
							'item_tax_name' 			=> $q3->tax_name, 
							'item_name' 				=> $q2->row()->item_name,
							'item_price' 				=> $q2->row()->price, 
							'item_available_qty' 		=> $item_available_qty,
							'item_id' 					=> $res1->item_id, 
							'item_sales_price' 			=> $res1->price_per_unit, 
							'item_tax_id' 				=> $res1->tax_id, 
							'item_sales_qty' 			=> $res1->return_qty, 
							'description' 				=> $res1->description, 
							'item_tax_type' 			=> $res1->tax_type, 
							'item_tax_amt' 				=> $res1->tax_amt, 
							'item_discount' 			=> $res1->discount_input, 
							'item_discount_type' 		=> $res1->discount_type, 
							'item_discount_input' 		=> $res1->discount_input, 
						);

			
			$result = $this->return_row_with_data($rowcount++,$info);
		}
		return $result;
	}


	public function return_row_with_data($rowcount,$info){
		extract($info);
		$item_amount = ($item_sales_price * $item_sales_qty) + $item_tax_amt;
		?>
            <tr id="row_<?=$rowcount;?>" data-row='<?=$rowcount;?>'>
               <td id="td_<?=$rowcount;?>_1">
                  <!-- item name  -->
                  <label class='form-control' style='height:auto;' data-toggle="tooltip" title='Edit ?' >
                  <a id="td_data_<?=$rowcount;?>_1" href="javascript:void(0)" onclick="show_sales_item_modal(<?=$rowcount;?>)" title=""><?=$item_name;?></a> 
                  		<i onclick="show_sales_item_modal(<?=$rowcount;?>)" class="fa fa-edit pointer"></i>
                  	</label>
               </td>
               <!-- Qty -->
               <td id="td_<?=$rowcount;?>_3">
                  <div class="input-group ">
                     <span class="input-group-btn">
                     <button onclick="decrement_qty(<?=$rowcount;?>)" type="button" class="btn btn-default btn-flat"><i class="fa fa-minus text-danger"></i></button></span>
                     <input typ="text" value="<?=format_qty($item_sales_qty);?>" class="form-control no-padding text-center" onkeyup="calculate_tax(<?=$rowcount;?>)" id="td_data_<?=$rowcount;?>_3" name="td_data_<?=$rowcount;?>_3">
                     <span class="input-group-btn">
                     <button onclick="increment_qty(<?=$rowcount;?>)" type="button" class="btn btn-default btn-flat"><i class="fa fa-plus text-success"></i></button></span>
                  </div>
               </td>
               
               <!-- Unit Cost -->
               <td id="td_<?=$rowcount;?>_10"><input type="text" name="td_data_<?=$rowcount;?>_10" id="td_data_<?=$rowcount;?>_10" class="form-control text-right no-padding only_currency text-center" onkeyup="calculate_tax(<?=$rowcount;?>)" value="<?=store_number_format($item_sales_price,0);?>"></td>

               <!-- Discount -->
               <td id="td_<?=$rowcount;?>_8">
                  <input type="text" data-toggle="tooltip" title="Click to Change" onclick="show_sales_item_modal(<?=$rowcount;?>)" name="td_data_<?=$rowcount;?>_8" id="td_data_<?=$rowcount;?>_8" class="pointer form-control text-right no-padding only_currency text-center item_discount" value="<?=store_number_format($item_discount,0);?>" onkeyup="calculate_tax(<?=$rowcount;?>)" readonly>
               </td>


               <!-- Tax Details -->
               <td id="td_<?=$rowcount;?>_12">
                  <label class='form-control ' style='width:100%;padding-left:0px;padding-right:0px;'>
                  <a id="td_data_<?=$rowcount;?>_12" href="javascript:void(0)" data-toggle="tooltip" title='Click to Change' onclick="show_sales_item_modal(<?=$rowcount;?>)" title=""><?=$item_tax_name;?></a>
                  	</label>
               </td>

                <!-- Tax Amount -->
               <td id="td_<?=$rowcount;?>_11">
                  <input type="text" name="td_data_<?=$rowcount;?>_11" id="td_data_<?=$rowcount;?>_11" class="form-control text-right no-padding only_currency text-center" value="<?=store_number_format($item_tax_amt,0);?>" readonly>
               </td>

               <!-- Amount -->
               <td id="td_<?=$rowcount;?>_9"><input type="text" name="td_data_<?=$rowcount;?>_9" id="td_data_<?=$rowcount;?>_9" class="form-control text-right no-padding only_currency text-center" style="border-color: #f39c12;" readonly value="<?=store_number_format($item_amount,0);?>"></td>
               
               <!-- ADD button -->
               <td id="td_<?=$rowcount;?>_16" style="text-align: center;">
                  <a class=" fa fa-fw fa-minus-square text-red" style="cursor: pointer;font-size: 34px;" onclick="removerow(<?=$rowcount;?>)" title="Delete ?" name="td_data_<?=$rowcount;?>_16" id="td_data_<?=$rowcount;?>_16"></a>
               </td>
               <input type="hidden" id="td_data_<?=$rowcount;?>_4" name="td_data_<?=$rowcount;?>_4" value="<?=$item_sales_price;?>">
               <input type="hidden" id="td_data_<?=$rowcount;?>_15" name="td_data_<?=$rowcount;?>_15" value="<?=$item_tax_id;?>">
               <input type="hidden" id="td_data_<?=$rowcount;?>_5" name="td_data_<?=$rowcount;?>_5" value="<?=$item_tax_amt;?>">
               <input type="hidden" id="tr_available_qty_<?=$rowcount;?>_13" value="<?=$item_available_qty;?>">
               <input type="hidden" id="tr_item_id_<?=$rowcount;?>" name="tr_item_id_<?=$rowcount;?>" value="<?=$item_id;?>">

               <input type="hidden" id="tr_tax_type_<?=$rowcount;?>" name="tr_tax_type_<?=$rowcount;?>" value="<?=$item_tax_type;?>">
               <input type="hidden" id="tr_tax_id_<?=$rowcount;?>" name="tr_tax_id_<?=$rowcount;?>" value="<?=$item_tax_id;?>">
               <input type="hidden" id="tr_tax_value_<?=$rowcount;?>" name="tr_tax_value_<?=$rowcount;?>" value="<?=$item_tax;?>">
               <input type="hidden" id="description_<?=$rowcount;?>" name="description_<?=$rowcount;?>" value="<?=$description;?>">

               <input type="hidden" id="item_discount_type_<?=$rowcount;?>" name="item_discount_type_<?=$rowcount;?>" value="<?=$item_discount_type;?>">
               <input type="hidden" id="item_discount_input_<?=$rowcount;?>" name="item_discount_input_<?=$rowcount;?>" value="<?=store_number_format($item_discount_input,0);?>">

            </tr>
		<?php

	}
	public function delete_payment($payment_id){
        $this->db->trans_begin();
         //ACCOUNT RESET
		$reset_accounts = $this->db->select("debit_account_id,credit_account_id")
									->where("ref_salespaymentsreturn_id in ($payment_id)")
									->group_by("debit_account_id,credit_account_id")
									->get("ac_transactions");
		//ACCOUNT RESET END

		//$return_id = $this->db->query("select return_id from db_salespaymentsreturn where id=$payment_id")->row()->return_id;

		$returnpayments = $this->db->query("select return_id,customer_id from db_salespaymentsreturn where id=$payment_id")->row();
		$return_id = $returnpayments->return_id;
		$customer_id = $returnpayments->customer_id;



		$q1=$this->db->query("delete from db_salespaymentsreturn where id='$payment_id'");
		$q2=$this->update_sales_payment_status($return_id,$customer_id);

		//ACCOUNT RESET
        if($reset_accounts->num_rows()>0){
        	foreach ($reset_accounts->result() as $res1) {
        		if(!update_account_balance($res1->debit_account_id)){
					return 'failed';
				}

				if(!update_account_balance($res1->credit_account_id)){
					return 'failed';
				}

        	}
        }
        //ACCOUNT RESET END

		if($q1!=1 || $q2!=1)
		{
			$this->db->trans_rollback();
		    return "failed";
		}
		else{
			$this->db->trans_commit();
		        return "success";
		}
	}

	public function show_pay_now_modal($return_id){
		$q1=$this->db->query("select * from db_salesreturn where id=$return_id");
		$res1=$q1->row();
		$customer_id = $res1->customer_id;
		$q2=$this->db->query("select * from db_customers where id=$customer_id");
		$res2=$q2->row();

		$customer_name=$res2->customer_name;
	    $customer_mobile=$res2->mobile;
	    $customer_phone=$res2->phone;
	    $customer_email=$res2->email;
	    $customer_country=$res2->country_id;
	    $customer_state=$res2->state_id;
	    $customer_address=$res2->address;
	    $customer_postcode=$res2->postcode;
	    $customer_gst_no=$res2->gstin;
	    $customer_tax_number=$res2->tax_number;
	    $customer_opening_balance=$res2->opening_balance;

	    $return_date=$res1->return_date;
	    $reference_no=$res1->reference_no;
	    $return_code=$res1->return_code;
	    $return_note=$res1->return_note;
	    $grand_total=$res1->grand_total;
	    $paid_amount=$res1->paid_amount;
	    $due_amount =$grand_total - $paid_amount;

	    if(!empty($customer_country)){
	      $customer_country = $this->db->query("select country from db_country where id='$customer_country'")->row()->country;  
	    }
	    if(!empty($customer_state)){
	      $customer_state = $this->db->query("select state from db_states where id='$customer_state'")->row()->state;  
	    }

		?>
		<div class="modal fade" id="pay_now">
		  <div class="modal-dialog ">
		    <div class="modal-content">
		      <div class="modal-header header-custom">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title text-center"><?= $this->lang->line('payments'); ?></h4>
		      </div>
		      <div class="modal-body">
		        
		    <div class="row">
		      <div class="col-md-12">
		      	<div class="row invoice-info">
			        <div class="col-sm-4 invoice-col">
			          <?= $this->lang->line('customer_details'); ?>
			          <address>
			            <strong><?php echo  $customer_name; ?></strong><br>
			            <?php echo (!empty(trim($customer_mobile))) ? $this->lang->line('mobile').": ".$customer_mobile."<br>" : '';?>
			            <?php echo (!empty(trim($customer_phone))) ? $this->lang->line('phone').": ".$customer_phone."<br>" : '';?>
			            <?php echo (!empty(trim($customer_email))) ? $this->lang->line('email').": ".$customer_email."<br>" : '';?>
			            <?php echo (!empty(trim($customer_gst_no))) ? $this->lang->line('gst_number').": ".$customer_gst_no."<br>" : '';?>
			            <?php echo (!empty(trim($customer_tax_number))) ? $this->lang->line('tax_number').": ".$customer_tax_number."<br>" : '';?>
			          </address>
			        </div>
			        <!-- /.col -->
			        <div class="col-sm-4 invoice-col">
			          <?= $this->lang->line('sales_details'); ?>
			          <address>
			            <b><?= $this->lang->line('invoice'); ?> #<?php echo  $return_code; ?></b><br>
			            <b><?= $this->lang->line('date'); ?> :<?php echo show_date($return_date); ?></b><br>
			            <b><?= $this->lang->line('grand_total'); ?> :<?php echo $grand_total; ?></b><br>
			          </address>
			        </div>
			        <!-- /.col -->
			        <div class="col-sm-4 invoice-col">
			          <b><?= $this->lang->line('paid_amount'); ?> :<span><?php echo number_format($paid_amount,decimals(),'.',''); ?></span></b><br>
			          <b><?= $this->lang->line('due_amount'); ?> :<span id='due_amount_temp'><?php echo number_format($due_amount,decimals(),'.',''); ?></span></b><br>
			         
			        </div>
			        <!-- /.col -->
			      </div>
			      <!-- /.row -->
		      </div>
		      <div class="col-md-12">
		        <div>
		        <input type="hidden" name="payment_row_count" id='payment_row_count' value="1">
		        <div class="col-md-12  payments_div">
		          <div class="box box-solid bg-gray">
		            <div class="box-body">
		              <div class="row">
		         		<div class="col-md-6">
		                  <div class="">
		                  <label for="payment_date"><?= $this->lang->line('date'); ?></label>
		                    <div class="input-group date">
			                      <div class="input-group-addon">
			                      <i class="fa fa-calendar"></i>
			                      </div>
			                      <input type="text" class="form-control pull-right datepicker" value="<?= show_date(date("d-m-Y")); ?>" id="payment_date" name="payment_date" readonly>
			                    </div>
		                      <span id="payment_date_msg" style="display:none" class="text-danger"></span>
		                </div>
		               </div>
		                <div class="col-md-6">
		                  <div class="">
		                  <label for="amount"><?= $this->lang->line('amount'); ?></label>
		                    <input type="text" class="form-control text-right paid_amt" id="amount" name="amount" placeholder="" value="<?=$due_amount;?>" onkeyup="calculate_payments()">
		                      <span id="amount_msg" style="display:none" class="text-danger"></span>
		                </div>
		               </div>
		                <div class="col-md-6">
		                  <div class="">
		                    <label for="payment_type"><?= $this->lang->line('payment_type'); ?></label>
		                    <select class="form-control" id='payment_type' name="payment_type">
		                      <?php
		                        $q1=$this->db->query("select * from db_paymenttypes where status=1 and store_id=".get_current_store_id());
		                         if($q1->num_rows()>0){
		                             foreach($q1->result() as $res1){
		                             echo "<option value='".$res1->payment_type."'>".$res1->payment_type ."</option>";
		                           }
		                         }
		                         else{
		                            echo "No Records Found";
		                         }
		                        ?>
		                    </select>
		                    <span id="payment_type_msg" style="display:none" class="text-danger"></span>
		                  </div>
		                </div>
		                <div class="col-md-6">
		                  <div class="">
		                    <label for="account_id"><?= $this->lang->line('account'); ?></label>
		                    <select class="form-control" id='account_id' name="account_id">
		                      <?php
                                echo '<option value="">-None-</option>'; 
                                echo get_accounts_select_list();
                                ?>
		                    </select>
		                    <span id="account_id_msg" style="display:none" class="text-danger"></span>
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
		      </div><!-- col-md-12 -->
		    </div>
		      </div><!-- col-md-9 -->
		      <!-- RIGHT HAND -->
		    </div>
		      </div>
		      <div class="modal-footer">
		      	<input type="hidden" id="customer_id" value="<?=$customer_id?>">
		        <button type="button" class="btn btn-default btn-lg" data-dismiss="modal">Close</button>
		        <button type="button" onclick="save_payment(<?=$return_id;?>)" class="btn bg-green btn-lg place_order btn-lg payment_save">Save<i class="fa  fa-check "></i></button>
		      </div>
		    </div>
		    <!-- /.modal-content -->
		  </div>
		  <!-- /.modal-dialog -->
		</div>
		<?php
	}

	public function save_payment(){
		extract($this->xss_html_filter(array_merge($this->data,$_POST,$_GET)));
		//print_r($this->xss_html_filter(array_merge($this->data,$_POST,$_GET)));exit();
    	if($amount=='' || $amount==0){$amount=null;}
		if($amount>0 && !empty($payment_type)){
			$payment_code=get_init_code('sales_return_payment');

			$salespayments_entry = array(
					'payment_code' 		=> $payment_code,
		    		'count_id'	  		=> get_count_id('db_salespaymentsreturn'),
					'return_id' 		=> $return_id, 
					'payment_date'		=> system_fromatted_date($payment_date),//Current Payment with sales entry
					'payment_type' 		=> $payment_type,
					'payment' 			=> $amount,
					'payment_note' 		=> $payment_note,
					'created_date' 		=> $CUR_DATE,
    				'created_time' 		=> $CUR_TIME,
    				'created_by' 		=> $CUR_USERNAME,
    				'system_ip' 		=> $SYSTEM_IP,
    				'system_name' 		=> $SYSTEM_NAME,
    				'status' 			=> 1,
    				'account_id' 		=> (empty($account_id)) ? null : $account_id,
    				'customer_id' 		=> $customer_id,
				);
			
			$salespayments_entry['store_id']=$this->db->select("store_id")->where('id',$return_id)->get('db_salesreturn')->row()->store_id;
			$q3 = $this->db->insert('db_salespaymentsreturn', $salespayments_entry);
			
			//Set the payment to specified account
			if(!empty($account_id)){
				//ACCOUNT INSERT
				$insert_bit = insert_account_transaction(array(
															'transaction_type'  	=> 'SALES PAYMENT RETURN',
															'reference_table_id'  	=> $this->db->insert_id(),
															'debit_account_id'  	=> $account_id,
															'credit_account_id'  	=> null,
															'debit_amt'  			=> $amount,
															'credit_amt'  			=> 0,
															'process'  				=> 'SAVE',
															'note'  				=> $payment_note,
															'transaction_date'  	=> $CUR_DATE,
															'payment_code'  		=> $payment_code,
															'customer_id'  			=> $customer_id,
															'supplier_id'  			=> null,
													));
				if(!$insert_bit){
					return "failed";
				}
			}
			//end

		}
		else{
			return "Please Enter Valid Amount!";
		}
		
		$q10=$this->update_sales_payment_status($return_id,$customer_id);
		if($q10!=1){
			return "failed";
		}
		return "success";

	}
	
	public function view_payments_modal($return_id){
		$q1=$this->db->query("select * from db_salesreturn where id=$return_id");
		$res1=$q1->row();
		$customer_id = $res1->customer_id;
		$q2=$this->db->query("select * from db_customers where id=$customer_id");
		$res2=$q2->row();

		$customer_name=$res2->customer_name;
	    $customer_mobile=$res2->mobile;
	    $customer_phone=$res2->phone;
	    $customer_email=$res2->email;
	    $customer_country=$res2->country_id;
	    $customer_state=$res2->state_id;
	    $customer_address=$res2->address;
	    $customer_postcode=$res2->postcode;
	    $customer_gst_no=$res2->gstin;
	    $customer_tax_number=$res2->tax_number;
	    $customer_opening_balance=$res2->opening_balance;

	    $return_date=$res1->return_date;
	    $reference_no=$res1->reference_no;
	    $return_code=$res1->return_code;
	    $return_note=$res1->return_note;
	    $grand_total=$res1->grand_total;
	    $paid_amount=$res1->paid_amount;
	    $due_amount =$grand_total - $paid_amount;

	    if(!empty($customer_country)){
	      $customer_country = $this->db->query("select country from db_country where id='$customer_country'")->row()->country;  
	    }
	    if(!empty($customer_state)){
	      $customer_state = $this->db->query("select state from db_states where id='$customer_state'")->row()->state;  
	    }

		?>
		<div class="modal fade" id="view_payments_modal">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="modal-header header-custom">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title text-center"><?= $this->lang->line('payments'); ?></h4>
		      </div>
		      <div class="modal-body">
		        
		    <div class="row">
		      <div class="col-md-12">
		      	<div class="row invoice-info">
			        <div class="col-sm-4 invoice-col">
			          <?= $this->lang->line('customer_details'); ?>
			          <address>
			            <strong><?php echo  $customer_name; ?></strong><br>
			            <?php echo (!empty(trim($customer_mobile))) ? $this->lang->line('mobile').": ".$customer_mobile."<br>" : '';?>
			            <?php echo (!empty(trim($customer_phone))) ? $this->lang->line('phone').": ".$customer_phone."<br>" : '';?>
			            <?php echo (!empty(trim($customer_email))) ? $this->lang->line('email').": ".$customer_email."<br>" : '';?>
			            <?php echo (!empty(trim($customer_gst_no))) ? $this->lang->line('gst_number').": ".$customer_gst_no."<br>" : '';?>
			            <?php echo (!empty(trim($customer_tax_number))) ? $this->lang->line('tax_number').": ".$customer_tax_number."<br>" : '';?>
			          </address>
			        </div>
			        <!-- /.col -->
			        <div class="col-sm-4 invoice-col">
			          <?= $this->lang->line('sales_details'); ?>
			          <address>
			            <b><?= $this->lang->line('invoice'); ?> #<?php echo  $return_code; ?></b><br>
			            <b><?= $this->lang->line('date'); ?> :<?php echo show_date($return_date); ?></b><br>
			            <b><?= $this->lang->line('grand_total'); ?> :<?php echo $grand_total; ?></b><br>
			          </address>
			        </div>
			        <!-- /.col -->
			        <div class="col-sm-4 invoice-col">
			          <b><?= $this->lang->line('paid_amount'); ?> :<span><?php echo number_format($paid_amount,decimals(),'.',''); ?></span></b><br>
			          <b><?= $this->lang->line('due_amount'); ?> :<span id='due_amount_temp'><?php echo number_format($due_amount,decimals(),'.',''); ?></span></b><br>
			         
			        </div>
			        <!-- /.col -->
			      </div>
			      <!-- /.row -->
		      </div>
		      <div class="col-md-12">
		       
		     
		              <div class="row">
		         		<div class="col-md-12">
		                  
		                      <table class="table table-bordered">
                                  <thead>
                                  <tr class="bg-primary">
                                    <th>#</th>
                                    <th><?= $this->lang->line('payment_date'); ?></th>
                                    <th><?= $this->lang->line('payment'); ?></th>
                                    <th><?= $this->lang->line('payment_type'); ?></th>
                                    <th><?= $this->lang->line('account'); ?></th>
                                    <th><?= $this->lang->line('payment_note'); ?></th>
                                    <th><?= $this->lang->line('created_by'); ?></th>
                                    <th><?= $this->lang->line('action'); ?></th>
                                  </tr>
                                </thead>
                                <tbody>
                                	<?php
                                	$q1=$this->db->query("select * from db_salespaymentsreturn where return_id=$return_id");
									$i=1;
									$str = '';
									if($q1->num_rows()>0){
										foreach ($q1->result() as $res1) {
											echo "<tr>";
											echo "<td>".$i++."</td>";
											echo "<td>".show_date($res1->payment_date)."</td>";
											echo "<td>".$res1->payment."</td>";
											echo "<td>".$res1->payment_type."</td>";
											echo "<td>".get_account_name($res1->account_id)."</td>";
											echo "<td>".$res1->payment_note."</td>";
											echo "<td>".ucfirst($res1->created_by)."</td>";
										
											echo "<td><a onclick='delete_sales_payment(".$res1->id.")' class='pointer btn  btn-danger' ><i class='fa fa-trash'></i></</td>";	
											echo "</tr>";
										}
									}
									else{
										echo "<tr><td colspan='7' class='text-danger text-center'>No Records Found</td></tr>";
									}
									?>
                                </tbody>
                            </table>
		               
		               </div>
		            <div class="clearfix"></div>
		        </div>    
		       
		     
		   
		      </div><!-- col-md-9 -->
		      <!-- RIGHT HAND -->
		    </div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default btn-lg" data-dismiss="modal">Close</button>
		        
		      </div>
		    </div>
		    <!-- /.modal-content -->
		  </div>
		  <!-- /.modal-dialog -->
		</div>
		<?php
	}
}
