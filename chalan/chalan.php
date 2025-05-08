<?php
$name = $_POST['entry'];
$name1 = $_POST['entry1'];
$name2 = $_POST['entry2'];
$name3 = $_POST['entry3'];
$name4 = $_POST['entry4'];
$name5 = $_POST['entry5'];
$name6 = $_POST['entry6'];
$name7 = $_POST['entry7'];
$name8 = $_POST['entry8'];
$name9 = $_POST['entry9'];


?>

<!DOCTYPE html>
<html>
<head>
	<title>Invoice Template Design</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<div class="wrapper">
	<div class="invoice_wrapper">
		<div class="header">
			<div class="logo_invoice_wrap">
				<div class="logo_sec">
					<img src="codingboss.png" alt="code logo">
					<div class="title_wrap">
						<p class="title bold">JEE ELECTRONICS</p>
						<p class="sub_title">anythis for your thinking machine...</p>
						<p class="sub_title">Fartabad, Near Kather Bari,</p>
						<p class="sub_title">P.O: Gari, Kolkata -700084</p>
						<p class="sub_title">M:+91 98304 40665 | P:+91 33 2462 7422</p>
						<p class="sub_title">E: computerworld_kol@yahoo.com</p>


					</div>
				</div>
				<div class="invoice_sec">
					<p class="invoice bold">INVOICE</p>
					<p class="invoice_no">
						<span class="bold">CHALAN NO:</span>
						<span><?php echo $name?></span>
					</p>
					<p class="date">
						<span class="bold">Date</span>
						<span><?php echo $name5?></span>
					</p>
				</div>
			</div>
			<div class="bill_total_wrap">
				<div class="bill_sec">
					<p>Bill To</p> 
	          		<p class="bold name"><?php echo $name1?></p>
			        <span>
						<!--  -->
			        </span>
				</div>
				<!-- <div class="total_wrap">
					<p>Total Due</p>
	          		<p class="bold price">USD: $1200</p>
				</div> -->
			</div>
		</div>
		<div class="body">
			<div class="main_table">
				<div class="table_header">
					<div class="row">
						<div class="col col_no">NO.</div>
						<div class="col col_des">ITEM DESCRIPTION</div>
						<div class="col col_des">ITEM DESCRIPTION</div>


						<div class="col col_price">customer name</div>
						<div class="col col_price">customer address</div>
						<div class="col col_price">Phone</div>
						<div class="col col_qty">QTY</div>
						<div class="col col_qty">QTY</div>

						<div class="col col_total">TOTAL</div>
					</div>
				</div>
				<div class="table_body">
					<div class="row">
						<div class="col col_no">
							<p>01</p>
						</div>
						<div class="col col_des">
							<p class="bold"><?php echo $name6?></p>
							<!-- <p>Lorem ipsum dolor sit.</p> -->
						</div>
						<div class="col col_des">
							<p class="bold"><?php echo $name7?></p>
							<!-- <p>Lorem ipsum dolor sit.</p> -->
						</div>
						<div class="col col_price">
							<p><?php echo $name2?></p>
						</div>
						<div class="col col_price">
							<p><?php echo $name2?></p>
						</div>
						<div class="col col_qty">
							<p><?php echo $name8?></p>
						</div>
						<div class="col col_qty">
							<p><?php echo $name9?></p>
						</div>
						<!-- <div class="col col_total">
							<p>$700.00</p>
						</div> -->
					<!-- </div>
					<div class="row">
						<div class="col col_no">
							<p>02</p>
						</div>
						<div class="col col_des">
							<p class="bold">Web Development</p>
							<p>Lorem ipsum dolor sit.</p>
						</div>
						<div class="col col_price">
							<p>$350</p>
						</div>
						<div class="col col_qty">
							<p>2</p>
						</div>
						<div class="col col_total">
							<p>$700.00</p>
						</div>
					</div>
					<div class="row">
						<div class="col col_no">
							<p>03</p>
						</div>
						<div class="col col_des">
							<p class="bold">GitHub</p>
							<p>Lorem ipsum dolor sit.</p>
						</div>
						<div class="col col_price">
							<p>$120</p>
						</div>
						<div class="col col_qty">
							<p>1</p>
						</div>
						<div class="col col_total">
							<p>$700.00</p>
						</div>
					</div>
					<div class="row">
						<div class="col col_no">
							<p>04</p>
						</div>
						<div class="col col_des">
							<p class="bold">Backend Design</p>
							<p>Lorem ipsum dolor sit.</p>
						</div>
						<div class="col col_price">
							<p>$350</p>
						</div>
						<div class="col col_qty">
							<p>2</p>
						</div>
						<div class="col col_total">
							<p>$700.00</p>
						</div>
					</div>
					<div class="row">
						<div class="col col_no">
							<p>05</p>
						</div>
						<div class="col col_des">
							<p class="bold">Backend Development</p>
							<p>Lorem ipsum dolor sit.</p>
						</div>
						<div class="col col_price">
							<p>$150</p>
						</div>
						<div class="col col_qty">
							<p>1</p>
						</div>
						<div class="col col_total">
							<p>$700.00</p>
						</div>
					</div>
				</div>
			</div>
			<div class="paymethod_grandtotal_wrap">
				<div class="paymethod_sec">
					<p class="bold">Payment Method</p>
					<p>Visa, master Card and We accept Cheque</p>
				</div> -->
				<!-- <div class="grandtotal_sec">
			        <p class="bold">
			            <span>SUB TOTAL</span>
			            <span>$7500</span>
			        </p>
			        <p>
			            <span>Tax Vat 18%</span>
			            <span>$200</span>
			        </p>
			        <p>
			            <span>Discount 10%</span>
			            <span>-$700</span>
			        </p>
			       	<p class="bold">
			            <span>Grand Total</span>
			            <span>$7000.0</span>
			        </p>
				</div> -->
			</div>
		</div>
		<div class="footer">
			<p>Thank you and Best Wishes</p>
			<div class="terms">
		        <p class="tc bold">Developer By:</p>
		        <p>VEHICAL NO:</p>

		        <p> <br> RESCIVER SIGNATURE:</p>

		    </div>
		</div>
	</div>
</div>


</body>
</html>