$('document').ready(function() {
/* handle form validation */
$("#f").validate({
rules:
{
name: {
required: true,
minlength: 3
},
pass: {
required: true,
minlength: 8,
maxlength: 15
},
password: {
required: true,
equalTo: '#inputPassword'
},
email: {
required: true,
email: true
},
phone: {
required: true,
minlength: 10,
maxlength: 10
},
gender: {
required: true
},
dob: {
required: true
}
},
messages:
{
name: "please enter your name",
pass:{
required: "please provide a password",
minlength: "password should at least have 8 characters"
},
email: "please enter a valid email address",
phone: {
required: "please enter your phone number",
minlength: "phone number should contain 10 digits"
},
gender: "please select your gender",
dob: "please enter your date of birth",
password:{
required: "please retype your password",
equalTo: "password doesn't match !"
}
},
submitHandler: submitForm
});
/* handle form submit */
function submitForm() {
var data = $("#f").serialize();
$.ajax({
type : 'POST',
url : 'signup.php',
data : data,
beforeSend: function() {
$("#error").fadeOut();
$("#btn-submit").html('<span class="glyphicon glyphicon-transfer"></span>   creating ...');
},
success : function(response) {
if(response==1){
$("#error").fadeIn(1000, function(){
$("#error").html('<div class="alert alert-danger"> <span class="glyphicon glyphicon-info-sign"></span>   Sorry email already taken !</div>');
$("#btn-submit").html('Register');
});
} else{
$("#btn-submit").html('<img src="images/ajax-loader.gif" />   Signing Up ...');
setTimeout('window.location.href = "index.html" ',2000);
} 
}
});
return false;
}
});

      


  function getAge(){
    var dob = document.getElementById('inputDate').value;
    dob = new Date(dob);
    var today = new Date();
    var age = Math.floor((today-dob) / (365.25 * 24 * 60 * 60 * 1000));
    document.getElementById('inputAge').value=age;
}

  
       
