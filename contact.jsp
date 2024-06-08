<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>

<%
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String message = request.getParameter("message");

    // Configure email settings
    String host = "your_email_host";
    String port = "your_email_port";
    String username = "your_email_username";
    String password = "your_email_password";
    String recipient = "recipient_email_address";

    // Create properties
    Properties properties = new Properties();
    properties.put("mail.smtp.auth", "true");
    properties.put("mail.smtp.starttls.enable", "true");
    properties.put("mail.smtp.host", host);
    properties.put("mail.smtp.port", port);

    // Create session
    Session session = Session.getInstance(properties, new Authenticator() {
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(username, password);
        }
    });

    try {
        // Create message
        MimeMessage mimeMessage = new MimeMessage(session);
        mimeMessage.setFrom(new InternetAddress(email));
        mimeMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
        mimeMessage.setSubject("New Contact Message");
        mimeMessage.setText("Name: " + firstName + " " + lastName + "\n"
                + "Email: " + email + "\n"
                + "Phone: " + phone + "\n"
                + "Message: " + message);

        // Send message
        Transport.send(mimeMessage);

        // Redirect to a success page
        response.sendRedirect("success.html");
    } catch (MessagingException e) {
        // Redirect to an error page
        response.sendRedirect("error.jsp");
    }
%>
