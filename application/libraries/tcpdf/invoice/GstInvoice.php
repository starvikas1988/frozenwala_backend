<?php

include ('MyPDF.php');

class GstInvoice extends MyPDF
{
    //public $CI=null;

    protected $sales_id = null;

    //public $store =array();

    protected $customer = array();

    protected $sales = array();

    public $customer_state_name = null;


    public function __construct(array $param = array())
    {
        parent::__construct();

        $this->sales_id = $param['sales_id'];

        //$this->CI =& get_instance();

        //$this->store = get_store_details();//Declared in MyPDF Pa

        $this->sales = get_sales_details($this->sales_id);

        $this->customer = get_customer_details($this->sales->customer_id);

    }
    public function _get_customer_details()
    {

        $customer = $this->customer;//array()

        $store = $this->store;//array()

        //Customer Records
        $state = (!empty($customer->state_id)) ? get_state_details($customer->state_id) : '';
        $this->customer_state_name = (!empty($state)) ? $state->state : $store->state;

        $w = 100;
        $h = 35;

        $custmer_details = '<span style="font-size:12px;text-align:center;font-weight:bold;">Details of Receiver(Billing Address):</span>';
        $custmer_details .= "<br><b>" . $this->CI->lang->line('name') . "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</b>" . $customer->customer_name;
        $custmer_details .= "<br><b>" . $this->CI->lang->line('address') . "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</b> " . $customer->address;
        $custmer_details .= "<br><b>" . $this->CI->lang->line('postcode') . "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</b> " . $customer->postcode;
        $custmer_details .= "<br><b>" . $this->CI->lang->line('mobile') . "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</b> " . $customer->mobile;
        $custmer_details .= "<br><b>" . $this->CI->lang->line('email') . " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</b> " . $customer->email;
        $custmer_details .= "<br><b>" . $this->CI->lang->line('gst_number') . "&nbsp;:&nbsp;</b> " . $customer->gstin;

        //$this->setCellMargins(1,1,1,1);
        $this->setCellPaddings(2, 1, 1, 1);
        $this->setFont($this->get_font_name(), '', 9);
        $this->setFillColor(255, 255, 255);

        $this->writeHTMLCell($w, $h, $x = '6', $y = '52', $custmer_details, 1, 1, 1, true, 'J', true);
        return $this;
    }

    public function _get_shipping_address()
    {
        $w = 100;
        $h = 40;

        $customer = $this->customer;//array()
        //Customer Shipping Address Records
        $country = '';
        $state = '';
        $city = '';
        $address = '';
        $postcode = '';
        if (!empty($customer->shippingaddress_id)) {
            $Q2 = $this->CI->db->select("c.country,s.state,a.city,a.postcode,a.address")
                ->where("a.id", $customer->shippingaddress_id)
                ->from("db_shippingaddress a")
                ->join("db_country c", "c.id = a.country_id", 'left')
                ->join("db_states s", "s.id = a.state_id", 'left')
                ->get();
            if ($Q2->num_rows() > 0) {
                $country = $Q2->row()->country;
                $address = $Q2->row()->address;
                $state = $Q2->row()->state;
                $city = $Q2->row()->city;
                $postcode = $Q2->row()->postcode;
            }
        }

        $custmer_details = '<span style="font-size:12px;text-align:center;font-weight:bold;">Details of Consignee(Shipping Address):</span>';

        $custmer_details .= "<br><b>" . $this->CI->lang->line('mobile') . " :</b> " . $customer->mobile;
        $custmer_details .= "<br><b>" . $this->CI->lang->line('name') . " :</b> " . $customer->customer_name;
        $custmer_details .= "<br><b>" . $this->CI->lang->line('address') . " :</b> " . $address;
        $custmer_details .= "<br><b>" . $this->CI->lang->line('postcode') . " :</b> " . $postcode;
        $custmer_details .= "<br><b>" . $this->CI->lang->line('city') . " :</b> " . $city;
        $custmer_details .= "<br><b>" . $this->CI->lang->line('state') . " :</b> " . $state;

        $this->writeHTMLCell($w, $h, $x = '104', $y = '90', $custmer_details, 1, 1, 1, true, 'J', true);
        return $this;
    }


