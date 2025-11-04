<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="uz">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZARGARLIK UYI - Kirish</title>
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
            flex-direction: column;
            min-height: 100vh;
        }

        .navbar {
            background-color: var(--secondary-color);
        }

        .navbar-brand {
            color: var(--primary-color) !important;
            font-weight: bold;
            font-size: 1.5rem;
        }

        .nav-link {
            color: white !important;
            transition: color 0.3s;
        }

        .nav-link:hover {
            color: var(--primary-color) !important;
        }

        .login-container {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 40px 0;
            background: linear-gradient(rgba(255,255,255,0.9), rgba(255,255,255,0.9)), url('https://images.unsplash.com/photo-1515562141207-7a88fb7ad5e5?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
        }

        .login-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 450px;
            padding: 40px;
        }

        .login-logo {
            text-align: center;
            margin-bottom: 30px;
        }

        .login-logo i {
            font-size: 3rem;
            color: var(--primary-color);
        }

        .login-logo h2 {
            color: var(--secondary-color);
            margin-top: 15px;
            font-weight: bold;
        }

        .form-control:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 0.25rem rgba(212, 175, 55, 0.25);
        }

        .btn-gold {
            background-color: var(--primary-color);
            color: var(--secondary-color);
            border: none;
            font-weight: bold;
            padding: 12px;
            width: 100%;
        }

        .btn-gold:hover {
            background-color: #c19b2e;
            color: var(--secondary-color);
        }

        .form-text {
            color: #6c757d;
        }

        .divider {
            display: flex;
            align-items: center;
            text-align: center;
            margin: 25px 0;
            color: #6c757d;
        }

        .divider::before,
        .divider::after {
            content: '';
            flex: 1;
            border-bottom: 1px solid #dee2e6;
        }

        .divider::before {
            margin-right: .5em;
        }

        .divider::after {
            margin-left: .5em;
        }

        .social-login {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-bottom: 20px;
        }

        .social-btn {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 1.2rem;
            transition: all 0.3s;
        }

        .social-btn:hover {
            transform: translateY(-3px);
        }

        .facebook {
            background-color: #3b5998;
        }

        .google {
            background-color: #db4a39;
        }

        footer {
            background-color: var(--secondary-color);
            color: white;
            padding: 30px 0;
            margin-top: auto;
        }

        .social-icon {
            color: white;
            font-size: 1.5rem;
            margin-right: 15px;
            transition: color 0.3s;
        }

        .social-icon:hover {
            color: var(--primary-color);
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="/">
            <i class="fas fa-gem me-2"></i>ZARGARLIK UYI
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/">Bosh Sahifa</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/products">Mahsulotlar</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/about">Biz Haqimizda</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/contact">Bog'lanish</a>
                </li>
            </ul>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" href="/login">
                        <i class="fas fa-sign-in-alt me-1"></i>Kirish
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/register">
                        <i class="fas fa-user-plus me-1"></i>Ro'yxatdan o'tish
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Login Section -->
<div class="login-container">
    <div class="login-card">
        <div class="login-logo">
            <i class="fas fa-gem"></i>
            <h2>Hisobingizga kiring</h2>
        </div>

        <form action="/login" method="POST">
            <div class="mb-3">
                <label for="email" class="form-label">Elektron pochta</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Parol</label>
                <input type="password" class="form-control" id="password" name="password" required>
                <div class="form-text">
                    <a href="#" class="text-decoration-none">Parolingizni unutdingizmi?</a>
                </div>
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="rememberMe">
                <label class="form-check-label" for="rememberMe">Meni eslab qol</label>
            </div>
            <button type="submit" class="btn btn-gold mb-3">Kirish</button>
        </form>

        <div class="divider">YOKI</div>

        <div class="social-login">
            <a href="#" class="social-btn facebook">
                <i class="fab fa-facebook-f"></i>
            </a>
            <a href="#" class="social-btn google">
                <i class="fab fa-google"></i>
            </a>
        </div>

        <div class="text-center">
            Hisobingiz yo'qmi? <a href="/register" class="text-decoration-none">Ro'yxatdan o'tish</a>
        </div>
    </div>
</div>

<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-4 mb-4">
                <h5>ZARGARLIK UYI</h5>
                <p>Biz eng yaxshi sifatli zargarlik buyumlarini taklif qilamiz. Har bir mahsulot g'amxo'rlik bilan yaratilgan.</p>
            </div>
            <div class="col-md-4 mb-4">
                <h5>Bog'lanish</h5>
                <p><i class="fas fa-map-marker-alt me-2"></i> Toshkent shahar, Yunusobod tumani</p>
                <p><i class="fas fa-phone me-2"></i> +998 71 205 22 22</p>
                <p><i class="fas fa-envelope me-2"></i> info@zargarlik-uyi.uz</p>
            </div>
            <div class="col-md-4 mb-4">
                <h5>Bizni Kuzatib Boring</h5>
                <div class="d-flex">
                    <a href="#" class="social-icon"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="social-icon"><i class="fab fa-instagram"></i></a>
                    <a href="#" class="social-icon"><i class="fab fa-telegram"></i></a>
                    <a href="#" class="social-icon"><i class="fab fa-youtube"></i></a>
                </div>
            </div>
        </div>
        <hr class="bg-light">
        <div class="text-center">
            <p>&copy; 2023 ZARGARLIK UYI. Barcha huquqlar himoyalangan.</p>
        </div>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>