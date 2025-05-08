<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Category_model extends CI_Model {

	var $table = 'db_category';
	var $column_order = array('category_code','category_name','description','status','store_id');
	var $column_search = array('category_code','category_name','description','status','store_id');
	var $order = array('id' => 'desc');
	protected $cloud_db;

	private function _get_datatables_query() {
		$this->db->from($this->table);
		$this->db->where("store_id",get_current_store_id());

		$i = 0;
		foreach ($this->column_search as $item) {
			if($_POST['search']['value']) {
				if($i === 0) {
					$this->db->group_start();
					$this->db->like($item, $_POST['search']['value']);
				} else {
					$this->db->or_like($item, $_POST['search']['value']);
				}
				if(count($this->column_search) - 1 == $i)
					$this->db->group_end();
			}
			$i++;
		}
		
		if(isset($_POST['order'])) {
			$this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} else if(isset($this->order)) {
			$order = $this->order;
			$this->db->order_by(key($order), $order[key($order)]);
		}
	}

	function get_datatables() {
		$this->_get_datatables_query();
		if($_POST['length'] != -1)
			$this->db->limit($_POST['length'], $_POST['start']);
		$query = $this->db->get();
		return $query->result();
	}

	function count_filtered() {
		$this->_get_datatables_query();
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function count_all() {
		$this->db->where("store_id",get_current_store_id());
		$this->db->from($this->table);
		return $this->db->count_all_results();
	}

	public function verify_and_save($files = []) {
		$this->cloud_db = $this->load->database('cloud', TRUE);
		extract($this->security->xss_clean(html_escape(array_merge($this->data,$_POST))));
		
		$store_id = (store_module() && is_admin()) ? $store_id : get_current_store_id();
		$query = $this->db->query("select * from db_category where upper(category_name)=upper('$category') and store_id=$store_id");
		if($query->num_rows() > 0) {
			return "This Category Name already Exist.";
		}

		$image = '';
		if (!empty($files['category_image']['name'])) {
			$config['upload_path'] = './uploads/category/';
			$config['allowed_types'] = 'jpg|jpeg|png|gif';
			$config['max_size'] = 2048;
			$config['encrypt_name'] = TRUE;
			$this->load->library('upload', $config);

			if ($this->upload->do_upload('category_image')) {
				$upload_data = $this->upload->data();
				$image = $upload_data['file_name'];
			} else {
				return "Image Upload Failed: " . $this->upload->display_errors();
			}
		}

		$info = array(
			'count_id'        => get_count_id('db_category'), 
			'category_code'   => get_init_code('category'), 
			'category_name'   => $category,
			'description'     => $description,
			'image'           => $image,
			'status'          => 1,
			'store_id'        => $store_id,
		);

		$q1 = $this->db->insert('db_category', $info);
		if($q1) {
			$insert_id = $this->db->insert_id();
			$cloud_info = array(
				'id'     => $insert_id,
				'name'   => $category,
				'image'  => $image,
				'status' => 1,
				'flag' => 1,
			);
			$this->cloud_db->insert('ecomApp_catagory', $cloud_info);
		}

		if($q1) {
			$this->session->set_flashdata('success', 'Success!! New Category Added Successfully!');
			return "success";
		} else {
			return "failed";
		}
	}

	public function update_category($files = []) {
		$this->cloud_db = $this->load->database('cloud', TRUE); // cloud db Frozenwala_db connection
		extract($this->security->xss_clean(html_escape(array_merge($this->data,$_POST))));

		$store_id = (store_module() && is_admin()) ? $store_id : get_current_store_id();
		$query = $this->db->query("select * from db_category where upper(category_name)=upper('$category') and id<>$q_id and store_id=$store_id");
		if($query->num_rows() > 0) {
			return "This Category Name already Exist.";
		}

		$existing = $this->db->get_where('db_category', ['id' => $q_id])->row();
		$image = $existing->image ?? '';

		if (!empty($files['category_image']['name'])) {
			$config['upload_path'] = './uploads/category/';
			$config['allowed_types'] = 'jpg|jpeg|png|gif';
			$config['max_size'] = 2048;
			$config['encrypt_name'] = TRUE;
			$this->load->library('upload', $config);

			if ($this->upload->do_upload('category_image')) {
				$upload_data = $this->upload->data();
				$image = $upload_data['file_name'];

				// Delete old image
				if (!empty($existing->image) && file_exists('./uploads/category/'.$existing->image)) {
					unlink('./uploads/category/'.$existing->image);
				}
			} else {
				return "Image Upload Failed: " . $this->upload->display_errors();
			}
		}

		$info = array(
			'category_name' => $category,
			'description'   => $description,
			'image'         => $image,
			'store_id'      => $store_id,
		);

		$q1 = $this->db->where('id', $q_id)->update('db_category', $info);
		if($q1) {
			$cloud_info = array(
				'name'   => $category,
				'image'  => $image,
				'status' => 1,
				'flag'   => 1
			);
	
			$this->cloud_db->where('id', $q_id)->update('ecomApp_catagory', $cloud_info);
			$this->session->set_flashdata('success', 'Success!! Category Updated Successfully!');
			return "success";
		} else {
			return "failed";
		}
	}

	public function get_details($id, $data) {
		$query = $this->db->query("select * from db_category where upper(id)=upper('$id')");
		if($query->num_rows() == 0) {
			show_404(); exit;
		} else {
			$query = $query->row();
			$data['q_id'] = $query->id;
			$data['category_name'] = $query->category_name;
			$data['description'] = $query->description;
			$data['store_id'] = $query->store_id;
			$data['image'] = $query->image;
			return $data;
		}
	}

	public function update_status($id, $status) {
		if (set_status_of_table($id, $status, 'db_category')) {
			echo "success";
		} else {
			echo "failed";
		}
	}

	public function delete_categories_from_table($ids) {
		$tot = $this->db->query('SELECT COUNT(*) AS tot,b.category_name FROM db_items a,`db_category` b WHERE b.id=a.`category_id` AND a.category_id IN ('.$ids.') GROUP BY a.category_id');
		
		if($tot->num_rows() > 0) {
			foreach($tot->result() as $res) {
				$category_name[] = $res->category_name;
			}
			$list = implode(",", $category_name);
			echo "Sorry! Can't Delete,<br>Category Name {".$list."} already use in Items!";
			exit();
		} else {
			$this->db->where("id in ($ids)");
			if(!is_admin()) {
				$this->db->where("store_id", get_current_store_id());
			}
			$query1 = $this->db->delete("db_category");
			if ($query1) {
				echo "success";
			} else {
				echo "failed";
			}	
		}
	}
}
?>