    public function _get_invoice_details()
    {
        $sales = $this->sales;//array()
//echo "<pre>";print_r($sales);die();
        $w = 100;
        $h = 40;
        $invoice_details = "";
        $invoice_details = '<span style="font-weight: bold;">Type of Invoice</span> <span style="margin:1px 10px 6px 39px;">:  </span> <span style="font-weight:bold;">CASH/BANK/CARD </span><br/>';
        $invoice_details .= '<span style="font-weight: bold;">Transportation Mode</span> <span style="margin:1px 10px 6px 9px;">:  </span> <span>By Road </span><br/>';
        $invoice_details .= '<span style="font-weight: bold;">Vehicle No.</span> <span style="margin:1px 10px 6px 63px;">:  </span> <span>NA </span><br/>';
        $invoice_details .= '<span style="font-weight: bold;">Date of Supply</span> <span style="margin:1px 10px 6px 44px;">:  </span> <span>29-05-2024 </span><br/>';
        $invoice_details .= '<span style="font-weight: bold;">Place of Supply</span> <span style="margin:1px 10px 6px 41px;">:  </span> <span>WEST BENGAL(19) </span><br/>';

        $this->setCellPaddings(2, 1, 1, 1);
        $this->setFont($this->get_font_name(), '', 9);
        $this->setFillColor(255, 255, 255);
        $this->writeHTMLCell($w, $h, $x = '6', $y = '', $invoice_details, 1, 0, 1, true, 'J', true);
        return $this;
    }


    public function _get_bank_details()
    {
        $store = $this->store;
        $sales = $this->sales;//array()
        $w = 100;
        $h = 35;
        $invoice_details = "";
        $invoice_details = '<span style="font-weight: bold;">Invoice No.</span> <span style="margin:1px 10px 6px 43px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</span> <span>' . $sales->sales_code . '</span><br/>';
        $invoice_details .= '<span style="font-weight: bold;">Invoice Date</span> <span style="margin:1px 10px 6px 35px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</span> <span>' . show_date($sales->sales_date) . '</span><br/>';
        $invoice_details .= '<span style="font-weight: bold;">Against Order No.</span> <span style="margin:1px 10px 6px 7px;">:  </span> <span>' . $sales->sales_code . ' </span><br/>';
        $invoice_details .= '<span style="font-weight: bold;">Order Date</span> <span style="margin:1px 10px 6px 44px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</span> <span>' . show_date($sales->sales_date) . ' </span><br/>';

        $this->setCellPaddings(3, 1, 1, 1);
        $this->setFont($this->get_font_name(), '', 9);
        $this->setFillColor(255, 255, 255);
        $this->writeHTMLCell($w, $h, $x = '104', $y = '', $invoice_details, 1, 0, 1, true, 'J', true);
        return $this;
    }


    public function show_pdf()
    {
        $this->_main_body();
    }



