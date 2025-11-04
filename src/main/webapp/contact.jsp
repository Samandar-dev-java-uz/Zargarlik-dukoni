<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="uz">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZARGARLIK UYI - Bog'lanish</title>
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

        .contact-hero {
            background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url('https://images.unsplash.com/photo-1535632066927-ab7c9ab60908?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80');
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

        .contact-section {
            padding: 80px 0;
        }

        .contact-info {
            background-color: #f8f9fa;
            border-radius: 8px;
            padding: 30px;
            height: 100%;
        }

        .contact-icon {
            color: var(--primary-color);
            font-size: 1.5rem;
            margin-right: 15px;
            width: 30px;
            text-align: center;
        }

        .contact-form {
            background-color: white;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
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
            padding: 12px 30px;
        }

        .btn-gold:hover {
            background-color: #c19b2e;
            color: var(--secondary-color);
        }

        .map-container {
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
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
                    <a class="nav-link" href="/about">Biz Haqimizda</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="/contact">Bog'lanish</a>
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
            <li class="breadcrumb-item active">Bog'lanish</li>
        </ol>
    </nav>
</div>

<!-- Hero Section -->
<section class="contact-hero">
    <div class="container">
        <h1 class="display-4 fw-bold">Biz Bilan Bog'laning</h1>
        <p class="lead">Savollaringiz bo'lsa, bizga murojaat qiling</p>
    </div>
</section>

<!-- Bog'lanish Bo'limi -->
<section class="contact-section">
    <div class="container">
        <h2 class="section-title">Bog'lanish Ma'lumotlari</h2>

        <div class="row mb-5">
            <div class="col-md-4 mb-4">
                <div class="contact-info">
                    <div class="d-flex align-items-center mb-4">
                        <div class="contact-icon">
                            <i class="fas fa-map-marker-alt"></i>
                        </div>
                        <div>
                            <h5>Manzil</h5>
                            <p>Toshkent shahar, Yunusobod tumani,<br>O'zbekiston ko'chasi, 45-uy</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="contact-info">
                    <div class="d-flex align-items-center mb-4">
                        <div class="contact-icon">
                            <i class="fas fa-phone"></i>
                        </div>
                        <div>
                            <h5>Telefon</h5>
                            <p>+998 71 205 22 22</p>
                            <p>+998 90 123 45 67</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="contact-info">
                    <div class="d-flex align-items-center mb-4">
                        <div class="contact-icon">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <div>
                            <h5>Email</h5>
                            <p>info@zargarlik-uyi.uz</p>
                            <p>savdo@zargarlik-uyi.uz</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6 mb-4">
                <div class="contact-form">
                    <h3 class="mb-4">Xabar Qoldiring</h3>
                    <form id="contactForm">
                        <div class="mb-3">
                            <label for="name" class="form-label">Ismingiz</label>
                            <input type="text" class="form-control" id="name" required>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email manzilingiz</label>
                            <input type="email" class="form-control" id="email" required>
                        </div>
                        <div class="mb-3">
                            <label for="phone" class="form-label">Telefon raqamingiz</label>
                            <input type="tel" class="form-control" id="phone">
                        </div>
                        <div class="mb-3">
                            <label for="message" class="form-label">Xabaringiz</label>
                            <textarea class="form-control" id="message" rows="5" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-gold">Xabar Yuborish</button>
                    </form>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="map-container">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d191885.50263979934!2d69.13928222167968!3d41.282512546098414!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38ae8b534175ed31%3A0x52a8f9d9414a2ad8!2sTashkent%2C%20Uzbekistan!5e0!3m2!1sen!2s!4v1688398151153!5m2!1sen!2s"
                            width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>

                <div class="mt-4">
                    <div class="contact-info">
                        <h5 class="mb-3">Ish Vaqtlari</h5>
                        <div class="d-flex justify-content-between">
                            <span>Dushanba - Juma:</span>
                            <span>9:00 - 18:00</span>
                        </div>
                        <div class="d-flex justify-content-between">
                            <span>Shanba:</span>
                            <span>10:00 - 16:00</span>
                        </div>
                        <div class="d-flex justify-content-between">
                            <span>Yakshanba:</span>
                            <span>Dam olish kuni</span>
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
<script>
    // Form yuborishni boshqarish
    document.getElementById('contactForm').addEventListener('submit', function(e) {
        e.preventDefault();

        // Bu yerda form ma'lumotlarini serverga yuborish kodi bo'ladi
        // Hozircha oddiy tasdiq xabarini ko'rsatamiz

        alert('Xabaringiz uchun rahmat! Tez orada siz bilan bog\'lanamiz.');
        document.getElementById('contactForm').reset();
    });
</script>
</body>
</html>