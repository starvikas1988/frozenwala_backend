<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Items extends MY_Controller {
	protected $cloud_db;

	public function __construct(){
		parent::__construct();
		$this->load_global();
		$this->load->model('items_model','items');
		$this->cloud_db = $this->load->database('cloud', TRUE);
	}
	
	public function index()
	{
		if(!$this->permissions('items_view') && !$this->permissions('services_view')){
			$this->show_access_denied_page();exit;
		}
		$data=$this->data;
		$data['page_title']=$this->lang->line('items_list');
		$this->load->view('items-list',$data);
	}
	public function add()
	{
		$this->permission_check('items_add');
		$data=$this->data;
		$data['page_title']=$this->lang->line('items');
		$this->load->view('items',$data);
	}

	public function newitems(){
		$this->form_validation->set_rules('item_name', 'Item Name', 'trim|required');
		$this->form_validation->set_rules('category_id', 'Category Name', 'trim|required');
		$this->form_validation->set_rules('unit_id', 'Unit', 'trim|required');
		$this->form_validation->set_rules('tax_id', 'Tax', 'trim|required');

		if($this->input->post('item_group')=='Single'){
		$this->form_validation->set_rules('price', 'Item Price', 'trim|required');
		$this->form_validation->set_rules('purchase_price', 'Purchase Price', 'trim|required');
		$this->form_validation->set_rules('sales_price', 'Sales Price', 'trim|required');
		}
		else{
			if($this->input->post('existing_row_count')==1){
				echo "Variants List Not Added, Please Select Variants!!";exit();
			}
		}		
		if ($this->form_validation->run() == TRUE) {
			$result=$this->items->save_record(array('command' =>'save'));
			echo $result;
		} else {
			echo "Please Fill Compulsory(* marked) Fields.";
		}
	}

	//PopUP Modal
	public function addItemFromModal(){

		$this->form_validation->set_rules('m_item_name', 'Item Name', 'trim|required');
		$this->form_validation->set_rules('m_category_id', 'Category Name', 'trim|required');
		$this->form_validation->set_rules('m_unit_id', 'Unit', 'trim|required');
		$this->form_validation->set_rules('m_tax_id', 'Tax', 'trim|required');

		if($this->input->post('item_group')=='Single'){
		$this->form_validation->set_rules('m_price', 'Item Price', 'trim|required');
		$this->form_validation->set_rules('m_purchase_price', 'Purchase Price', 'trim|required');
		$this->form_validation->set_rules('m_sales_price', 'Sales Price', 'trim|required');
		}
		else{
			if($this->input->post('existing_row_count')==1){
				echo "Variants List Not Added, Please Select Variants!!";exit();
			}
		}		
		if ($this->form_validation->run() == TRUE) {
			$modal_post=array(
								'item_name' => $this->input->post('m_item_name'),
								'brand_id' => $this->input->post('m_brand_id'),
								'category_id' => $this->input->post('m_category_id'),
								'unit_id' => $this->input->post('m_unit_id'),
								'tax_id' => $this->input->post('m_tax_id'),
								'price' => $this->input->post('m_price'),
								'purchase_price' => $this->input->post('m_purchase_price'),
								'sales_price' => $this->input->post('m_sales_price'),
								'hsn' => $this->input->post('m_hsn'),
								'sku' => $this->input->post('m_sku'),
								'alert_qty' => $this->input->post('m_alert_qty'),
								'seller_points' => $this->input->post('m_seller_points'),
								'custom_barcode' => $this->input->post('m_custom_barcode'),
								'item_group' => $this->input->post('m_item_group'),
								'description' => $this->input->post('m_description'),
								'discount_type' => $this->input->post('m_discount_type'),
								'discount' => $this->input->post('m_discount'),
								'price' => $this->input->post('m_price'),
								'tax_id' => $this->input->post('m_tax_id'),
								'purchase_price' => $this->input->post('m_purchase_price'),
								'tax_type' => $this->input->post('m_tax_type'),
								'profit_margin' => $this->input->post('m_profit_margin'),
								'sales_price' => $this->input->post('m_sales_price'),
								'mrp' => $this->input->post('m_mrp'),
								'warehouse_id' => $this->input->post('m_warehouse_id'),
								'command' => 'save',
							);
			$result=$this->items->save_record($modal_post);
			echo $result;
		} else {
			echo "Please Fill Compulsory(* marked) Fields.";
		}
	}

	public function update($id){
		$this->belong_to('db_items',$id);
		$this->permission_check('items_edit');
		//Check is direct Access of the variant by id in item ?
		/*$parent_id = $this->db->select("parent_id")->where("store_id",get_current_store_id())->where("id",$id)->get("db_items")->row()->parent_id;
		if(!empty($parent_id)){
			show_error("You can't access variant Item!!", 403, $heading = "Invalid Access!!");
		}*/

		$data=$this->data;
		$this->load->model('items_model');
		$result=$this->items_model->get_details($id,$data);
		$data=array_merge($data,$result);
		$data['page_title']=$this->lang->line('items');
		//$data['variant_tbody']=$this->items_model->get_variants_list_in_row($id);
		$this->load->view('items', $data);
	}
	public function update_items(){
		$this->form_validation->set_rules('item_name', 'Item Name', 'trim|required');
		$this->form_validation->set_rules('category_id', 'Category Name', 'trim|required');
		$this->form_validation->set_rules('unit_id', 'Unit', 'trim|required');
		$this->form_validation->set_rules('tax_id', 'Tax', 'trim|required');

		if($this->input->post('item_group')=='Single'){
		$this->form_validation->set_rules('price', 'Item Price', 'trim|required');
		$this->form_validation->set_rules('purchase_price', 'Purchase Price', 'trim|required');
		$this->form_validation->set_rules('sales_price', 'Sales Price', 'trim|required');
		}
		else{
			if($this->input->post('existing_row_count')==1){
				echo "Variants List Not Added, Please Select Variants!!";exit();
			}
		}

		
		if ($this->form_validation->run() == TRUE) {
			$result=$this->items->save_record(array('command'=>'update'));
			echo $result;
		} else {
			echo "Please Fill Compulsory(* marked) Fields.";
		}

	}

	public function get_brand_name($brand_id=''){
		if($brand_id==NULL || $brand_id=='' || $brand_id ==0){
			return;
		}
		return $this->db->query('select brand_name from db_brands where id="'.$brand_id.'"')->row()->brand_name;
	}
	public function ajax_list()
	{
		$warehouse_id = $_REQUEST['warehouse_id'];

		$list = $this->items->get_datatables();
		
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $items) {
			
			$no++;
			$row = array();
			$row[] = '<input type="checkbox" name="checkbox[]" value='.$items->id.' class="checkbox column_checkbox" >';
						

			$row[] = (!empty($items->item_image)) ? "
						<a title='Click for Bigger!' href='".base_url($items->item_image)."' data-toggle='lightbox'>
						<image style='border:1px #72afd2 solid;' src='".base_url(return_item_image_thumb($items->item_image))."' width='75%' height='50%'> </a>" : "
						<image style='border:1px #72afd2 solid;' src='".base_url()."theme/images/no_image.png' title='No Image!' width='75%' height='50%' >";
			
			$row[] = $items->item_code;
			$row[] = "<label class='text-blue'>".$items->item_name."</label><br><b>HSN</b>:".$items->hsn."<br><b>SKU</b>:".$items->sku;
			$row[] = $items->brand_name;
			$service_or_item_name = ($items->service_bit) ? 'SERVICE' : "ITEM";

			$row[] = $items->category_name."<br>[<label class='text-orange'>".$service_or_item_name."</label>]";

			$item_group = '';// (!empty($items->item_group)) ? "<br>[<label class='text-green'>".$items->item_group."</label>]" : '';
			$row[] = $items->unit_name.$item_group;

					 $str='';
					 if(warehouse_module() && warehouse_count()>0 && $items->stock>0){ 
			 			$str= "<i class='fa fa-building-o pointer bg-blue text-dark' title='Click to view Warehouse Wise Stock' data-toggle='tooltip' onclick='view_warehouse_wise_stock_item(".$items->id.")'> </i>";
			 		 }
			$warehouse_ids  = (!empty($warehouse_id)) ? $warehouse_id : get_privileged_warehouses_ids();

			
			$row[] = format_qty(total_available_qty_items_of_warehouse($warehouse_ids,null,$items->id))." $str";

			$row[] = $items->alert_qty;
			$row[] = store_number_format($items->sales_price);
			$row[] = $items->tax_name."<br>(".store_number_format($items->tax)."%)";

			 		if($items->status==1){ 
			 			$str= "<span onclick='update_status(".$items->id.",0)' id='span_".$items->id."'  class='label label-success' style='cursor:pointer'>Active </span>";}
					else{ 
						$str = "<span onclick='update_status(".$items->id.",1)' id='span_".$items->id."'  class='label label-danger' style='cursor:pointer'> Inactive </span>";
					}
			$row[] = $str;		

			 		$str2 = '<div class="btn-group" title="View Account">
										<a class="btn btn-primary btn-o dropdown-toggle" data-toggle="dropdown" href="#">
											Action <span class="caret"></span>
										</a>
										<ul role="menu" class="dropdown-menu dropdown-light pull-right">';

											if($this->permissions('items_edit') || $this->permissions('services_edit'))
											$str2.='<li>
												<a title="Edit Record ?" href="'.base_url(($items->service_bit)? 'services/update/'.$items->id : 'items/update/'.$items->id).'">
													<i class="fa fa-fw fa-edit text-blue"></i>Edit
												</a>
											</li>';

											if($this->permissions('items_delete')|| $this->permissions('services_delete'))
											$str2.='<li>
												<a style="cursor:pointer" title="Delete Record ?" onclick="delete_items('.$items->id.')">
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
						"recordsTotal" => $this->items->count_all(),
						"recordsFiltered" => $this->items->count_filtered(),
						"data" => $data,
				);
		//output to json format
		echo json_encode($output);
	}
	public function update_status(){
		$this->permission_check_with_msg('items_edit');
		$id=$this->input->post('id');
		$status=$this->input->post('status');

		$this->load->model('items_model');
		$result=$this->items_model->update_status($id,$status);
		return $result;
	}

	public function delete_items(){
		$this->permission_check_with_msg('items_delete');
		$id=$this->input->post('q_id');
		return $this->items->delete_items_from_table($id);
	}
	public function multi_delete(){
		$this->permission_check_with_msg('items_delete');
		$ids=implode (",",$_POST['checkbox']);
		return $this->items->delete_items_from_table($ids);
	}

	
	public function get_json_items_details(){
		$store_id=$this->input->get('store_id');
		$warehouse_id=$this->input->get('warehouse_id');
		$search_for=$this->input->get('search_for');

		$show_purchase_price = $this->permissions('show_purchase_price');
		$data = array();
		$display_json = array();
			$name = strtolower(trim($_GET['name']));

			if(isset($search_for) && $search_for=='purchase'){
				//$this->db->where('a.service_bit=1');
				$this->db->select("a.service_bit,a.purchase_price,a.id,a.item_name,a.item_code,COALESCE(SUM(a.stock),0) as stock,item_group");
				$this->db->from("db_items as a");

			}
			else if(isset($search_for) && ($search_for=='labels' || $search_for=='sales')){
				$this->db->select("*");
				$this->db->from("db_items as a");
			}
			else{
				$this->db->where('a.service_bit=0');
				$this->db->select("a.service_bit,a.purchase_price,a.id,a.item_name,a.item_code,COALESCE(b.available_qty,0) as stock,item_group");
				$this->db->from("db_items as a");
				$this->db->join("db_warehouseitems as b","b.item_id=a.id",'left');
				$this->db->where("b.warehouse_id=$warehouse_id");
			}
			
			$this->db->where("a.status",1);
			$this->db->where("a.store_id",$store_id);
			$this->db->where("(LOWER(a.custom_barcode) LIKE '%$name%' or LOWER(a.item_name) LIKE '%$name%' or LOWER(a.item_code) LIKE '%$name%')");

			$this->db->group_by("a.id");
			$this->db->limit("20");
			//echo $this->db->get_compiled_select();exit();
			$sql =$this->db->get();
			
// 			echo '<pre>';
// 			print_r($sql->result());
// 			die;
			
			foreach ($sql->result() as $res) {
				if($res->item_group != 'Variants'){
				    
				    if(isset($res->brand_id))
				    {
				        $this->db->select('*');
    				    $this->db->from('db_brands');
    				    $this->db->where('id', $res->brand_id);
    				    $get_brand_details = $this->db->get()->result();
				    }
				    
				    if(isset($res->category_id))
				    {
				        $this->db->select('*');
    				    $this->db->from('db_category');
    				    $this->db->where('id',$res->category_id);
    				    $get_category_details = $this->db->get()->result();
				    }
				    
				    
				    
			      $json_arr["id"] = $res->id;
				  $json_arr["value"] = $res->item_name;
				  
				  //$json_arr["label"] = $res->item_name.'[Br:'.$get_brand_details[0]->brand_name.', Cat:'.$get_category_details[0]->category_name.']';
				  $json_arr["label"] = $res->item_name . ((!empty($get_brand_details[0]->brand_name) || !empty($get_category_details[0]->category_name)) ? ' [' . (!empty($get_brand_details[0]->brand_name) ? 'Br:' . $get_brand_details[0]->brand_name : '') . (!empty($get_brand_details[0]->brand_name) && !empty($get_category_details[0]->category_name) ? ', ' : '') . (!empty($get_category_details[0]->category_name) ? 'Cat:' . $get_category_details[0]->category_name : '') . ']' : '') . '--'. (($show_purchase_price) ? store_number_format($res->purchase_price) : '');

				  $json_arr["item_code"] = $res->item_code;
				  $json_arr["stock"] = (isset($search_for) && $search_for=='sales') ? total_available_qty_items_of_warehouse($warehouse_id,$store_id,$res->id) : $res->stock;
				  $json_arr["purchase_price"] = ($show_purchase_price) ? store_number_format($res->purchase_price) : '';
				  $json_arr["service_bit"] = $res->service_bit;
				  array_push($display_json, $json_arr);
				}
			}

		echo json_encode($display_json);exit;
	}

	public function labels($purchase_id=''){
		$this->permission_check('print_labels');
		$data=$this->data;
		$data['page_title']=$this->lang->line('print_labels');
		$data['purchase_id']=$purchase_id;
		$this->load->view('labels',$data);
	}

	/*Labels Print request*/
	public function return_row_with_data($rowcount,$item_id){
		echo $this->items->get_items_info($rowcount,$item_id);
	}

	public function preview_labels(){
		echo $this->items->preview_labels();
	}

	//GET Labels from Purchase Invoice
	public function show_labels($purchase_id=''){
		$i=1;
		$result='';
		$q2=$this->db->query("select item_id,purchase_qty from db_purchaseitems where purchase_id='$purchase_id'");
		if($q2->num_rows()>0){
			
			foreach ($q2 -> result() as $res2) {
				$result.= $this->items->get_purchase_items_info($i++,$res2->item_id,$res2->purchase_qty);
			}
		}
		echo $result;
	}

	public function get_json_variant_details(){
		
		$data = array();
		$display_json = array();
			$name = strtolower(trim($_GET['name']));

				$this->db->select("id,variant_name,description");
				$this->db->from("db_variants");
				$this->db->where("(UPPER(variant_name) LIKE UPPER('%$name%') OR (UPPER(description) LIKE UPPER('%$name%')))");
				$this->db->where("status=1");
				$this->db->where("store_id",get_current_store_id());
			$this->db->limit("10");
			//$this->db->get_compiled_select();exit;
			$sql =$this->db->get();
			
			foreach ($sql->result() as $res) {
			      $json_arr["id"] = $res->id;
				  $json_arr["variant_name"] = $res->variant_name;
				  $json_arr["description"] = $res->description;
				  array_push($display_json, $json_arr);
			}
		echo json_encode($display_json);exit;
	}
	public function return_variant_data_in_row($rowcount,$item_id){
		echo $this->items->return_variant_data_in_row($rowcount,$item_id);
	}
	
	
	
	

	
	

}
