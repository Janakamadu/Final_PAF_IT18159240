<%@page import="model.Payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
			<title>Payment Management - GadgetBadget</title>
	
		<link href="myStyle.css" rel="stylesheet" />
		<link rel="stylesheet" href="Views/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="Components/jquery-3.5.0.min.js"></script>
		<script src="Components/Payment.js"></script>

	</head>
	
	<body>
		<div class="container">
	
			<p class="font-weight-bold">
				<center>
					<h1><u><i><b>Payment/Payments Management - GadgetBadget</b></i></u></h1>
				</center>
			</p>
			<br><br>
			
			<fieldset>
	
				<legend><b>Add Payment Details</b></legend>
					<form id="Payment" name="PAYMENT" class="border border-light p-5" action="Payment.jsp" method="get">
						

						<div class="form-outline mb-4">
						    <label class="form-label" for="form6Example3" class="col-sm-2 col-form-label col-form-label-sm">User ID:</label>
						    <input type="hidden" id="paymentID" name="paymentID">
						    <input type="text" id="userID" class="form-control" name="userID">						    
						</div>
						
						<div class="form-outline mb-4">
						    <label class="form-label" for="form6Example3" class="col-sm-2 col-form-label col-form-label-sm">Amount:</label>
						    <input type="text" id="amount" class="form-control" name="amount">						    
						</div>
						
						<div class="form-outline mb-4">
						    <label class="form-label" for="form6Example3" class="col-sm-2 col-form-label col-form-label-sm">Description:</label>
						    <input type="text" id="description" class="form-control" name="description">						    
						</div>
						
						<div class="form-outline mb-4">
						    <label class="form-label" for="form6Example3" class="col-sm-2 col-form-label col-form-label-sm">Contact No:</label>
						    <input type="text" id="contact" class="form-control" name="contact">						    
						</div>
						 </
						<br> 
						<!--  <div id="alertSuccess" class="alert alert-success"></div>-->
						<!--<div id="alertError" class="alert alert-danger"></div>-->
						<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-success btn-sm btn-block">
					</form>
					
			
			</fieldset>
			
			<br> 
			
			<div class="container" id="PaymentGrid">
				<fieldset>
					<legend><b>View Payment Details</b></legend>
					<form method="post" action="Payment.jsp" class="table table-striped">
						<%
						    Payment viewPayment = new Payment();
							out.print(viewPayment.readPayment());
						%>
					</form>
					<br>
				</fieldset>
			</div>
		</div>
	</body>
</html>