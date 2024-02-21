document.getElementById("registrationForm").addEventListener("submit", function(event) {
    var password = document.getElementById("password");
    var confirm_password = document.getElementById("confirm_password");

    if (password.value != confirm_password.value) {
        confirm_password.setCustomValidity("Passwords don't match");
        confirm_password.classList.add("invalid");
        event.preventDefault();
    } else {
        confirm_password.setCustomValidity("");
        confirm_password.classList.remove("invalid");
    }
});
