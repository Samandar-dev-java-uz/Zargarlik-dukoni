<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<!DOCTYPE html>
<html lang="uz">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Xatolik - ZARGARLIK UYI</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #d4af37;
            --secondary-color: #000;
            --accent-color: #f8f9fa;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #fdfdfd;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            padding: 20px;
        }

        .error-container {
            text-align: center;
            max-width: 600px;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            background-color: white;
        }

        .error-icon {
            font-size: 5rem;
            color: #dc3545;
            margin-bottom: 20px;
        }

        .error-title {
            color: var(--secondary-color);
            margin-bottom: 20px;
        }

        .error-message {
            background-color: #f8f9fa;
            padding: 20px;
            border-radius: 5px;
            margin-bottom: 30px;
            border-left: 4px solid #dc3545;
        }

        .btn-gold {
            background-color: var(--primary-color);
            color: var(--secondary-color);
            border: none;
            font-weight: bold;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
            transition: background-color 0.3s;
        }

        .btn-gold:hover {
            background-color: #c19b2e;
            color: var(--secondary-color);
        }
    </style>
</head>
<body>

<div class="error-container">
    <i class="fa-solid fa-circle-exclamation error-icon"></i>
    <h2 class="error-title">Xatolik yuz berdi</h2>

    <div class="error-message">
        <%
            String message = (String) request.getAttribute("message");
            if (message != null) {
        %>
        <p><%= message %></p>
        <% } else { %>
        <p>Noma’lum xatolik yuz berdi</p>
        <% } %>
    </div>

    <a href="/register" class="btn-gold">
        <i class="fa fa-user-plus"></i> Ro‘yxatdan o‘tish
    </a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
