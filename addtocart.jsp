<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<html>
<head>
  <title>My Cart</title>
  <link rel="stylesheet" href="addtocart.css"/>
  <script>
    function decrement(n) {
      var q = document.getElementById("quantity" + n);
      var val = parseInt(q.value);

      if (val > 1) {
        val = val - 1;
        q.value = val;
      }

      var totalval = document.getElementById("total" + n);
      var qcost = parseInt(document.getElementById("p" + n).innerHTML);
      totalval.innerHTML = val * qcost;
      calculateTotal();
    }

    function increment(n) {
      var q = document.getElementById("quantity" + n);
      var val = parseInt(q.value);

      if (val < 10) {
        val = val + 1;
        q.value = val;
      }

      var totalval = document.getElementById("total" + n);
      var qcost = parseInt(document.getElementById("p" + n).innerHTML);
      totalval.innerHTML = val * qcost;
      calculateTotal();
    }

    function calculateTotal() {
      var gt = 0;
      var totalElements = document.getElementsByClassName("subtotal");

      for (var i = 0; i < totalElements.length; i++) {
        gt += parseInt(totalElements[i].innerHTML);
      }

      var grandTotal = document.getElementById("gt");
      grandTotal.innerHTML = gt;
    }
  </script>
</head>

<body style="background-image: url('https://m.media-amazon.com/images/I/71+17bVYHxL.jpg');">
<%
try {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","21761A");

    String sql = "select * from cart where Email=?";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    String Email = (String) session.getAttribute("email");
    pstmt.setString(1, Email);
    ResultSet rs = pstmt.executeQuery();
    
    int i = 1;
%>
<div class="container">
  <h1>My Cart</h1>
  <table border="1px">
    <thead>
      <tr>
        <th>Product Name</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Subtotal</th>
        <th>Remove</th>
      </tr>
    </thead>

<%
    while (rs.next()) {
%>
    <tr>
        <td><%= rs.getString(2) %></td>
        <td id="p<%= i %>"><%= rs.getString(3) %></td>
        <td>
          <button onclick="decrement('<%= i %>')">-</button>
          &nbsp;&nbsp;
          <input type="number" id="quantity<%= i %>" readonly size="10" min="1" max="10" value="1">
          &nbsp;&nbsp;
          <button onclick="increment('<%= i %>')">+</button>
        </td>
        <td class="subtotal" id="total<%= i %>"><%= rs.getString(3) %></td>
        <td><a href="deleteItem.jsp?productname=<%= rs.getString(2) %>"><img src="https://cdn.pixabay.com/photo/2023/03/30/17/34/ai-generated-7888395_960_720.png" width="50px"></a></td>
       </tr> 
<%   
    i++;    
}
conn.close();
}
catch(Exception e){
    out.println(e);
}

%>
  </table>

  <div class="total">
    <span>Total:</span>
    <span id="gt" name="total">0</span>
  </div>
  <div class="btn-container">
    <button class="btn" onclick="t()">Order Now</button>
  </div>
</div>

<script>
  calculateTotal();

</script>
<script>
  function t()
  {
var tat = document.getElementById("gt").innerHTML;

 
var total =parseInt(tat);
window.location.href="http://localhost:8081/FSD-2/order.jsp?gt="+total;

  }


</script>

</body>
</html>