    public function _main_body()
    {
        $sales = $this->sales;//array()
        $store = $this->store;//array()
        $customer = $this->customer;//array()



        $this->_invoice_name = "<u style='font-weight:500'>TAX INVOICE CUM DELIVERY CHALLAN</u>";

        $this->page_title = "GST Invoice";

        //Don't change this
        $this->_invoice_format = 'GST';

        //$this->_QRCODE = $sales->sales_code;

        // set font
        $this->setFont($this->get_font_name(), 'B', 20);

        // add a page
        $this->AddPage();

        // Invoice Details
        //$this->_get_invoice_details();

        // Bank Details
        $this->_get_bank_details();

        // Cusomer Details
        $this->_get_customer_details();

        // Shipping Details
        //$this->_get_shipping_address(); 



        //Set document name (footer -R)
        $this->_set_document_name($this->CI->lang->line("invoice_number"));

        //Sey document number (footer -R)
        $this->_set_document_number($sales->sales_code);

        //Search Coupon Details
        $coupon_code = $coupon_type = '';
        $coupon_value = 0;
        if (!empty($sales->coupon_id)) {
            $coupon_details = get_customer_coupon_details($sales->coupon_id);
            $coupon_code = $coupon_details->code;
            $coupon_value = $coupon_details->value;
            $coupon_type = $coupon_details->type;
        }
        $this->setFont($this->get_font_name(), '', 8);

        // set cell padding
        $this->setCellPaddings(1, 1, 1, 1);

        // set cell margins
        //$this->setCellMargins(1, 1, 1, 1);

        // set color for background
        $this->setFillColor(255, 255, 255);

        $this->Ln(0);



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
			.bg-light-blue{
				background-color: #e4eaff;
			}
			
		</style>
		<table >';

        $widthArray = array(
            'sl_no' => '5',
            'description' => '29',
            'hsn' => '12',
            'gst_rate' => '10',
            'qty' => '10',
            'before_tax' => '12',
            'discount' => '10',
            'amount' => '12',

        );

        //Sum the value
        $sumOfWidth = 0;

        $colW = array();
        foreach ($widthArray as $key => $val) {


            //Update value
            $colWidthSize[$key] = $val;

            //New Array => Reasssign % symbol
            $colW[$key] = $val . '%';

            //Sum of value
            $sumOfWidth += $val;
        }



        $tbl .= '<thead>
                            <tr>
                                <th width="30">Sl.</th>
                                <th width="227">Description</th>
                                <th>HSN</th>
								<th width="30">Qty</th>
                                <th>Basic Price</th>
                                <th>Taxable <br/> Value</th>
                                <th width="40">CGST <br/> %</th>
                                <th width="40">CGST <br/> Amt</th>
                                <th width="40">SGST <br/> %</th>
                                <th width="40">SGST <br/> Amt</th>
                                <th>Amount</th>
                            </tr> 
		    </thead>
		    <tbody>';

        $i = 1;
        $tot_qty = 0;
        $tot_sales_price = 0;
        $tot_tax_amt = 0;
        $tot_discount_amt = 0;
        $tot_unit_total_cost = 0;
        $tot_total_cost = 0;
        $tot_before_tax = 0;

        $tot_price_per_unit = 0;
        $sum_of_tot_price = 0;
        $tot_taxable_value = 0;
        $tot_cgst_amt = 0;
        $tot_sgst_amt = 0;


        $this->CI->db->select(" a.description,c.item_name, a.sales_qty,a.tax_type,a.serial_no,
                                  a.price_per_unit, b.tax,b.tax_name,a.tax_amt,
                                  a.discount_input,a.discount_amt, a.unit_total_cost,
                                  a.total_cost , d.unit_name,c.sku,c.hsn,c.brand_id,c.category_id
                              ");
        $this->CI->db->where("a.sales_id", $this->sales_id);
        $this->CI->db->from("db_salesitems a");
        $this->CI->db->join("db_tax b", "b.id=a.tax_id", "left");
        $this->CI->db->join("db_items c", "c.id=a.item_id", "left");
        $this->CI->db->join("db_units d", "d.id = c.unit_id", "left");

        $q2 = $this->CI->db->get();
       
        foreach ($q2->result() as $res2) {
                    $this->CI->db->select('*');
				    $this->CI->db->from('db_brands');
				    $this->CI->db->where('id',$res2->brand_id);
				    $get_brand_details = $this->CI->db->get()->result();
				    
				    $this->CI->db->select('*');
				    $this->CI->db->from('db_category');
				    $this->CI->db->where('id',$res2->category_id);
				    $get_category_details = $this->CI->db->get()->result();
				    
            $discount = (empty($res2->discount_input) || $res2->discount_input == 0) ? store_number_format(0) : store_number_format($res2->discount_input) . "%";
            $discount_amt = (empty($res2->discount_amt) || $res2->discount_input == 0) ? '0' : $res2->discount_amt . "";
            $before_tax = $res2->price_per_unit;// * $res2->sales_qty;
            $tot_cost_before_tax = $res2->total_cost;//$before_tax * $res2->sales_qty;

            $tax_type = ($res2->tax_type == 'Exclusive') ? 'Exc.' : 'Inc.';
            
                   

            $tbl .= '<tr>';
            $tbl .= '<td width="30" height="">' . $i++ . '</td>';
            $tbl .= '<td width="227" height="70">';
            $tbl .= $res2->item_name.'['.$get_brand_details[0]->brand_name.', '.$get_category_details[0]->category_name.']';
            $tbl .= (!empty($res2->description)) ? "<br><i>[" . nl2br($res2->description) . "]</i>" : '';
            $tbl .= (!empty($res2->serial_no)) ? "<br><i>Sl No:[" . nl2br($res2->serial_no) . "]</i>" : '';
            $tbl .= '</td>';
            $tbl .= '<td >';
            $tbl .= $res2->hsn;
            $tbl .= '</td>';
            $tbl .= '<td width="30">';
            $tbl .= format_qty($res2->sales_qty);
            $tbl .= '</td>';
            $tbl .= '<td >';
            $tbl .= store_number_format($before_tax, 2);
            $tbl .= '</td>';
            $tbl .= '<td >';
            $tbl .= format_qty(($res2->price_per_unit * $res2->sales_qty) - $discount_amt);
            $tbl .= '</td>';
            $tbl .= '<td width="40">';
            $tbl .= store_number_format($res2->tax / 2);
            $tbl .= '</td>';
            $tbl .= '<td width="40">';
            $tbl .= store_number_format($res2->tax_amt / 2);
            $tbl .= '</td>';
            $tbl .= '<td width="40">';
            $tbl .= store_number_format($res2->tax / 2);
            $tbl .= '</td>';
            $tbl .= '<td width="40">';
            $tbl .= store_number_format($res2->tax_amt / 2);
            $tbl .= '</td>';
            $tbl .= '<td >';
            $tbl .= format_qty(($res2->price_per_unit * $res2->sales_qty) - $discount_amt) + ($res2->tax_amt);
            $tbl .= '</td>';
            $tbl .= '</tr>';

            $tot_qty += $res2->sales_qty;
            $tot_sales_price += $res2->price_per_unit;
            $tot_tax_amt += $res2->tax_amt;
            $tot_discount_amt += $res2->discount_amt;
            $tot_unit_total_cost += $res2->unit_total_cost;
            $tot_before_tax += $before_tax;
            $tot_total_cost += $tot_cost_before_tax;
            $tot_taxable_value += format_qty(($res2->price_per_unit * $res2->sales_qty) - $discount_amt);
            $tot_cgst_amt += $res2->tax_amt / 2;
            $tot_sgst_amt += $res2->tax_amt / 2;
        }

        $this->CI->db->select("*");
        $this->CI->db->from("db_sales");
        $this->CI->db->where("id", $this->sales_id);
        //echo $this->CI->db->get_compiled_select();exit();
        $q4 = $this->CI->db->get();
        $get_sales_details = $q4->result();

        $this->CI->db->select("*");
        $this->CI->db->from("db_finance");
        $this->CI->db->where("id", $get_sales_details[0]->finance_id);
        //echo $this->CI->db->get_compiled_select();exit();
        $q5 = $this->CI->db->get();
        $get_finance_details = $q5->result();




        $tbl .= '<tr>';
        $tbl .= '<td>Total</td>';
        $tbl .= '<td></td>';
        $tbl .= '<td></td>';
        $tbl .= '<td>';
        $tbl .= format_qty($tot_qty);
        $tbl .= '</td>';
        $tbl .= '<td></td>';
        $tbl .= '<td>';
        $tbl .= $tot_taxable_value;
        $tbl .= '</td>';
        $tbl .= '<td></td>';
        $tbl .= '<td>';
        $tbl .= store_number_format($tot_cgst_amt);
        $tbl .= '</td>';
        $tbl .= '<td></td>';
        $tbl .= '<td>';
        $tbl .= store_number_format($tot_sgst_amt);
        $tbl .= '</td>';
        $tbl .= '<td>';
        $tbl .= store_number_format($tot_total_cost);
        $tbl .= '</td>';
        $tbl .= '</tr>';
        $tbl .= '</tbody>
			
		    
		</table>
		';

        $tbl .= '<table width="100%" cellspacing="0" cellpadding="2" border="0">
                            <tr>
                                <td style="font-size:12px;width:77%;" ><strong>Total </strong> : ' . no_to_words($tot_total_cost) . '</td>
                                
                                <td style="font-size:12px;width:23%;text-align: right;"><strong> ' . store_number_format($tot_total_cost) . '</strong></td>
                             </tr>
                        </table> 
		       
		        ';
        //Tax Details

        $this->CI->db->select("*");
        $this->CI->db->where("sales_id", $this->sales_id);
        $this->CI->db->from("db_salespayments");
        $get_sale_payments = $this->CI->db->get();
        $res3 = $get_sale_payments->result();








        $tbl .= ' <div style="border:1px solid black; margin:0px 5px 0px 5px">
                            <table width="100%" cellspacing="0" cellpadding="2" border="0">
                                <tr style="border-bottom:1px solid black;">
                                    <td width="100%" style="border-bottom:1px solid black;text-align:left;font-weight:bold;">P A Y M E N T</td>
                                </tr>
                            </table>
                            <table width="100%" cellspacing="0" cellpadding="2" border="0">
                                <tr>
                                    <th>Payment Type</th>
                                    <th>Ref. No</th>
                                    <th>Cheque Date</th>
                                    <th>Auth No.</th>
                                    <th>Bank Name</th>
                                    <th>Card Type</th>
                                    <th>Branch Name</th>
                                    <th>Total Coupon</th>
                                    <th>Coupon Type</th>
                                    <th>Amount</th>
                                </tr>                                
                            </table>
                            <table width="100%" cellspacing="0" cellpadding="2" border="0" style="border-top:1px solid black;">
                                <tr>
                                    <td>' . $res3[0]->payment_type . '</td>
                                    <td>'.$get_sales_details[0]->reference_no.'</td>
                                    <td>N/A</td>
                                    <td>N/A</td>
                                    <td>N/A</td>
                                    <td>N/A</td>
                                    <td>N/A</td>
                                    <td>N/A</td>
                                    <td>N/A;</td>
                                    <td>' . store_number_format($tot_total_cost) . '</td>
                                </tr> 
                            </table>
                        </div> ';

                        

        $tbl .= '<div style="margin-top: 5px !important;border:1px solid black; margin:0px 5px 0px 5px">
                            <table width="100%" cellspacing="0" cellpadding="2" border="0">
                                <tr style="border-bottom:1px solid black;">
                                    <td width="100%" style="border-bottom:1px solid black;text-align:left;font-weight:bold;">ADVANCE RECEIPT DETAILS</td>
                                </tr>
                            </table>
                            <table width="100%" cellspacing="0" cellpadding="2" border="0">
                                <tr>
                                    <th width="40%" style="text-align:left;">Advance Receipt No</th>
                                    <th width="30%" style="text-align:center;">Adv. Receipt Date</th>
                                    <th width="30%" style="text-align:right;">Adv. Receipt Value</th>
                                </tr>                                
                            </table>
                            <table width="100%" cellspacing="0" cellpadding="2" border="0" style="border-top:1px solid black;">
                                <tr>
                                    <td width="40%" style="text-align:left;">N/A</td>
                                    <td width="30%" style="text-align:center;">N/A</td>
                                    <td width="30%" style="text-align:right;">N/A</td>                                    
                                </tr> 
                            </table>
                        </div>  ';




        //HSN wise tax group
        $tot_price_before_tax = $tot_price_after_tax = $tot_cgst_amt = $tot_sgst_amt = $tot_sgst_amt = $tot_igst_amt = 0;
        $this->CI->db->select("c.item_name,
                        				   COALESCE(SUM(a.price_per_unit),0) AS price_before_tax, 
                                           b.tax,b.tax_name,c.hsn,
                                           COALESCE(SUM(a.tax_amt),0) AS sum_of_tax_amt,
                                           COALESCE(SUM(a.total_cost),0) AS price_after_tax,c.tax_type,
                                           c.sku 
                                         ");

        $this->CI->db->where("a.sales_id", $this->sales_id);
        $this->CI->db->from("db_salesitems a");
        $this->CI->db->join("db_tax b", "b.id=a.tax_id", "left");
        $this->CI->db->join("db_items c", "c.id=a.item_id", "left");
        $this->CI->db->join("db_units d", "d.id = c.unit_id", "left");
        $this->CI->db->group_by("c.hsn,a.tax_id");
        $this->CI->db->order_by("a.id");
        //echo $this->CI->db->get_compiled_select();exit();
        $q2 = $this->CI->db->get();

        $i = 1;
        foreach ($q2->result() as $res2) {
            $hsn = $res2->hsn;
            //$price_before_tax = $res2->price_before_tax;
            $price_before_tax = $res2->price_before_tax;
            $price_after_tax = $res2->price_after_tax;

            $tax_per = $res2->tax;
            $sum_of_tax_amt = $res2->sum_of_tax_amt;

            $price_before_tax = $price_after_tax - $sum_of_tax_amt;

            $tax_type = '';
            //$tax_type = ($res2->tax_type=='Exclusive') ? 'Exc.' : 'Inc.';
            if ($customer->id == 1 || (strtoupper($this->customer_state_name) == strtoupper($store->state))) {
                $sgst_per = $cgst_per = $tax_per;
                $sgst_amt = $cgst_amt = $sum_of_tax_amt / 2;
                $igst_per = $igst_amt = 0;
            } else {
                $sgst_per = $cgst_per = 0;
                $sgst_amt = $cgst_amt = 0;
                $igst_per = $tax_per;
                $igst_amt = $sum_of_tax_amt;
            }








            $tot_price_before_tax += $price_before_tax;
            $tot_price_after_tax += (!empty($price_after_tax)) ? $price_after_tax : 0;
            $tot_cgst_amt += (!empty($cgst_amt)) ? $cgst_amt : 0;
            $tot_sgst_amt += (!empty($sgst_amt)) ? $sgst_amt : 0;
            $tot_igst_amt += (!empty($igst_amt)) ? $igst_amt : 0;

        }



        





        $tbl .= '<div style="margin:5px 5px 0px 5px; text-align:left;">
                            
                            <span>Sales Note : '.$get_sales_details[0]->sales_note.'</span>
                            <span>Payment Note : '.$res3[0]->payment_note.'</span>
                            <br/><br/> </div>';
                            
                            /*
                            <span><b>Banking Details:</b><br/>
                                <label>Finance Name : ' . $get_finance_details[0]->finance_name. ' &nbsp;&nbsp;&nbsp;&nbsp; Finance Amt. : ' . $get_sales_details[0]->finance_amount . '&nbsp;&nbsp;&nbsp;&nbsp; Total EMI Month : ' . $get_sales_details[0]->total_emi_month . '&nbsp;&nbsp;&nbsp;&nbsp; EMI/Month : ' . $get_sales_details[0]->emi_per_month . '</label> </span> */
                        
        $tbl .= '<table style="margin-top: 5px;width:100%;border-bottom:1px solid black;"></table>
                        <span style="font-size:10px;text-align: center;">
                            '.$get_sales_details[0]->invoice_terms.'<br/>
							
                        </span>'; 
                        

        //$tbl .='<table style="margin-top: 5px;width:100%;border-bottom:1px solid black;"></table>';
        $tbl .= '<table width="100%" cellspacing="0" cellpadding="2" border="0">
			   		<tr>
                                <td width="55%" style="text-align:left;font-size:10px; height:60px; border-bottom:none !important; border-right:none;">
					 				<span>Company Toll Free No. : N/A </span>
									<div style="padding:10px;" align="center">
										<span style="margin-top:70px !important; justify-content:flex-end;">Customer Signature</span>
									</div>									
								</td>
                                <td width="45%" style="text-align:center;font-size:10px;font-weight:bold;height:60px; border-bottom:none !important; border-left:none;">
					 				<span>E & O.E.</span>
									<div style="padding:10px;" align="center">
										<span style="margin-top:70px !important; justify-content:flex-end;">For MEGASFROZEN GOODS PVT. LTD.</span>
									</div>									
								</td>                                    
                    </tr>					
					</table>';



        //  echo $tbl;exit;
        $this->writeHTMLCell('', '', $x = '', $y = '', $tbl, 0, 1, 1, true, 'J', true);

        $this->Output('invoice_100.pdf', 'I');
    }

}