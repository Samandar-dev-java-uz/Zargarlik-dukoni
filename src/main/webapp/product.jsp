<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="uz">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zargarlik Uyi - Mahsulotlar</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #d4af37;
            --secondary-color: #000;
            --accent-color: #f8f9fa;
        }
        body {
            background-color: var(--accent-color);
        }
        .sidebar {
            background-color: var(--secondary-color);
            color: white;
            height: 100vh;
            position: fixed;
            width: 250px;
            padding-top: 20px;
        }
        .sidebar .nav-link {
            color: rgba(255, 255, 255, 0.8);
            padding: 12px 20px;
            margin: 5px 0;
            border-radius: 5px;
        }
        .sidebar .nav-link:hover,
        .sidebar .nav-link.active {
            background-color: rgba(212, 175, 55, 0.2);
            color: var(--primary-color);
        }
        .main-content {
            margin-left: 250px;
            padding: 20px;
        }
        .card-dashboard {
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .btn-gold {
            background-color: var(--primary-color);
            color: var(--secondary-color);
            font-weight: bold;
        }
        .btn-gold:hover {
            background-color: #c19b2e;
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <div class="text-center mb-4">
        <h4><i class="fas fa-gem me-2"></i>ZARGARLIK UYI</h4>
        <p class="text-muted">Admin Panel</p>
    </div>
    <hr class="bg-light">
    <ul class="nav flex-column">
        <li class="nav-item"><a class="nav-link" href="adminDashboard.jsp"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
        <li class="nav-item"><a class="nav-link active" href="products.jsp"><i class="fas fa-ring"></i> Mahsulotlar</a></li>
        <li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-shopping-cart"></i> Buyurtmalar</a></li>
        <li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-users"></i> Foydalanuvchilar</a></li>
        <li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-sign-out-alt"></i> Chiqish</a></li>
    </ul>
</div>

<!-- Main Content -->
<div class="main-content">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2>Show Products</h2>
        <a href="/add-product" class="btn btn-gold"><i class="fas fa-plus"></i> Add Product</a>
    </div>

    <div class="card card-dashboard p-3 mb-4">
        <table class="table table-striped table-bordered mt-3">
            <thead class="table-dark">
            <tr>
                <th>#</th>
                <th>Nomi</th>
                <th>Ta'rif</th>
                <th>Narx</th>
                <th>Soni</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>Tilla uzuk</td>
                <td>24 karatli erkaklar uzugi</td>
                <td>2,500,000 so‘m</td>
                <td>5 dona</td>
            </tr>
            <tr>
                <td>2</td>
                <td>Kumush sirg‘a</td>
                <td>Zargarlik ayollar sirg‘asi</td>
                <td>750,000 so‘m</td>
                <td>12 dona</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
