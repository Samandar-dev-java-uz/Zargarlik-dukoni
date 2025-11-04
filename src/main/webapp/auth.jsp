<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="uz">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZARGARLIK UYI - Bosh Sahifa</title>
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

        .hero-section {
            background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url('https://images.unsplash.com/photo-1605100956109-c4812ed0dcc5?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            color: white;
            padding: 100px 0;
            text-align: center;
        }

        .category-card {
            transition: transform 0.3s;
            border: none;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }

        .category-card:hover {
            transform: translateY(-5px);
        }

        .category-icon {
            font-size: 2.5rem;
            color: var(--primary-color);
            margin-bottom: 15px;
        }

        .product-card {
            border: none;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            transition: all 0.3s;
            margin-bottom: 20px;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
        }

        .product-image {
            height: 200px;
            object-fit: cover;
        }

        .price {
            color: var(--primary-color);
            font-weight: bold;
        }

        .discount {
            text-decoration: line-through;
            color: #6c757d;
            font-size: 0.9rem;
        }

        .btn-gold {
            background-color: var(--primary-color);
            color: var(--secondary-color);
            border: none;
            font-weight: bold;
        }

        .btn-gold:hover {
            background-color: #c19b2e;
            color: var(--secondary-color);
        }

        footer {
            background-color: var(--secondary-color);
            color: white;
            padding: 40px 0;
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

        .placeholder-product {
            height: 200px;
            background-color: #f8f9fa;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #6c757d;
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark sticky-top">
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
                    <a class="nav-link active" href="/">Bosh Sahifa</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown">
                        Kolleksiyalar
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/products?category=1">Uzuklar</a></li>
                        <li><a class="dropdown-item" href="/products?category=2">Ziraklar</a></li>
                        <li><a class="dropdown-item" href="/products?category=3">Bilaguzuklar</a></li>
                        <li><a class="dropdown-item" href="/products?category=4">Kulonlar</a></li>
                        <li><a class="dropdown-item" href="/products?category=5">Zanjirlar</a></li>
                        <li><a class="dropdown-item" href="/products?category=6">Bolalar taqinchoqlari</a></li>
                        <li><a class="dropdown-item" href="/products?category=7">Qimmatbaho toshli taqinchoqlar</a></li>
                        <li><a class="dropdown-item" href="/products?category=8">Aksessuarlar</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/about">Biz Haqimizda</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/contact">Bog'lanish</a>
                </li>
            </ul>
            <ul class="navbar-nav">
                <!-- Foydalanuvchi mavjud emasligini ko'rsatamiz (demo) -->
                <li class="nav-item">
                    <a class="nav-link" href="/login">
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

<!-- Hero Section -->
<section class="hero-section">
    <div class="container">
        <h1 class="display-4 fw-bold">Zargarlik Buyumlarining Ajoyib Olami</h1>
        <p class="lead">Bizning kolleksiyamizdan o'zingizga yoqadigan zargarlik buyumlarini toping</p>
        <a href="/products" class="btn btn-gold btn-lg mt-3">Hozir Ko'rish</a>
    </div>
</section>

<!-- Categories Section -->
<section class="py-5">
    <div class="container">
        <h2 class="text-center mb-5">Kolleksiyalarimiz</h2>
        <div class="row">
            <div class="col-md-3 col-6">
                <div class="card category-card text-center p-4">
                    <div class="category-icon">
                        <i class="fas fa-ring"></i>
                    </div>
                    <h5>Uzuklar</h5>
                    <a href="/products?category=1" class="stretched-link"></a>
                </div>
            </div>
            <div class="col-md-3 col-6">
                <div class="card category-card text-center p-4">
                    <div class="category-icon">
                        <i class="fas fa-star"></i>
                    </div>
                    <h5>Ziraklar</h5>
                    <a href="/products?category=2" class="stretched-link"></a>
                </div>
            </div>
            <div class="col-md-3 col-6">
                <div class="card category-card text-center p-4">
                    <div class="category-icon">
                        <i class="fas fa-bracelet"></i>
                    </div>
                    <h5>Bilaguzuklar</h5>
                    <a href="/products?category=3" class="stretched-link"></a>
                </div>
            </div>
            <div class="col-md-3 col-6">
                <div class="card category-card text-center p-4">
                    <div class="category-icon">
                        <i class="fas fa-gem"></i>
                    </div>
                    <h5>Qimmatbaho Toshlar</h5>
                    <a href="/products?category=7" class="stretched-link"></a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Featured Products -->
<section class="py-5 bg-light">
    <div class="container">
        <h2 class="text-center mb-5">Mashhur Mahsulotlar</h2>
        <div class="row">
            <!-- Demo mahsulotlar (aslida backenddan keladi) -->
            <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
                <div class="card product-card h-100">
                    <img src="https://www.brilliance.com/cdn-cgi/image/f=webp,width=750,quality=90/sites/default/files/vue/collections/engagement-rings-diamond_hero.jpg" class="card-img-top product-image" alt="Oltin uzuk">
                    <div class="card-body">
                        <h5 class="card-title">Oltin uzuk</h5>
                        <p class="card-text">Chiroyli naqshli oltin uzuk, ajoyib qizil tosh bilan...</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="price">$199.99</span>
                            <span class="discount">$249.99</span>
                        </div>
                    </div>
                    <div class="card-footer bg-white">
                        <a href="/product-detail?id=1" class="btn btn-gold w-100">Batafsil</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
                <div class="card product-card h-100">
                    <img src="https://cdn1.img.sputniknews.uz/img/07e7/05/1a/35383891_0:0:2730:2048_1440x900_80_0_1_29dacd63cef92042537ca6e06f687f54.jpg?source-sid=rian_photo" class="card-img-top product-image" alt="Kumush bilaguzuk">
                    <div class="card-body">
                        <h5 class="card-title">Kumush bilaguzuk</h5>
                        <p class="card-text">Zamonaviy uslubda ishlangan kumush bilaguzuk...</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="price">$89.99</span>
                        </div>
                    </div>
                    <div class="card-footer bg-white">
                        <a href="/product-detail?id=2" class="btn btn-gold w-100">Batafsil</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
                <div class="card product-card h-100">
                    <img src="https://images.unsplash.com/photo-1535632066927-ab7c9ab60908?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" class="card-img-top product-image" alt="Olmosli zirak">
                    <div class="card-body">
                        <h5 class="card-title">Olmosli zirak</h5>
                        <p class="card-text">Sifatli olmos bilan ishlangan oltin zirak, ajoyib...</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="price">$349.99</span>
                            <span class="discount">$399.99</span>
                        </div>
                    </div>
                    <div class="card-footer bg-white">
                        <a href="/product-detail?id=3" class="btn btn-gold w-100">Batafsil</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
                <div class="card product-card h-100">
                    <img src="https://images.unsplash.com/photo-1596944946755-2a7e4c69b345?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80" class="card-img-top product-image" alt="Marvarid zanjir">
                    <div class="card-body">
                        <h5 class="card-title">Marvarid zanjir</h5>
                        <p class="card-text">Tabiiy marvarid bilan ishlangan oltin zanjir, noyob...</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="price">$279.99</span>
                        </div>
                    </div>
                    <div class="card-footer bg-white">
                        <a href="/product-detail?id=4" class="btn btn-gold w-100">Batafsil</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-center mt-4">
            <a href="/products" class="btn btn-outline-dark">Barcha Mahsulotlar</a>
        </div>
    </div>
</section>

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