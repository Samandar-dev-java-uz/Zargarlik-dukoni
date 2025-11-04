<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="uz">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Foydalanuvchilar boshqaruvi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --primary-color: #d4af37;   /* oltin */
            --secondary-color: #000;    /* qora */
            --accent-color: #f8f9fa;    /* oq */
        }
        body {
            background-color: var(--accent-color);
        }
        .sidebar {
            background-color: var(--secondary-color);
            color: white;
            height: 100vh;
            position: fixed;
            width: 220px;
            padding-top: 20px;
        }
        .sidebar h4 {
            color: var(--primary-color);
            margin-bottom: 10px;
        }
        .sidebar .nav-link {
            color: rgba(255,255,255,0.8);
            padding: 10px 15px;
            border-radius: 5px;
        }
        .sidebar .nav-link:hover,
        .sidebar .nav-link.active {
            background-color: rgba(212,175,55,0.2);
            color: var(--primary-color);
        }
        .main-content {
            margin-left: 220px;
            padding: 20px;
        }
        .btn-gold {
            background-color: var(--primary-color);
            color: var(--secondary-color);
            font-weight: bold;
        }
        .btn-gold:hover {
            background-color: #c19b2e;
            color: #000;
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <div class="text-center mb-4">
        <h4><i class="fas fa-gem me-2"></i>ZARGARLIK UYI</h4>
        <p class="text-muted">Admin</p>
    </div>
    <hr class="bg-light">
    <ul class="nav flex-column">
        <li class="nav-item"><a class="nav-link" href="/dashboard"><i class="fas fa-home"></i> Dashboard</a></li>
        <li class="nav-item"><a class="nav-link" href="/category"><i class="fas fa-tags"></i> Kategoriyalar</a></li>
        <li class="nav-item"><a class="nav-link" href="/product"><i class="fas fa-ring"></i> Mahsulotlar</a></li>
        <li class="nav-item"><a class="nav-link active" href="/users"><i class="fas fa-users"></i> Foydalanuvchilar</a></li>
        <li class="nav-item"><a class="nav-link" href="/auth"><i class="fas fa-sign-out-alt"></i> Chiqish</a></li>
    </ul>
</div>

<!-- Main Content -->
<div class="main-content">
    <h2 class="mb-4"><i class="fas fa-users me-2"></i>Foydalanuvchilar boshqaruvi</h2>

    <div class="card p-4 shadow-sm">
        <h5>Foydalanuvchilar ro‘yxati</h5>
        <table class="table table-striped mt-3">
            <thead>
            <tr>
                <th>#</th>
                <th>Ism</th>
                <th>Email</th>
                <th>Telefon</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${users}" varStatus="loop">
                <tr>
                    <td><c:out value="${loop.index + 1}" /></td>
                    <td><c:out value="${user.name}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><c:out value="${user.phone}" /></td>
                    <td>
                        <a href="/update-user?id=${user.id}" class="btn btn-warning btn-sm">
                            <i class="fas fa-edit"></i> Update
                        </a>
                    </td>
                    <td>
                        <a href="/delete-user?id=${user.id}"
                           class="btn btn-danger btn-sm"
                           onclick="return confirm('Foydalanuvchini o‘chirmoqchimisiz?');">
                            <i class="fas fa-trash"></i> Delete
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
`