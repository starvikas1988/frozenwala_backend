<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Dompdf\Dompdf;
use Dompdf\Options;


class Sales extends MY_Controller {
	public function __construct(){
		parent::__construct();
		$this->load_global();
		$this->load->model('sales_model','sales');
		$this->load->model('chalan_model','chalan');
		$this->load->helper('sms_template_helper');
	}

	public function is_sms_enabled(){
		return is_sms_enabled();
	}

	public function index()
	{
		$this->permission_check('sales_view');
		$data=$this->data;
		$data['page_title']=$this->lang->line('sales_list');
		$this->load->view('sales-list',$data);
	}

	//Convert to Quotation to Sales Invoice
	public function quotation($quotation_id){
		$this->belong_to('db_quotation',$quotation_id);
		$this->permission_check('sales_add');
		$data=$this->data;
		$data['page_title']=$this->lang->line('quotation_to_sales_invoice');
		$data['quotation_id']=$quotation_id;
		$this->load->view('sales',$data);
	}
		
public function new_brand(){
        $data['store_id'] = (store_module() && is_admin()) ? $store_id : get_current_store_id();
	    $data['brand_name'] = $this->input->post('brand_name');
	    $data['description'] = $this->input->post('description');
	    $data['status'] = 1;
	   // print_r($data);die();
	    if($this->sales->add_brand($data)){
	        redirect($_SERVER["HTTP_REFERER"]);
	    }else{
	        redirect($_SERVER["HTTP_REFERER"]);
	    }
	}
	public function new_category(){
        $data['store_id'] = (store_module() && is_admin()) ? $store_id : get_current_store_id();
        $data['count_id']   = get_count_id('db_category'); 
		$data['category_code'] 	= get_init_code('category'); 
	    $data['category_name'] = $this->input->post('category_name');
	    $data['description'] = $this->input->post('description');
	    $data['status'] = 1;
	   // print_r($data);die();
	    if($this->sales->add_category($data)){
	        redirect($_SERVER["HTTP_REFERER"]);
	    }else{
	        redirect($_SERVER["HTTP_REFERER"]);
	    }
	}

	public function add()
	{	
		$this->permission_check('sales_add');
		$data=$this->data;
		$data['page_title']=$this->lang->line('sales');
		$this->load->view('sales',$data);
	}
	public function chalan()
	{	
		$this->permission_check('sales_add');
		$data=$this->data;
		$data['page_title']=$this->lang->line('chalan');
		$this->load->view('chalan',$data);
	}
	

	public function sales_save_and_update(){
		$this->form_validation->set_rules('sales_date', 'Sales Date', 'trim|required');
		$this->form_validation->set_rules('customer_id', 'Customer Name', 'trim|required');
		
		if ($this->form_validation->run() == TRUE) {
	    	$result = $this->sales->verify_save_and_update();
	    	echo $result;
		} else {
			echo "Please Fill Compulsory(* marked) Fields.";
		}
	}
	
	
	public function save_chalan(){
		$this->form_validation->set_rules('sales_date', 'Sales Date', 'trim|required');
		$this->form_validation->set_rules('customer_id', 'Customer Name', 'trim|required');
		
		if ($this->form_validation->run() == TRUE) {
	    	$result = $this->sales->verify_chalan();
	    	echo $result;
		} else {
			echo "Please Fill Compulsory(* marked) Fields.";
		}
	}
	
	
	public function update($id){
		$this->belong_to('db_sales',$id);
		$this->permission_check('sales_edit');
		$data=$this->data;
		$data=array_merge($data,array('sales_id'=>$id));
		$data['page_title']=$this->lang->line('sales');
		$this->load->view('sales', $data);
	}
	

