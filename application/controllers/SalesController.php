<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class SalesController extends MY_Controller {
    protected $cloud_db;

    public function __construct() {
        parent::__construct();
        $this->cloud_db = $this->load->database('cloud', TRUE);
        $this->load->model('SalesCloud_model');
        $this->load->library('pagination');
        $this->load->helper(array('form', 'url'));
        $this->load->helper('download'); 
    }

    public function index() {
        $data['title'] = 'Sales List';
        $filters = [
            'customer_id' => $this->input->get('customer_id'),
            'product_id' => $this->input->get('product_id'),
            'date' => $this->input->get('date'),
        ];

        $config['base_url'] = base_url('cloudsales/index');
        $config['total_rows'] = $this->SalesCloud_model->count_sales($filters);
        $config['per_page'] = 10;
        $config['full_tag_open'] = '<ul class="pagination justify-content-center">';
        $config['full_tag_close'] = '</ul>';

        $config['first_link'] = 'First';
        $config['first_tag_open'] = '<li class="page-item">';
        $config['first_tag_close'] = '</li>';

        $config['last_link'] = 'Last';
        $config['last_tag_open'] = '<li class="page-item">';
        $config['last_tag_close'] = '</li>';

        $config['next_link'] = '&raquo;';
        $config['next_tag_open'] = '<li class="page-item">';
        $config['next_tag_close'] = '</li>';

        $config['prev_link'] = '&laquo;';
        $config['prev_tag_open'] = '<li class="page-item">';
        $config['prev_tag_close'] = '</li>';

        $config['cur_tag_open'] = '<li class="page-item active"><a class="page-link" href="#">';
        $config['cur_tag_close'] = '</a></li>';

        $config['num_tag_open'] = '<li class="page-item">';
        $config['num_tag_close'] = '</li>';

        $config['attributes'] = ['class' => 'page-link']; // adds class to <a> tags

        $this->pagination->initialize($config);

        $page = ($this->uri->segment(2)) ? $this->uri->segment(2) : 0;
        $data['pagination_links'] = $this->pagination->create_links();

        // Don't overwrite $data here — just add to it
        $data['sales'] = $this->SalesCloud_model->get_sales($filters, $config['per_page'], $page);
        $data['customers'] = $this->SalesCloud_model->get_customers();
        $data['products'] = $this->SalesCloud_model->get_products();
        $data['base_url'] = base_url();
        $data['theme_link'] = base_url('theme/');
        $data['page_title'] = 'Sales Management';
        $data['SITE_TITLE'] = "Frozenwala";
        $data['VERSION'] = "v2.9.0";
        $data['filter_date'] = $filters['date'];
        $data['filter_customer'] = $filters['customer_id'];
        $data['filter_product'] = $filters['product_id'];

        $this->load->view('cloudsales/index', $data);
    }

    public function delete($id) {
        $this->SalesCloud_model->delete_sale($id);
        redirect('cloudsales');
    }

    public function edit($id) {
        $data['base_url'] = base_url();
        $data['theme_link'] = base_url('theme/');
        $data['page_title'] = 'Sales Management';
        $data['SITE_TITLE'] = "Frozenwala";
        $data['VERSION'] = "v2.9.0";
        $data['sale'] = $this->SalesCloud_model->get_sale_by_id($id);
        if (!$data['sale']) {
           show_404();
        }
        $this->load->view('cloudsales/edit', $data);
     }

     public function update($id) {
        $data = array(
           'quantity' => $this->input->post('quantity'),
           'total_price' => $this->input->post('total_price'),
           'status' => $this->input->post('status')
        );
  
        $this->SalesCloud_model->update_sale($id, $data);
  
        $this->session->set_flashdata('success', 'Sale updated successfully!');
        redirect('cloudsales');
     }

     public function download()
{
    $format = $this->input->get('format'); // csv or excel

    // Load model
    $this->load->model('cloudsales/SalesCloud_model');

    // Fetch data
    $sales = $this->SalesCloud_model->get_all_sales();

    if (empty($sales)) {
        $this->session->set_flashdata('error', 'No sales data to download.');
        redirect('cloudsales');
    }

    // Prepare header row
    $header = ['ORDER ID', 'PRODUCT ID', 'Customer', 'Product', 'Quantity', 'Total Price', 'Status', 'Date'];
    $filename = "sales_export_" . date("Ymd_His");

    if ($format === 'excel') {
        // Create tab-separated Excel file (simple format, opens in Excel)
        header("Content-Type: application/vnd.ms-excel");
        header("Content-Disposition: attachment; filename=\"{$filename}.xls\"");
        header("Pragma: no-cache");
        header("Expires: 0");

        // Output header
        echo implode("\t", $header) . "\n";

        // Output data rows
        foreach ($sales as $s) {
            echo implode("\t", [
                $s->order_id,
                $s->product_id,
                $s->customer_name,
                $s->product_name,
                $s->quantity,
                $s->total_price,
                $s->status == 1 ? 'Paid' : 'Pending',
                date('d-m-Y', strtotime($s->created_at))
            ]) . "\n";
        }

        exit;
    } else {
        // Export as CSV
        header("Content-Description: File Transfer");
        header("Content-Disposition: attachment; filename={$filename}.csv");
        header("Content-Type: application/csv; ");

        $file = fopen('php://output', 'w');

        // Write headers
        fputcsv($file, $header);

        // Write rows
        foreach ($sales as $s) {
            fputcsv($file, [
                $s->order_id,
                $s->product_id,
                $s->customer_name,
                $s->product_name,
                $s->quantity,
                $s->total_price,
                $s->status == 1 ? 'Paid' : 'Pending',
                date('d-m-Y', strtotime($s->created_at))
            ]);
        }

        fclose($file);
        exit;
    }
}


    //  public function download() {
     
    //     $format = $this->input->get('format'); // csv or excel
    
    //     // Load model
    //     $this->load->model('cloudsales/SalesCloud_model');
    
    //     // Fetch data (with filters if needed)
    //     $sales = $this->SalesCloud_model->get_all_sales();
    
    //     if (empty($sales)) {
    //         $this->session->set_flashdata('error', 'No sales data to download.');
    //         redirect('cloudsales');
    //     }
    
    //     // Prepare header row
    //     $header = ['ORDER ID','PRODUCT ID', 'Customer', 'Product', 'Quantity', 'Total Price', 'Status', 'Date'];
    
    //     $filename = "sales_export_" . date("Ymd_His");
    
    //     if ($format === 'excel') {
    //         // Export as Excel
    //         $this->load->library('excel');
    //         $objPHPExcel = new PHPExcel();
    //         $sheet = $objPHPExcel->getActiveSheet();
    
    //         // Set headers
    //         $sheet->fromArray($header, NULL, 'A1');
    
    //         $row = 2;
    //         foreach ($sales as $s) {
    //             $sheet->fromArray([
    //                 $s->order_id,
    //                 $s->product_id,
    //                 $s->customer_name,
    //                 $s->product_name,
    //                 $s->quantity,
    //                 $s->total_price,
    //                 $s->payment_id == 1 ? 'Paid' : 'Pending',
    //                 date('d-m-Y', strtotime($s->created_at)),
    //             ], NULL, 'A' . $row++);
    //         }
    
    //         // Redirect output to browser
    //         header('Content-Type: application/vnd.ms-excel');
    //         header("Content-Disposition: attachment;filename=\"{$filename}.xls\"");
    //         header('Cache-Control: max-age=0');
    //         $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
    //         $objWriter->save('php://output');
    //         exit;
    //     } else {
    //         // Export as CSV
    //         header("Content-Description: File Transfer");
    //         header("Content-Disposition: attachment; filename={$filename}.csv");
    //         header("Content-Type: application/csv; ");
    
    //         $file = fopen('php://output', 'w');
    
    //         // Write headers
    //         fputcsv($file, $header);
    
    //         // Write rows
    //         foreach ($sales as $s) {
    //             fputcsv($file, [
    //                 $s->order_id,
    //                 $s->product_id,
    //                 $s->customer_name,
    //                 $s->product_name,
    //                 $s->quantity,
    //                 $s->total_price,
    //                 $s->status == 1 ? 'Paid' : 'Pending',
    //                 date('d-m-Y', strtotime($s->created_at)),
    //             ]);
    //         }
    
    //         fclose($file);
    //         exit;
    //     }
    // }
    
}
?>
