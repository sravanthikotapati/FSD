<%@ page import="java.sql.*" %>
<html>
<head>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
		 body {
            font-family: Arial, sans-serif;
            color: #333;
		 }
    </style>
</head>
<body>
    <center><table>
	<h3>Online Gift Shop</h3>
<%
	String username=request.getParameter("username");
	String password=request.getParameter("password");
     try
     {
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","21761A");   
           if(username.equals("sravanthi") && password.equals("2004"))
           {
	   response.sendRedirect("admin1.html");
           }
         else
          {%>
	   <script>alert("Invalid admin !!!! Enter correct credentials")</script>
                  <jsp:include page="adminlogin.html"/>
         <%
         }
         } 
       catch(Exception e)
        {%>
    <%
              System.out.println(e);
       }
 %>
              </table><center>
	
 </body>
</html>
