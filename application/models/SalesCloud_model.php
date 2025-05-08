<?php
class SalesCloud_model extends CI_Model {
    protected $cloud_db;
    public function __construct() {
        parent::__construct();
        $this->cloud_db = $this->load->database('cloud', TRUE);
    }

    public function get_sales($filters, $limit, $start) {
        $this->cloud_db->select('
            order_order.*, 
            ecomApp_customuser.name AS customer_name, 
            menu_management_item.title AS product_name,
            menu_management_item.id AS product_id,
        ');
        $this->cloud_db->from('order_order');
        $this->cloud_db->join('ecomApp_customuser', 'ecomApp_customuser.id = order_order.user_id_id', 'left');
        $this->cloud_db->join('menu_management_item', 'menu_management_item.id = order_order.product_id_id', 'left');
    
        if (!empty($filters['customer_id'])) {
            $this->cloud_db->where('order_order.user_id_id', $filters['customer_id']);
        }
        if (!empty($filters['product_id'])) {
            $this->cloud_db->where('order_order.product_id_id', $filters['product_id']);
        }
        if (!empty($filters['date'])) {
            $date = DateTime::createFromFormat('d-m-Y', $filters['date']);
            $formatted_date = $date->format('Y-m-d');

            $this->cloud_db->where('DATE(order_order.created_at)', $formatted_date);

        }
    
        $this->cloud_db->limit($limit, $start);
        $query = $this->cloud_db->get();
    
        $results = $query->result();
    
        foreach ($results as $row) {
           
            if (
                $row->payment_id &&
                $row->signature &&
                $row->order_id &&
                $row->status == 1 &&
                $row->stock_updated != 1
            ) {
               
              
                $this->decrement_stock($row->product_id_id, $row->quantity);
                $this->cloud_db->where('id', $row->id);
                $this->cloud_db->update('order_order', ['stock_updated' => 1]);
            }
        }
    
        return $results;
    }
    

    public function count_sales($filters) {
        $this->cloud_db->select('COUNT(*) as count')->from('order_order');

        if ($filters['customer_id']) {
            $this->cloud_db->where('user_id_id', $filters['customer_id']);
        }
        if ($filters['product_id']) {
            $this->cloud_db->where('product_id_id', $filters['product_id']);
        }
        if ($filters['date']) {
            $this->cloud_db->like('created_at', $filters['date']);
        }

        $query = $this->cloud_db->get();
        return $query->row()->count;
    }

    public function decrement_stock($product_id, $quantity) {
        $this->cloud_db->set('openingstock', "openingstock - $quantity", FALSE);
        $this->cloud_db->where('item_id_id ', $product_id);
        $this->cloud_db->update('ecomApp_stock');

        // Decrement in local DB
        $this->db->set('openingstock', "openingstock - $quantity", FALSE);
        $this->db->where('item_id_id', $product_id);
        $this->db->update('ecomApp_stock');

        $this->cloud_db->set('openingstock', "openingstock - $quantity", FALSE);
        $this->cloud_db->where('id', $product_id); // menu_management_item uses 'id'
        $this->cloud_db->update('menu_management_item');

        $this->db->set('openingstock', "openingstock - $quantity", FALSE);
        $this->db->where('id', $product_id);
        $this->db->update('db_items');
       // echo $this->cloud_db->last_query();
        //die("okk");
    }

    public function delete_sale($id) {
        $this->cloud_db->where('order_id', $id);
        $this->cloud_db->delete('influencer_influenceramount');

        $this->cloud_db->where('id', $id);
        $this->cloud_db->delete('order_order');
    }

    public function get_customers() {
        return $this->cloud_db->get('ecomApp_customuser')->result();
    }

    public function get_products() {
        return $this->cloud_db->get('menu_management_item')->result();
    }

    public function get_sale_by_id($id) {
        $this->cloud_db->select('order_order.*, ecomApp_customuser.name as customer_name, menu_management_item.title as product_name');
        $this->cloud_db->from('order_order');
        $this->cloud_db->join('ecomApp_customuser', 'ecomApp_customuser.id = order_order.user_id_id', 'left');
        $this->cloud_db->join('menu_management_item', 'menu_management_item.id = order_order.product_id_id', 'left');
        $this->cloud_db->where('order_order.id', $id);
        return $this->cloud_db->get()->row();
     }
  
     public function update_sale($id, $data) {
        $this->cloud_db->where('id', $id);
        return $this->cloud_db->update('order_order', $data);
     }

     public function get_all_sales() {
        return $this->cloud_db
            ->select('o.id as order_id,o.product_id_id as product_id, c.name as customer_name, p.title as product_name, o.quantity, o.total_price, o.status, o.created_at')
            ->from('order_order o')
            ->join('ecomApp_customuser c', 'c.id = o.user_id_id', 'left')
            ->join('menu_management_item p', 'p.id = o.product_id_id', 'left')
            ->order_by('o.created_at', 'desc')
            ->get()
            ->result();
    }
    
}
?>