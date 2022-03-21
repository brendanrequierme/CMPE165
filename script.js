let btnClear = document.querySelector('button');
let inputs = document.querySelectorAll('input');
let textarea = document.querySelectorAll('textarea');

btnClear.addEventListener('click', () => {
    inputs.forEach(input => input.value = '');
    textarea.forEach(textarea => textarea.value = '');
});

function required() {
    var empty = document.form1.fname.value;
    var empty2 = document.form1.lname.value;
    var empty3 = document.form1.email.value;
    var empty4 = document.form1.phone.value;
    if (empty === "" || empty2 === "" || empty3 === "" || empty4 === "") {
        alert("Please fill in all values with *");
        return false;
    } else {
        return true;
    }
}