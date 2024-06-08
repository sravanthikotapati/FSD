
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 15%;
  border-radius: 20%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>

<body style="text-align: right;"><br><br><br><br>

   
     
      <div class="book1">
        <%
        // Check if an error message exists in the session
        String errorMessage = (String) session.getAttribute("ErrorMessage");
        if (errorMessage != null) {
            %>
            <br><center>
            <span style="color: red;font-size: 20px;"><%= errorMessage %></span></center>
            <%
            // Remove the error message from the session after displaying it
            session.removeAttribute("ErrorMessage");
        }
        %>
        <h2>Login Form</h2>
<form action="signin.jsp" method="post">
  <div class="imgcontainer">
    <img src="r2.jpg" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="uname"><b>username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required>

    <label for="psw"><b>password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
      <button type="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>
<center><h3>Not have an account ?<a href="signup.html">signup</a></center>
</div>
</form>
</body>
</html>