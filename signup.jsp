<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%

    String Name = request.getParameter("username");
    
    String Password = request.getParameter("password");
    
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","21761A");
        String sql = "insert into signup values(?,?)";

        PreparedStatement pstmt = conn.prepareStatement(sql);

        pstmt.setString(1,Name);
        
        pstmt.setString(2,Password);
        

        int result = pstmt.executeUpdate();

        if(result==1){ %>
            
			<jsp:include page="signin.html"/>
        <%
        }
        else{ %>
            <script>alert("Some error occured. Please try again")</script>
            <jsp:include page="signup.html"/>
        <%
        }
    }
    catch(Exception e){ %>
        
    <%
     out.println(e);
    }
%>