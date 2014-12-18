$('DriverLicenseNumber').bind("enterKey",function(e){
   console.log("enter!");
});
$('DriverLicenseNumber').keyup(function(e){
    if(e.keyCode == 13)
    {
        $(this).trigger("enterKey");
    }
});