document.addEventListener('DOMContentLoaded', function() {
  // Get the login form and error message container
  var loginForm = document.getElementById('admin-login-form');
  var errorMessage = document.getElementById('error-message');

  // Attach submit event listener to the login form
  loginForm.addEventListener('submit', function(e) {
    e.preventDefault(); // Prevent form submission

    // Get the form field values
    var username = document.getElementById('username').value;
    var password = document.getElementById('password').value;

    // Create an AJAX request
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'admin-login.php', true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    // Handle the AJAX response
    xhr.onreadystatechange = function() {
      if (xhr.readyState === XMLHttpRequest.DONE) {
        if (xhr.status === 200) {
          // Successful login
          var response = JSON.parse(xhr.responseText);
          if (response.success) {
            window.location.href = 'admin-dashboard.html'; // Redirect to the admin dashboard or another authorized page
          } else {
            errorMessage.textContent = response.message; // Display the error message
          }
        } else {
          // Error during the AJAX request
          errorMessage.textContent = 'An error occurred during the login process.';
        }
      }
    };

    // Send the AJAX request with form data
    var formData = 'username=' + encodeURIComponent(username) + '&password=' + encodeURIComponent(password);
    xhr.send(formData);
  });
});