	public function ajax_list()
	{
		$list = $this->sales->get_datatables();
		
		
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $sales) {
			
			$no++;
			$row = array();
			$row[] = '<input type="checkbox" name="checkbox[]" value='.$sales->id.' class="checkbox column_checkbox" >';
			
			$row[] = show_date($sales->sales_date);

			#-----------------------------------------------------
			$date_difference = date_difference($sales->due_date,date("Y-m-d"));
					$str='';
					//$info='';
					if($date_difference>0){
			          $str= "<br><span class='label label-danger' style='cursor:pointer'> $date_difference days Overdue</span>";
					}
					else{
						$str= "<br><span class='label label-info' style='cursor:pointer'> ".abs($date_difference)." days Left</span>";
					}
			$row[] = (!empty($sales->due_date)) ? show_date($sales->due_date).$str : '';
			#-----------------------------------------------------

			$info = (!empty($sales->quotation_id)) ? "<br><span class='label label-success' style='cursor:pointer'><i class='fa fa-fw  fa-check-circle'></i>Against Quotation</span>" : '';

			$info .= (!empty($sales->return_bit)) ? "<br><span class='label label-danger' style='cursor:pointer'><i class='fa fa-fw fa-undo'></i>Return Raised</span>" : '';

			$row[] = $sales->sales_code.$info;
			
			$row[] = $sales->reference_no;
			$row[] = $sales->customer_name;
			
			$row[] = store_number_format(round($sales->grand_total));
			$row[] = store_number_format(round($sales->paid_amount));
			$row[] = '0';
			$row[] = '0';
			        
					$str='';
					if($sales->payment_status=='Unpaid')
			          $str= "<span class='label label-danger' style='cursor:pointer'>Unpaid </span>";
			        if($sales->payment_status=='Partial')
			          $str="<span class='label label-warning' style='cursor:pointer'> Partial </span>";
			        if($sales->payment_status=='Paid')
			          $str="<span class='label label-success' style='cursor:pointer'> Paid </span>";

			$row[] = $str;
			$row[] = ucfirst($sales->created_by);

					 if($sales->pos ==1):
					 	$str1='pos/edit/';
					 else:
					 	$str1='sales/update/';
					 endif;

					$str2 = '<div class="btn-group" title="View Account">
										<a class="btn btn-primary btn-o dropdown-toggle" data-toggle="dropdown" href="#">
											Action <span class="caret"></span>
										</a>
										<ul role="menu" class="dropdown-menu dropdown-light pull-right">';
											if($this->permissions('sales_view'))
											$str2.='<li>
												<a title="View Invoice" href="'.base_url().'sales/invoice/'.$sales->id.'" >
													<i class="fa fa-fw fa-eye text-blue"></i>View sales
												</a>
											</li>';

											if($this->permissions('sales_edit'))
											$str2.='<li>
												<a title="Update Record ?" href="'.base_url().''.$str1.$sales->id.'">
													<i class="fa fa-fw fa-edit text-blue"></i>Edit
												</a>
											</li>';

											if($this->permissions('sales_payment_view'))
											$str2.='<li>
												<a title="Pay" class="pointer" onclick="view_payments('.$sales->id.')" >
													<i class="fa fa-fw fa-money text-blue"></i>View Payments
												</a>
											</li>';

											if($this->permissions('sales_payment_add'))
											$str2.='<li>
												<a title="Receive Payments" class="pointer" onclick="pay_now('.$sales->id.')" >
													<i class="fa fa-fw fa-hourglass-half text-blue"></i>Receive Payments
												</a>
											</li>';

											if($this->permissions('sales_add') || $this->permissions('sales_edit'))
											$str2.='
											<li>
												<a title="Download PDF" target="_blank" href="'.base_url().'pdf/sales/'.$sales->id.'">
													<i class="fa fa-fw fa-file-pdf-o text-blue"></i>PDF
												</a>
											</li>
											<li>
												<a style="cursor:pointer" title="Print POS Invoice ?" onclick="print_invoice('.$sales->id.')">
													<i class="fa fa-fw fa-file-text text-blue"></i>POS Invoice
												</a>
											</li>';

											if($this->permissions('sales_return_add'))
											$str2.='<li>
												<a title="Sales Return" href="'.base_url().'sales_return/add/'.$sales->id.'">
													<i class="fa fa-fw fa-undo text-blue"></i>Sales Return
												</a>
											</li>';

											if($this->permissions('sales_delete'))
											$str2.='<li>
												<a style="cursor:pointer" title="Delete Record ?" onclick="delete_sales(\''.$sales->id.'\')">
													<i class="fa fa-fw fa-trash text-red"></i>Delete
												</a>
											</li>
											
										</ul>
									</div>';			

			$row[] = $str2;

			$data[] = $row;
		}

		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->sales->count_all(),
						"recordsFiltered" => $this->sales->count_filtered(),
						"data" => $data,
				);
		//output to json format
		echo json_encode($output);
	}
	
	
	
	public function ajax_chalan_list()
	{
		$list_chalan = $this->chalan->get_datatables();
		
		$data = array();
		$no = $_POST['start'];
		foreach ($list_chalan as $chalan_list) {
			
			$no++;
			$row = array();
			$row[] = '<input type="checkbox" name="checkbox[]" value='.$chalan_list->id.' class="checkbox column_checkbox" >';
			
			$row[] = $chalan_list->sales_date;
			
			$row[] = $chalan_list->invoice_no;
			$row[] = $chalan_list->customer_name;
		
			$row[] = $chalan_list->delivered_by;
			$row[] = $chalan_list->vehicle_no;

					$str2 = '<div class="btn-group" title="View Account">
										<a class="btn btn-primary btn-o dropdown-toggle" data-toggle="dropdown" href="#">
											Action <span class="caret"></span>
										</a>
										<ul role="menu" class="dropdown-menu dropdown-light pull-right">';
											if($this->permissions('sales_view'))
											$str2.='<li>
												<a title="View Invoice" href="'.base_url().'sales/chalan_invoice/'.$chalan_list->id.'" >
													<i class="fa fa-fw fa-eye text-blue"></i>View Challan
												</a>
											</li>';



											if($this->permissions('sales_delete'))
											$str2.='<li>
												<a style="cursor:pointer" title="Delete Record ?" onclick="delete_chalan(\''.$chalan_list->id.'\')">
													<i class="fa fa-fw fa-trash text-red"></i>Delete
												</a>
											</li>
											
										</ul>
									</div>';			

			$row[] = $str2;

			$data[] = $row;
		}

		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->chalan->count_all(),
						"recordsFiltered" => $this->chalan->count_filtered(),
						"data" => $data,
				);
		//output to json format
		echo json_encode($output);
	}
	
	
	
	
	public function update_status(){
		$this->permission_check('sales_edit');
		$id=$this->input->post('id');
		$status=$this->input->post('status');

		
		$result=$this->sales->update_status($id,$status);
		return $result;
	}
	public function delete_sales(){
		$this->permission_check_with_msg('sales_delete');
		$id=$this->input->post('q_id');
		echo $this->sales->delete_sales($id);
	}
	public function multi_delete(){
		$this->permission_check_with_msg('sales_delete');
		$ids=implode (",",$_POST['checkbox']);
		echo $this->sales->delete_sales($ids);
	}


	//Table ajax code
	public function search_item(){
		$q=$this->input->get('q');
		$result=$this->sales->search_item($q);
		echo $result;
	}
	public function find_item_details(){
		$id=$this->input->post('id');
		
		$result=$this->sales->find_item_details($id);
		echo $result;
	}

	//sales invoice form
	public function invoice($id)
	{	
		$this->belong_to('db_sales',$id);
		if(!$this->permissions('sales_add') && !$this->permissions('sales_edit')){
			$this->show_access_denied_page();
		}
		
		$data=$this->data;
		$data=array_merge($data,array('sales_id'=>$id));
		$data['page_title']=$this->lang->line('sales_invoice');
		$this->load->view('sal-invoice2',$data);
	}
	public function invoice2($id)
	{	
		$this->belong_to('db_sales',$id);
		if(!$this->permissions('sales_add') && !$this->permissions('sales_edit')){
			$this->show_access_denied_page();
		}
		
		$data=$this->data;
		$data=array_merge($data,array('sales_id'=>$id));
		$data['page_title']=$this->lang->line('sales_invoice');
		$this->load->view('sal-invoice',$data);
	}
	//Print sales invoice 
	public function print_invoice($sales_id)
	{
		$this->belong_to('db_sales',$sales_id);
		if(!$this->permissions('sales_add') && !$this->permissions('sales_edit')){
			$this->show_access_denied_page();
		}
		
		$data=$this->data;
		$data=array_merge($data,array('sales_id'=>$sales_id));
		$data['page_title']=$this->lang->line('sales_invoice');
	$this->load->view('show_sales_invoice',$data);
	//	$this->get_html_invoice($data);
	}
	


	

	//Print sales POS invoice 
	public function print_invoice_pos($sales_id)
	{

		$this->belong_to('db_sales',$sales_id);
		if(!$this->permissions('sales_add') && !$this->permissions('sales_edit')){
			$this->show_access_denied_page();
		}
		$data=$this->data;
		$data=array_merge($data,array('sales_id'=>$sales_id));
		$data['page_title']=$this->lang->line('sales_invoice');
		
		$this->load->view('sal-invoice-pos',$data);
		
		
	}
	public function get_html_invoice($data){
		$invoice_format_id = get_invoice_format_id();

		if($invoice_format_id==4){
			$this->load->view('print-sales-invoice-4',$data);
		}
		else{
			$this->load->view('print-sales-invoice-3',$data);
		}
        // Get output html
        return $this->output->get_output();
	}
	public function pdf($sales_id){

		if(!$this->permissions('sales_add') && !$this->permissions('sales_edit')){
			$this->show_access_denied_page();
		}
		$this->belong_to('db_sales',$sales_id);

		$data=$this->data;
		$data['page_title']=$this->lang->line('sales_invoice');
        $data=array_merge($data,array('sales_id'=>$sales_id));


        $html = $this->get_html_invoice($data);
        
        $options = new Options();
		$options->set('isRemoteEnabled', true);
        $dompdf = new Dompdf($options);

        // Load HTML content
        $dompdf->loadHtml($html,'UTF-8');
        
        // (Optional) Setup the paper size and orientation
        $dompdf->setPaper('A4', 'portrait');/*landscape or portrait*/
        
        // Render the HTML as PDF
        $dompdf->render();
        
        // Output the generated PDF (1 = download and 0 = preview)
        $dompdf->stream("Sales-invoice-$sales_id-".date('M')."_".date('d')."_".date('Y'), array("Attachment"=>0));
	}
	
	

	
	/*v1.1*/
	public function return_row_with_data($rowcount,$item_id){
		echo $this->sales->get_items_info($rowcount,$item_id);
	}
	public function return_row_with_data1($rowcount,$item_id){
		echo $this->sales->get_items_info1($rowcount,$item_id);
	}
	public function return_sales_list($sales_id){
		echo $this->sales->return_sales_list($sales_id);
	}
	public function delete_payment(){
		$this->permission_check_with_msg('sales_payment_delete');
		$payment_id = $this->input->post('payment_id');
		echo $this->sales->delete_payment($payment_id);
	}
	public function show_pay_now_modal(){
		$this->permission_check_with_msg('sales_view');
		$sales_id=$this->input->post('sales_id');
		echo $this->sales->show_pay_now_modal($sales_id);
	}
	public function save_payment(){
		$this->permission_check_with_msg('sales_add');
		echo $this->sales->save_payment();
	}
	public function view_payments_modal(){
		$this->permission_check_with_msg('sales_view');
		$sales_id=$this->input->post('sales_id');
		echo $this->sales->view_payments_modal($sales_id);
	}
	public function get_customers_select_list(){
		echo get_customers_select_list(null,$_POST['store_id']);
	}
	public function get_items_select_list(){
		$item_type = isset($_POST['item_type']) ? $_POST['item_type'] : '';
		echo get_items_select_list(null,$_POST['store_id'],$item_type);
	}
	public function get_tax_select_list(){
		echo get_tax_select_list(null,$_POST['store_id']);
	}
	/*Get warehouse select list*/
	public function get_warehouse_select_list(){
		echo get_warehouse_select_list(null,$_POST['store_id']);
	}

	public function get_brands_select_list(){
		echo get_brands_select_list(null,$_POST['store_id']);
	}
	public function get_categories_select_list(){
		echo get_categories_select_list(null,$_POST['store_id']);
	}

	public function get_payment_types_select_list(){
		echo get_payment_types_select_list(null,$_POST['store_id']);
	}

	//Print sales Payment Receipt
	public function print_show_receipt($payment_id){
		if(!$this->permissions('sales_add') && !$this->permissions('sales_edit')){
			$this->show_access_denied_page();
		}
		$data=$this->data;
		$data['page_title']=$this->lang->line('payment_receipt');
		$data=array_merge($data,array('payment_id'=>$payment_id));
		$this->load->view('print-cust-payment-receipt',$data);
	}
	
	public function get_users_select_list(){
		echo get_users_select_list($this->session->userdata("role_id"),$_POST['store_id']);
	}

	public function return_quotation_list($quotation_id){
		echo $this->sales->return_quotation_list($quotation_id);
	}
	
	public function chalan_list()
	{
		$this->permission_check('sales_view');
		$data=$this->data;
		$data['page_title']=$this->lang->line('chalan_list');
		$this->load->view('chalan-list',$data);
	}
	
	public function chalan_invoice()
	{	
		$id = $this->uri->segment(3);
		//$this->belong_to('db_chalan',$id);
		if(!$this->permissions('sales_add') && !$this->permissions('sales_edit')){
			$this->show_access_denied_page();
		}
		
		$data=$this->data;
		$data=array_merge($data,array('id'=>$id));
		$data['page_title']=$this->lang->line('chalan_invoice');
		$this->load->view('chalan-invoice',$data);
	}
	
	public function save_shipping_address(){
	    if($this->input->post('save')){
	   // print_r($_POST);die();
	    $data['store_id'] = (store_module() && is_admin()) ? $store_id : get_current_store_id();
	    $data['customer_id'] = $this->input->post('customer_id');
	    $data['invoice_sales_id'] = $this->input->post('sales_id');
	    $data['address'] = $this->input->post('shipping_address');
	    $data['status'] = 1;
	   // print_r($data);die();
	   if($this->db->insert('db_shippingaddress',$data)){
	       
	       redirect(($_SERVER["HTTP_REFERER"]));
	   }
	  else{
	      redirect($_SERVER["HTTP_REFERER"]);
	  }
	    }
	    
	    
	}
	
}
