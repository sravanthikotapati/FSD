
<%


    String Name = request.getParameter("pname");
    String Price = request.getParameter("pprice");
    String Quantity = request.getParameter("quantity");


    String sessionMail = (String)session.getAttribute("email");

%>




<html>
    <head>
        <title>Check out</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <style>
        h1{
            text-align: center;
            color: Black;
        }
        
        .payment{
            align-content: center;
            width:30%;
            background-color: #EFCFD4;
            padding:25px 15px 25px 15px;
            border-radius: 8px;
            font-family: 'Confortaa', cursive;
        }
        .billing{
            align-content: center;
            width:30%;
            background-color:#EFCFD4 ;
            padding:25px 15px 25px 15px;   
            border-radius: 8px;
            backdrop-filter: 50px;
            font-family: 'Confortaa', cursive;
        }
        
        input[type=number] {
            background-color: #E18AAA;
            width: 100%;
            padding: 5px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: none;
            border-bottom: 2px solid #f1f9fc;
          }
          input[type=text] {
            background-color: #E18AAA;
            width: 100%;
            padding: 5px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: none;
            border-bottom: 2px solid #f1f9fc;
          }
          .date input[type=number]{
              width:40%;
          }
          .icon-container {
            margin-bottom: 10px;
            padding: 0px 0;
            font-size: 24px;
          }
         .payment input[type=checkbox]{
              margin-left: 30px;
          }
          button{
              padding: 8px 8px 8px 8px;
              color: #f1f9fc(243, 230, 230);
              background-color: #e0eeef;
              font-family: 'Confortaa', cursive;
              font-weight: bold;
              width: 40%;
              border-radius: 5px;
          }
          body{
              background-image: url("payback.jpg");
              background-repeat: no-repeat;
              background-size: cover;
          }
    </style>

    <script>
        

        function confirmDetails(){
            var name = document.getElementById("name");
        var address = document.getElementById("adr");
        var city = document.getElementById("city");
        var pin = document.getElementById("zip");
        var state = document.getElementById("state");
            name.readOnly = true;
            email.readOnly = true;
            address.readOnly = true;
            city.readOnly = true;
            pin.readOnly = true;
            state.readOnly = true;

        }
        function changeDetails(){
            var name = document.getElementById("name");
        var address = document.getElementById("adr");
        var city = document.getElementById("city");
        var pin = document.getElementById("zip");
        var state = document.getElementById("state");
            name.readOnly = false;
            email.readOnly = false;
            address.readOnly = false;
            city.readOnly = false;
            pin.readOnly = false;
            state.readOnly = false;
        }
    </script>




    <body>
        <h1>Payment</h1>
        <div class="checkout">
            <table width=700px align="center">
                <tr>
                    <td class="billing">
        <!--   <div class="billing">      --> 
            <form method="POST" action="thank.jsp">
                
                <h3>SHIPPING ADDRESS</h3><br>
               
                <label for="name"><i class="fa fa-user"></i> Full Name</label>
                <input class="card" type="text" name="name" id="name"><br><br>
                <label for="email"><i class="fa fa-envelope"></i> Email</label>
                <input type="text" id="email" value=" <%= sessionMail %>" name="email" readonly>
                <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
                <input type="text" id="adr" name="address">
                <label for="city"><i class="fa fa-institution"></i> City</label>
                <input type="text" id="city" name="city">
                <label for="state">State</label>
                <input type="text" id="state" name="state" placeholder="">
                <label for="zip">Pincode</label>
                <input type="text" id="zip" name="zip" placeholder="">

                <!-- <button onclick="confirmDetails()">Confirm Address</button> -->
                <input onclick="confirmDetails()" type="button" value="Confirm Address">
                <input onclick="changeDetails()" type="button" value="Change Address">
                <!-- <input type="checkbox" nname="sameadr" > -->
                <!-- <label for="sameadr" >Shipping address is same as Billing address.</label><br><br> -->
    
            <!-- </form> -->
       <!-- </div>    -->
        </td>
        <td class="payment">
     <!--   <div class="payment">      -->
        <!-- <form action="thank.jpg"> -->
            <h3>PAYMENT</h3>
            <input type="hidden" name="pname" value=" <%= Name %> ">
            <input type="hidden" name="quantity" value=" <%= Quantity %> ">
            Total Amount : <input type="text" name="totalamount" value=" <%= Price  %> " readonly>
            <h3>Accepted Cards</h3>
            <div class="icon-container">
                <i class="fa fa-cc-visa" style="color:navy;"></i>
                <i class="fa fa-cc-amex" style="color:blue;"></i>
                <i class="fa fa-cc-mastercard" style="color:red;"></i>
                <i class="fa fa-cc-discover" style="color:orange;"></i>
              </div>
              <input   type="radio" name="pay" class="a1" value="" id="card-radio" >
            <label for="card radio">Credit / Debit / ATM Card</label><br><br>
            <label for="card">Card number</label>
            <input class="card" type="number" name="card" id="card">
            <table>
                <tr>
                    <td>
                    <label for="card">Expiry Date</label>
                    <input class="date" type="number" name="card" id="expdt"><br>
                    </td>
                    <td>
                    <label for="card">CVV</label>
                    <input class="date" type="number" name="card" id="expdt"><br>
                    </td>
            </tr>
            </table>
            <input type="radio" name="pay" class="a1" id="upi-radio" checked>
            <label for="upi">UPI</label> <input type="text"> <br>
            <!-- <input type="radio" name="pay" class="a1" id="wallets" >
            <label for="wallets">wallets</label><br><br> -->
            <input type="radio" name="pay" class="a1" id="banking-radio" >
            <label for="banking">Net Bankings</label><br>
            <!-- <input type="radio" name="pay" class="a1" id="cod" >
            <label for="cod">Cash On Delivery</label><br><br> -->
            <input type="checkbox" name="confirm" id="confiim">
            <label for="confirm" style="font-size:20px;color:cornflowerblue">Confirm Order</label><br><br>
            <center><button>PAY</button></center>

        </form>
   <!-- </div>   -->
    </td>
    </tr>
    </table>
</div>

        
    </body>
</html>