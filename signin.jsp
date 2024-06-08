<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%

    String Name = request.getParameter("username");
    
    String Password = request.getParameter("password");
    
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","21761A");
        String sql = "select * from signup where username=? and password=?";
        PreparedStatement pstmt = conn.prepareStatement(sql);

        pstmt.setString(1,Name);
        
        pstmt.setString(2,Password);
        

        int result = pstmt.executeUpdate();

        if(result==1){ 
                   session.setAttribute("username",Name);
                   session.setMaxInactiveInterval(5*60*60);
                   response.sendRedirect("mainproject.html");
               }
        else{ %>
            response.sendRedirect("signin.jsp? error=1");
               <script>alert("Invalid Email or password");</script>
            <jsp:include page="signin.html"/>
        <%
        }
    }
    catch(Exception e){ 
        out.println(e);%>
          
      <jsp:include page="signin.html"/>
    <%
    
    }
%>