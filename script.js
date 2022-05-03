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
        alert("Thanks for Booking with Spartan Death Hotel!\nImportant Notice: Cancelation Fees will Be Applied when Canceling 24 Hours before Check-In Date!");
        location.href = 'finishbookingpage.php';
        return true;
    }
}

//Create a new function that stores the name of the variable and based of that changes on a button to see if the people want to subtract price or not

//Delete?
function remove() {
    $hotelsId = $_GET['hotelID'];
    $removeHotel = "DELETE FROM bookedhotel WHERE hotel_id = 1";
    return $removeHotel;
}

function alertBox() {
    alert("You can not book 2 hotels on the same dates!");
}