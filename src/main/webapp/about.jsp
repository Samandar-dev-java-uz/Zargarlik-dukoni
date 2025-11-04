<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="uz">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZARGARLIK UYI - Biz Haqimizda</title>
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

        .about-hero {
            background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url('https://images.unsplash.com/photo-1515562141207-7a88fb7ad5e5?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            color: white;
            padding: 80px 0;
            text-align: center;
        }

        .section-title {
            position: relative;
            margin-bottom: 30px;
            padding-bottom: 15px;
            text-align: center;
        }

        .section-title:after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 3px;
            background-color: var(--primary-color);
        }

        .history-section, .values-section, .team-section {
            padding: 80px 0;
        }

        .history-section {
            background-color: white;
        }

        .values-section {
            background-color: #f8f9fa;
        }

        .team-section {
            background-color: white;
        }

        .value-card {
            text-align: center;
            padding: 30px 20px;
            border-radius: 8px;
            background: white;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            transition: transform 0.3s;
            height: 100%;
        }

        .value-card:hover {
            transform: translateY(-10px);
        }

        .value-icon {
            font-size: 3rem;
            color: var(--primary-color);
            margin-bottom: 20px;
        }

        .team-member {
            text-align: center;
            margin-bottom: 30px;
        }

        .team-img {
            width: 180px;
            height: 180px;
            object-fit: cover;
            border-radius: 50%;
            border: 5px solid var(--primary-color);
            margin-bottom: 20px;
        }

        .contact-info {
            background-color: #f8f9fa;
            border-radius: 8px;
            padding: 30px;
        }

        .contact-icon {
            color: var(--primary-color);
            font-size: 1.5rem;
            margin-right: 15px;
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

        .breadcrumb {
            background-color: transparent;
            padding: 0;
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
                    <a class="nav-link" href="/">Bosh Sahifa</a>
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
                    <a class="nav-link active" href="/about">Biz Haqimizda</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/contact">Bog'lanish</a>
                </li>
            </ul>
            <ul class="navbar-nav">
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

<!-- Breadcrumb -->
<div class="container py-3">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">Bosh Sahifa</a></li>
            <li class="breadcrumb-item active">Biz Haqimizda</li>
        </ol>
    </nav>
</div>

<!-- Hero Section -->
<section class="about-hero">
    <div class="container">
        <h1 class="display-4 fw-bold">Biz Haqimizda</h1>
        <p class="lead">Zargarlik Uyi - qadrdon didga sardorlik</p>
    </div>
</section>

<!-- Tarix Bo'limi -->
<section class="history-section">
    <div class="container">
        <h2 class="section-title">Bizning Tariximiz</h2>
        <div class="row align-items-center">
            <div class="col-lg-6">
                <img src="https://images.unsplash.com/photo-1605100956109-c4812ed0dcc5?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
                     alt="Zargarlik Uyi tarixi" class="img-fluid rounded shadow">
            </div>
            <div class="col-lg-6">
                <h3 class="mb-4">Qalbda Paydo Bo'lgan Uy</h3>
                <p>"Zargarlik Uyi" 2015-yilda zargarlik san'atiga bo'lgan muhabbat va didli odamlar uchun noyob narsalar yaratish istagi bilan tashkil etilgan. Dastlabki kunlar har bir buyumni qo'l bilan ishlash, har bir mijozning orzularini kumush va oltin shaklida ifodalashga bag'ishlangan.</p>
                <p>Bizning sarguzashtimiz hunarmandchilik va zargarlik san'atiga bo'lgan muhabbat va didli odamlar uchun noyob va qimmatbaho narsalarni yaratish istagi bilan boshlandi.</p>
            </div>
        </div>
    </div>
</section>

<!-- Qadriyatlar Bo'limi -->
<section class="values-section">
    <div class="container">
        <h2 class="section-title">Bizning Qadriyatlarimiz</h2>
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="value-card">
                    <div class="value-icon">
                        <i class="fas fa-hands"></i>
                    </div>
                    <h4>An'ana va Zamonaviylik</h4>
                    <p>Qadimiy naqshlarning sirli jozibasini zamonaviy talablar bilan uyg'unlashtiramiz. Har bir mahsulotimiz an'ana va zamonaviylik uyg'unligini ifodalaydi.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="value-card">
                    <div class="value-icon">
                        <i class="fas fa-heart"></i>
                    </div>
                    <h4>Ishonch va Sadoqat</h4>
                    <p>Har bir mijoz bizning ishonch va sadoqat ramzimizdir. Biz mijozlarimizning ishonchini qoplash uchun eng yuqori sifat va xizmatni taqdim etamiz.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="value-card">
                    <div class="value-icon">
                        <i class="fas fa-crown"></i>
                    </div>
                    <h4>Mahorat va Did</h4>
                    <p>Har bir buyum nafaqat bezak, balki shaxsiyatning ifodasidir. Bizning ustalarimiz yuqori darajadagi mahorat va did bilan har bir buyumni maxsus qiladi.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Jamoa Bo'limi -->
<section class="team-section">
    <div class="container">
        <h2 class="section-title">Bizning Jamoa</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="team-member">
                    <img src="https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80"
                         alt="Bosh zargar" class="team-img">
                    <h4>Ali Shirinov</h4>
                    <p>Bosh Zargar</p>
                    <p>20 yillik tajribaga ega mutaxassis</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="team-member">
                    <img src="https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80"
                         alt="Dizayner" class="team-img">
                    <h4>Dilnoza Ismoilova</h4>
                    <p>Bosh Dizayner</p>
                    <p>Zamonaviy va an'anaviy dizaynlar ustasi</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="team-member">
                    <img src="https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80"
                         alt="Menejer" class="team-img">
                    <h4>Sarvar Hasanov</h4>
                    <p>Mijozlar Xizmati Menejeri</p>
                    <p>Har bir mijozga individual yondashuv</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Bog'lanish Bo'limi -->
<section class="py-5 bg-light">
    <div class="container">
        <h2 class="section-title">Bog'lanish</h2>
        <div class="row">
            <div class="col-lg-8 mx-auto">
                <div class="contact-info">
                    <div class="d-flex align-items-center mb-4">
                        <div class="contact-icon">
                            <i class="fas fa-map-marker-alt"></i>
                        </div>
                        <div>
                            <h5>Manzil</h5>
                            <p>Toshkent shahar, Yunusobod tumani</p>
                        </div>
                    </div>
                    <div class="d-flex align-items-center mb-4">
                        <div class="contact-icon">
                            <i class="fas fa-phone"></i>
                        </div>
                        <div>
                            <h5>Telefon</h5>
                            <p>+998 71 205 22 22</p>
                        </div>
                    </div>
                    <div class="d-flex align-items-center mb-4">
                        <div class="contact-icon">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <div>
                            <h5>Email</h5>
                            <p>info@zargarlik-uyi.uz</p>
                        </div>
                    </div>
                    <div class="d-flex align-items-center">
                        <div class="contact-icon">
                            <i class="fas fa-clock"></i>
                        </div>
                        <div>
                            <h5>Ish Vaqti</h5>
                            <p>Dushanba - Shanba: 9:00 - 18:00</p>
                        </div>
                    </div>
                </div>
            </div>
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