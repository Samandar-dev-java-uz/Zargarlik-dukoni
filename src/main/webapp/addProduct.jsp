<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="uz">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zargarlik Uyi - Mahsulot qo‘shish</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --primary-color: #d4af37;   /* oltin rang */
            --secondary-color: #000;    /* qora */
            --accent-color: #f8f9fa;    /* oq fon */
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
        <li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-home"></i> Dashboard</a></li>
        <li class="nav-item"><a class="nav-link active" href="#"><i class="fas fa-ring"></i> Mahsulot qo‘shish</a></li>
        <li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-list"></i> Barcha mahsulotlar</a></li>
        <li class="nav-item"><a class="nav-link" href="/auth"><i class="fas fa-sign-out-alt"></i> Chiqish</a></li>
    </ul>
</div>

<!-- Main Content -->
<div class="main-content">
    <h2 class="mb-4"><i class="fas fa-plus-circle me-2"></i>Mahsulot qo‘shish</h2>

    <form action="addProduct" method="post" enctype="multipart/form-data" class="card p-4 shadow-sm">
        <div class="mb-3">
            <label for="productName" class="form-label">Mahsulot nomi</label>
            <input type="text" class="form-control" id="productName" name="name" required>
        </div>
        <div class="mb-3">
            <label for="productDescription" class="form-label">Tavsif</label>
            <textarea class="form-control" id="productDescription" name="description"></textarea>
        </div>

        <!-- ✅ Category select qo‘shildi -->
        <div class="mb-3">
            <label for="productCategory" class="form-label">Kategoriya tanlash</label>
            <select class="form-select" id="productCategory" name="categoryId" required>
                <option value="">-- Kategoriya tanlang --</option>
                <c:forEach var="cat" items="${categories}">
                    <option value="${cat.id}">${cat.name}</option>
                </c:forEach>
            </select>
        </div>

        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="productPrice" class="form-label">Narx (so‘m)</label>
                <input type="number" class="form-control" id="productPrice" name="price" required>
            </div>
            <div class="col-md-6 mb-3">
                <label for="productCount" class="form-label">Soni</label>
                <input type="number" class="form-control" id="productCount" name="count" required>
            </div>
        </div>
        <div class="mb-3">
            <label for="productImage" class="form-label">Rasm yuklash</label>
            <input type="file" class="form-control" id="productImage" name="image" accept="image/*" required>
        </div>
        <button type="submit" class="btn btn-gold"><i class="fas fa-save"></i> Saqlash</button>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
