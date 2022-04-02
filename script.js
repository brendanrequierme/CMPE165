let btnClear = document.querySelector('button');
let inputs = document.querySelectorAll('input');
let textarea = document.querySelectorAll('textarea');

btnClear.addEventListener('click', () => {
    inputs.forEach(input => input.value = '');
    textarea.forEach(textarea => textarea.value = '');
});

function required() {
    var fname = document.form1.fname.value;
    var lname = document.form1.lname.value;
    var email = document.form1.email.value;
    var phone = document.form1.phone.value;
    var fname2 = document.form1.fname2.value;
    var lname2 = document.form1.lname2.value;
    var card = document.form1.card.value;
    var expiration = document.form1.expiration.value;
    var seccode = document.form1.seccode.value;
    var zipcode = document.form1.zipcode.value;
    if (fname === "" || lname === "" || email === "" || phone === "" || fname2 === "" || lname2 === "" || card === ""  || expiration === "" || seccode === "" || zipcode === "") {
        alert("Please fill in all values with *");
        return false;
    }
    else if ((zipcode.length != 5) && (zipcode != (/^\d+$/))) {
        alert("Zip Code is in Incorrect Format")
        return false;
    } else {
        alert("Thanks for Booking with Spartan Death Hotel!");
        location.href = 'finishbookingpage.php';
        return true;
    }
}