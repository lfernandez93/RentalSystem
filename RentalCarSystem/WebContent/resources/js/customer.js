/*$(document).ready(function() {
$('driverLicenseNumber').bind("enterKey",function(e){
   console.log("enter!");
});
$('driverLicenseNumber').keyup(function(e){
    if(e.keyCode == 13)
    {
        $(this).trigger("enterKey");
    }
});
});*/

function searchCustomer(){
	$(document).ready(function() {
	var driverNo = $("#driverLicenseNumber").val();
	$.ajax({
		url: '/RentalCarSystem/customer/get',
 		type: 'POST',
 		async:false,
		dataType: "json",
		data:'driverLicenseNumber=' + driverNo,
	 	 success: function (response) {
 		 		 displayCustomer(response);
			},
			error: function(){

				
		 	 } 
   });
	});
}

function displayCustomer(customer){
	$("customerId").val(customer.customerid);
	$("firstName").val(customer.person.firstname);
	$("lastName").val(customer.person.lastname);
}

function saveCustomer(){
	console.log("asd");
}