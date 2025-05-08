<!Doctype html>
<html>
    
    
    	
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
		<table >

		
			
			
		 <thead>
		        <tr style="background-color: #e4eaff ;" class="text-bold">
			        <th colspan="1" style="width: 7px"><?= $this->lang->line("sl_no");?></th>
			        <th colspan="1" style="width: 25px" ><?=$this->lang->line("description")?></th>
			        <th colspan="1" style="width: 10px"><?=$this->lang->line("hsn")?></th>
			        <th colspan="1" style="width: 10px"><?=$this->lang->line("unit_cost")?></th>
			        <th colspan="1" style="width: 8px"><?=$this->lang->line("qty")?></th>
			       
			        <th colspan="1" style="width: 10px"><?=$this->lang->line("tax")?></th>
			        <th colspan="1" style="width: 10px"><?=$this->lang->line("tax_amt")?></th>
			    	
			        $<th colspan="1" style="width: 10px"><?=$this->lang->line("discount_per")?></th>
			        <th colspan="1" style="width: 10px"><?=$this->lang->line("amount")?></th>
		        </tr>
		    </thead>
		    <tbody>';
		       <?php  
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

              $this->CI->db->select(" c.description,c.item_name, a.sales_qty,a.tax_type,a.serial_no,
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
                  $discount_amt = (empty($res2->discount_amt)||$res2->discount_input==0)? '0':$res2->discount_amt."";
                  $before_tax=$res2->unit_total_cost;// * $res2->sales_qty;
                  $tot_cost_before_tax=$before_tax * $res2->sales_qty;

                  $price_per_unit = $res2->price_per_unit;
                  if($res2->tax_type=='Inclusive'){
                    $price_per_unit -= ($res2->tax_amt/$res2->sales_qty);
                  }

                  $tot_price = $price_per_unit * $res2->sales_qty;
                  ?>

                <tr style="" nobr="true">';
				      <td colspan="1" style="width: 7px"><?= $i++;?></td>';
				      <td colspan="1" style="width: 25px" >';
				      <?php echo $res2->item_name;?>
				      <?php echo (!empty($res2->serial_no)) ? "<br><i>Sl No-(".nl2br($res2->serial_no).")</i>" : '';
				     (!empty($res2->description)) ? "<br><i>[".nl2br($res2->description)."]</i>" : '';
				     ?>
				      </td>
				     <td colspan="1" style="width: 10px"><?= $res2->hsn;?></td>
				     <td colspan="1" class="text-right" style="width: 10px"><?= store_number_format($price_per_unit);?></td>
				     <td colspan="1" style="width: 8px"><?= format_qty($res2->sales_qty);?></td>
				     <?php if($show_tax){ ?>
					     <td colspan="1" style="width: 10px"><?=$res2->tax_name;?></td>
					      <td colspan="1" class="text-right" style="width: 10px"><?=store_number_format($res2->tax_amt);?></td>
					<?php  } ?>
				     <td colspan="1" class="text-right" style="width: 10px"><?=store_number_format($discount_amt);?></td>
				      <td colspan="1" class="text-right" style="width: 10px"><?=store_number_format($res2->total_cost);?></td>
		          </tr>
            <?php
                  $tot_qty +=$res2->sales_qty;
                  $tot_tax_amt +=$res2->tax_amt;
                  $tot_discount_amt +=$res2->discount_amt;
                  $tot_unit_total_cost +=$res2->unit_total_cost;
                  $tot_before_tax +=$before_tax;
                  $tot_total_cost +=$res2->total_cost;
                  $tot_price_per_unit +=$price_per_unit;
                  $sum_of_tot_price +=$tot_price;

              }
            ?>
		   </tbody>
		    
		</table>
	

	<table>
		            <tbody>

		            	<tr nobr="true" class="text-bold">

		                <td colspan="3"  style="width:(7+25+10)%">';
		                	<?=$this->CI->lang->line("total");?>
		                </td>

		                <td colspan="1" class="text-right" style="width:'.($colWidthSize['unit_cost']).'%">
		                	$tbl .=store_number_format($tot_price_per_unit);
		                	$tbl .='</td>';

		                	$tbl .='<td colspan="1" style="width:'.($colWidthSize['qty']).'%">';
		                	$tbl .=format_qty($tot_qty);
		                	$tbl .='</td>';
		                	if($show_tax){
			                	$tbl .='<td colspan="1" class="text-right" style="width:'.($colWidthSize['tax']).'%">';
			                	$tbl .='';
			                	$tbl .='</td>';

			                	$tbl .='<td colspan="1" class="text-right" style="width:'.($colWidthSize['tax_amt']).'%">';
			                	$tbl .=store_number_format($tot_tax_amt);
			                	$tbl .='</td>';
			                }

			                $tbl .='<td colspan="1" class="text-right" style="width:'.($colWidthSize['disc']).'%">';
		                	$tbl .=store_number_format($tot_discount_amt);
		                	$tbl .='</td>';

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
		                	$tbl .=store_number_format($tot_total_cost);
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
		                	$tbl .="[";
		                	$tbl .=store_number_format($sales->discount_to_all_input)." ".(($sales->discount_to_all_type=='percentage') ? '%' : 'Fixed');
		                	$tbl .="]";
		                	$tbl .='</td>
		                	<td colspan="1" class="text-right" style="width:'.($colWidthSize['amount']).'%">';
		                	$tbl .=store_number_format($sales->other_charges_amt);
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
		                	$tbl .="<b>".store_number_format($sales->grand_total)."</b>";
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
		            	$tbl .='<tr nobr="true">
		                	<td colspan="'.((!$show_tax)?7:9).'" style="width:'.($sumOfWidth).'%; height:30px;">';
		                	$tbl .="<b>".$this->CI->lang->line("note")."</b>: ".nl2br($sales->sales_note);
		                	$tbl .='</td>';
		                $tbl .='</tr>';


		            $tbl .='</tbody>
		        </table>
		       
		        ';

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
    
    
    
    
</html>