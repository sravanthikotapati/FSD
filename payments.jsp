<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%

    String Name = request.getParameter("name");
    
    String Email= request.getParameter("email");
 String Address= request.getParameter("address");
 String City= request.getParameter("city");
 String Zip= request.getParameter("zip");
 String State= request.getParameter("state");
    
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","21761A");
        String sql = "insert into payment values(?,?,?,?,?,?)";

        PreparedStatement pstmt = conn.prepareStatement(sql);

        pstmt.setString(1,Name);
        
        pstmt.setString(2,Email);
        
        pstmt.setString(3,Address);
        
        pstmt.setString(4,City);
        
        pstmt.setString(5,Zip);
        
        pstmt.setString(6,State);
        


        int result = pstmt.executeUpdate();

        if(result==1){ %>
            
			<jsp:include page="success.html"/>
        <%
        }
        else{ %>
            <script>alert("Some error occured. Please try again")</script>
            <jsp:include page="payment.html"/>
        <%
        }
    }
    catch(Exception e){ %>
        
    <%
     out.println(e);
    }
%>