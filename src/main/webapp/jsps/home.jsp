<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>KK FUNDA Home Page</title>
    <link rel="icon" href="images/kkfunda.jpg">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f7fa;
            margin: 0;
            padding: 0;
            color: #333;
        }

        header, footer {
            background-color: #004080;
            color: white;
            padding: 20px 10px;
            text-align: center;
        }

        h1 {
            margin: 10px 0;
        }

        main {
            max-width: 900px;
            margin: 30px auto;
            background: #fff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }

        .section {
            margin-bottom: 30px;
        }

        .ip-block {
            background: #f1f1f1;
            padding: 15px;
            border-radius: 8px;
        }

        .contact {
            text-align: center;
            margin-top: 30px;
        }

        .contact img {
            width: 100px;
            margin-bottom: 10px;
        }

        .contact span {
            display: block;
            font-size: 14px;
            margin-top: 10px;
        }

        a {
            color: #004080;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        .link-service {
            margin-top: 15px;
            text-align: center;
        }

        .link-service a {
            font-weight: bold;
        }

        footer small {
            color: #ccc;
        }
    </style>
</head>
<body>

<header>
    <h1>Welcome to KK AWS</h1>
    <h3>DevOps classes from 6:45 to 8:45 (Telugu)</h3>
</header>

<main>
    <div class="section ip-block">
        <h2>Server Side Information</h2>
        <%
            InetAddress inetAddress = InetAddress.getLocalHost();
            String serverIP = inetAddress.getHostAddress();
            String serverHost = inetAddress.getHostName();
        %>
        <p><strong>Server Host Name:</strong> <%= serverHost %></p>
        <p><strong>Server IP Address:</strong> <%= serverIP %></p>
    </div>

    <div class="section ip-block">
        <h2>Client Side Information</h2>
        <p><strong>Client IP Address:</strong> <%= request.getRemoteAddr() %></p>
        <p><strong>Client Host Name:</strong> <%= request.getRemoteHost() %></p>
    </div>

    <div class="link-service">
        <p>Service: <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>
    </div>

    <div class="contact">
        <img src="images/kkfunda.jpg" alt="KK FUNDA Logo">
        <span><strong>KK FUNDA</strong></span>
        <span>Martha Halli, Bangalore</span>
        <span>Phone: +91-9676831734</span>
        <span>Email: <a href="mailto:kkeducationblr@gmail.com">kkeducationblr@gmail.com</a></span>
        <span><a href="mailto:kkeducation@gmail.com">Mail to KK FUNDA</a></span>
    </div>
</main>

<footer>
    <p>KK FUNDA Training & Development Center</p>
    <small>&copy; 2024 <a href="https://www.google.com" style="color: #ccc;">KK FUNDA</a></small>
</footer>

</body>
</html>
