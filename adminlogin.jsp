<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>


<%
    String Name = request.getParameter("username");
    String Password = request.getParameter("password");

    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","21761A");

        String sql = "select * from adminlogin where username=? and password=?";

        PreparedStatement pstmt = conn.prepareStatement(sql);

        pstmt.setString(1,Name);
        pstmt.setString(2,Password);

        int result = pstmt.executeUpdate();
 
	    if(result==1){
            response.sendRedirect("admin1.html");
	   }
        else{ %>
		    response.sendRedirect("login.jsp?error=1";
            <script>alert("Invalid Email or Password");</script>
            <jsp:include page="adminlogin.html"/> 
        <%
        }

    }
    catch(Exception e){ 
        out.println(e);
    }

%>