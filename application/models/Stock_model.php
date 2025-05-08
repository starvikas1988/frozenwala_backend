<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Stock_model extends CI_Model {
    protected $cloud_db;

    public function __construct() {
        parent::__construct();
        $this->cloud_db = $this->load->database('cloud', TRUE);
    }

    public function get_all_stocks() {
        return $this->db
            ->select('e.*, i.item_name')
            ->from('ecomApp_stock e')
            ->join('db_items i', 'i.id = e.item_id_id', 'left')
            ->order_by('e.id', 'desc')
            ->get()
            ->result();
    }

    public function get_stock_by_id($id) {
        return $this->db->get_where('ecomApp_stock', ['id' => $id])->row();
    }

    public function get_all_items() {
        return $this->db->get('db_items')->result();
    }

    public function insert_stock($data) {
        // Insert into local DB
        $inserted = $this->db->insert('ecomApp_stock', $data);

        // Insert into cloud DB
        $this->cloud_db->insert('ecomApp_stock', $data);

        return $inserted;
    }

    public function get_stock($id) {
        return $this->db->get_where('ecomApp_stock', ['id' => $id])->row();
    }

    public function update_stock($id, $data) {
        // Get item_id_id for this stock record
        $stock = $this->db->get_where('ecomApp_stock', ['id' => $id])->row();
       
        if ($stock) {
            $item_id_id = $stock->item_id_id;
    
            // Update ecomApp_stock in both local and cloud DBs
            $this->db->where('id', $id)->update('ecomApp_stock', $data);
            //echo $this->db->last_query();
            
            $this->cloud_db->where('item_id_id', $item_id_id)->update('ecomApp_stock', $data);
    
            // Now update the cloud menu_management_item with openingstock and piece_count
            $update_item_data = [];
            if (isset($data['openingstock'])) {
                $update_item_data['opening_stock'] = $data['openingstock']; // assuming DB column is opening_stock
            }
            if (isset($data['piece_count'])) {
                $update_item_data['piece_count'] = $data['piece_count'];
            }
    
            if (!empty($update_item_data)) {
                $this->cloud_db->where('id', $item_id_id)->update('menu_management_item', $update_item_data);
            }
    
            return true;
        }
    
        return false;
    }

    public function delete_stock($id) {
        // Get item_id_id for this stock record
        $stock = $this->db->get_where('ecomApp_stock', ['id' => $id])->row();
    
        if ($stock) {
            $item_id_id = $stock->item_id_id;
    
            // Delete from both local and cloud ecomApp_stock tables
            $this->db->delete('ecomApp_stock', ['id' => $id]);
            $this->cloud_db->delete('ecomApp_stock', ['id' => $id]);
    
            // Also reset openingstock and piece_count in menu_management_item
            $this->cloud_db->where('id', $item_id_id)->update('menu_management_item', [
                'opening_stock' => 0,
                'piece_count' => 0,
            ]);
    
            return true;
        }
    
        return false;
    }
    
}
