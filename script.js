let btnClear = document.querySelector('button');
let inputs = document.querySelectorAll('input');
let textarea = document.querySelectorAll('textarea');

btnClear.addEventListener('click', () => {
    inputs.forEach(input => input.value = '');
    textarea.forEach(textarea => textarea.value = '');
});