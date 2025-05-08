<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Stock extends MY_Controller {
    protected $cloud_db;

    public function __construct() {
        parent::__construct();
        $this->load_global();
        $this->cloud_db = $this->load->database('cloud', TRUE);
        $this->load->model('Stock_model','Stock_model');
    }

    public function index() {
        $theme_link = base_url('theme/'); // or wherever your theme folder is located
        $data = [
            'base_url' => base_url(),
            'theme_link' => $theme_link,
            'page_title' => 'Stock Management',
            // any other data
        ];
        $data['SITE_TITLE'] = "Frozenwala";
        $data['VERSION'] = "v2.9.0";
        $data['stocks'] = $this->Stock_model->get_all_stocks();
        $this->load->view('stock/index', $data);
    }

    public function create() {
        $data['page_title'] = 'Add Stock';
        $theme_link = base_url('theme/'); // or wherever your theme folder is located
        $data = [
            'base_url' => base_url(),
            'theme_link' => $theme_link,
            'page_title' => 'Stock Management',
            // any other data
        ];
        $data['SITE_TITLE'] = "Frozenwala";
        $data['VERSION'] = "v2.9.0";
        $data['items'] = $this->Stock_model->get_all_items();
        // echo"<pre>";
        // print_r($data['items']);
        // echo"</pre>";
        // exit();
        $this->load->view('stock/create', $data);
    }

    public function store() {
        $data = [
            'openingstock' => $this->input->post('openingstock'),
            'item_id_id' => $this->input->post('item_id'),
            'piece_count' => $this->input->post('piece_count'),
            'created_at'    => date('Y-m-d H:i:s'),
            'flag' => 1
        ];
        $this->Stock_model->insert_stock($data);
        try {
            $this->cloud_db->insert('ecomApp_stock', $data);
        } catch (Exception $e) {
            log_message('error', 'Failed to insert stock into cloud DB: ' . $e->getMessage());
            // Optionally show a flash message or notification
        }
        redirect('stock');
    }

    public function edit($id) {
        $this->load->helper('form');
        $data['page_title'] = 'Edit Stock';
        $theme_link = base_url('theme/'); // or wherever your theme folder is located
        $data = [
            'base_url' => base_url(),
            'theme_link' => $theme_link,
            'page_title' => 'Stock Management',
            // any other data
        ];
        $data['SITE_TITLE'] = "Frozenwala";
        $data['VERSION'] = "v2.9.0";
        $data['stock'] = $this->Stock_model->get_stock($id);
        $data['items'] = $this->Stock_model->get_all_items();
        $this->load->view('stock/edit', $data);
    }

    public function update($id) {
        $data = [
            'item_id_id' => $this->input->post('item_id_id'),
            'openingstock' => $this->input->post('openingstock'),
            'piece_count' => $this->input->post('piece_count'),
            'flag' => 1,
            'updated_at' => date('Y-m-d H:i:s') // Optional: if you track update time
        ];
        $this->Stock_model->update_stock($id, $data);
        try {
            $this->cloud_db->where('item_id_id', $data['item_id_id']);
            $this->cloud_db->update('ecomApp_stock', $data);
        } catch (Exception $e) {
            log_message('error', 'Failed to update stock in cloud DB: ' . $e->getMessage());
        }
        
        redirect('stock');
    }

   
    

    public function delete($id) {
        // First, fetch item_id_id for the given id
        $stock = $this->Stock_model->get_stock_by_id($id); // You need to implement this method if it doesn't exist
        
        // Proceed with local delete
        $this->Stock_model->delete_stock($id);
    
        // Then delete from cloud using item_id_id
        try {
            if ($stock && isset($stock->item_id_id)) {
                $this->cloud_db->where('item_id_id', $stock->item_id_id);
                $this->cloud_db->delete('ecomApp_stock');
            }
        } catch (Exception $e) {
            log_message('error', 'Failed to delete stock from cloud DB: ' . $e->getMessage());
        }
    
        redirect('stock');
    }
    

    // public function delete($id) {
    //     $this->Stock_model->delete_stock($id);
    //     try {
    //         $this->cloud_db->where('id', $id);
    //         $this->cloud_db->delete('ecomApp_stock');
    //     } catch (Exception $e) {
    //         log_message('error', 'Failed to delete stock from cloud DB: ' . $e->getMessage());
    //     }
        
    //     redirect('stock');
    // }
}
