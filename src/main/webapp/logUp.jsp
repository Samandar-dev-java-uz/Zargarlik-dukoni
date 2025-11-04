<!DOCTYPE html>
<html lang="uz">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZARGARLIK UYI - Ro'yxatdan o'tish</title>
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

        .register-container {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 40px 0;
            background: linear-gradient(rgba(255,255,255,0.9), rgba(255,255,255,0.9)), url('https://images.unsplash.com/photo-1599643478517-a31344aa3f6c?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
        }

        .register-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 500px;
            padding: 40px;
        }

        .register-logo {
            text-align: center;
            margin-bottom: 30px;
        }

        .register-logo i {
            font-size: 3rem;
            color: var(--primary-color);
        }

        .register-logo h2 {
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

        .password-toggle {
            cursor: pointer;
            position: absolute;
            right: 15px;
            top: 42px;
            color: #6c757d;
        }

        .password-toggle:hover {
            color: var(--primary-color);
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

        .progress {
            height: 8px;
            margin-bottom: 15px;
        }

        .progress-bar {
            background-color: var(--primary-color);
        }

        .password-strength-weak {
            background-color: #dc3545;
        }

        .password-strength-medium {
            background-color: #fd7e14;
        }

        .password-strength-strong {
            background-color: #198754;
        }

        /* Gender select styles */
        .gender-select-wrapper {
            position: relative;
        }

        .gender-select-wrapper:after {
            content: "▼";
            font-size: 12px;
            position: absolute;
            right: 15px;
            top: 45px;
            color: #6c757d;
            pointer-events: none;
        }

        .gender-icon {
            margin-right: 8px;
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
                    <a class="nav-link" href="/">Biz Haqimizda</a>
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
                    <a class="nav-link active" href="/register">
                        <i class="fas fa-user-plus me-1"></i>Ro'yxatdan o'tish
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Register Section -->
<div class="register-container">
    <div class="register-card">
        <div class="register-logo">
            <i class="fas fa-user-plus"></i>
            <h2>Yangi hisob yaratish</h2>
        </div>

        <form action="/register" method="POST" id="registerForm">
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="firstName" class="form-label">Ism</label>
                    <input type="text" class="form-control" id="firstName" name="name" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="lastName" class="form-label">Familiya</label>
                    <input type="text" class="form-control" id="lastName" name="surname" required>
                </div>
            </div>

            <!-- Gender Selection - Select orqali yangi qo'shilgan qism -->
            <div class="mb-3">
                <label for="gender" class="form-label">Jins</label>
                <div class="gender-select-wrapper">
                    <select class="form-select" id="gender" name="gender" required>
                        <option value="" selected disabled>Jinsingizni tanlang</option>
                        <option value="male">Erkak</option>
                        <option value="female">Ayol</option>
                        <option value="other">Boshqa</option>
                    </select>
                </div>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Elektron pochta</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>

            <div class="mb-3">
                <label for="phone" class="form-label">Telefon raqam</label>
                <div class="input-group">
                    <span class="input-group-text">+998</span>
                    <input type="tel" class="form-control" id="phone" name="phone" placeholder="901234567" pattern="[0-9]{9}" maxlength="9" required>
                </div>
                <div class="form-text">Format: 901234567 (9 ta raqam)</div>
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Parol</label>
                <div class="position-relative">
                    <input type="password" class="form-control" id="password" name="password" required minlength="8">
                    <span class="password-toggle" id="passwordToggle">
                        <i class="fas fa-eye"></i>
                    </span>
                </div>
                <div class="progress mt-2" id="passwordStrengthBar" style="display: none;">
                    <div class="progress-bar" role="progressbar"></div>
                </div>
                <div class="form-text">Parol kamida 8 ta belgidan iborat bo'lishi kerak</div>
            </div>

            <div class="mb-3">
                <label for="confirmPassword" class="form-label">Parolni tasdiqlash</label>
                <div class="position-relative">
                    <input type="password" class="form-control" id="confirmPassword" name="password" required>
                    <span class="password-toggle" id="confirmPasswordToggle">
                        <i class="fas fa-eye"></i>
                    </span>
                </div>
                <div id="passwordMatch" class="form-text"></div>
            </div>

            <button type="submit" class="btn btn-gold mb-3">Ro'yxatdan o'tish</button>
        </form>

        <div class="text-center">
            Allaqachon hisobingiz bormi? <a href="/logIn.jsp" class="text-decoration-none">Tizimga kirish</a>
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
<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Parolni ko'rsatish/yashirish
        const setupPasswordToggle = (inputId, toggleId) => {
            const passwordInput = document.getElementById(inputId);
            const passwordToggle = document.getElementById(toggleId);

            passwordToggle.addEventListener('click', function() {
                if (passwordInput.type === 'password') {
                    passwordInput.type = 'text';
                    this.innerHTML = '<i class="fas fa-eye-slash"></i>';
                } else {
                    passwordInput.type = 'password';
                    this.innerHTML = '<i class="fas fa-eye"></i>';
                }
            });
        };

        setupPasswordToggle('password', 'passwordToggle');
        setupPasswordToggle('confirmPassword', 'confirmPasswordToggle');

        // Parol kuchini tekshirish
        const passwordInput = document.getElementById('password');
        const strengthBar = document.getElementById('passwordStrengthBar');
        const strengthBarInner = strengthBar.querySelector('.progress-bar');

        passwordInput.addEventListener('focus', function() {
            strengthBar.style.display = 'flex';
        });

        passwordInput.addEventListener('input', function() {
            const password = this.value;
            let strength = 0;

            // Parol uzunligi
            if (password.length >= 8) strength += 25;

            // Katta harf mavjudligi
            if (/[A-Z]/.test(password)) strength += 25;

            // Raqam mavjudligi
            if (/[0-9]/.test(password)) strength += 25;

            // Maxsus belgi mavjudligi
            if (/[^A-Za-z0-9]/.test(password)) strength += 25;

            strengthBarInner.style.width = strength + '%';

            // Rangi o'zgartirish
            if (strength < 50) {
                strengthBarInner.className = 'progress-bar password-strength-weak';
            } else if (strength < 75) {
                strengthBarInner.className = 'progress-bar password-strength-medium';
            } else {
                strengthBarInner.className = 'progress-bar password-strength-strong';
            }
        });

        // Parol mosligini tekshirish
        const confirmPasswordInput = document.getElementById('confirmPassword');
        const passwordMatch = document.getElementById('passwordMatch');

        confirmPasswordInput.addEventListener('input', function() {
            if (this.value !== passwordInput.value) {
                passwordMatch.textContent = 'Parollar mos kelmadi';
                passwordMatch.style.color = '#dc3545';
            } else {
                passwordMatch.textContent = 'Parollar mos keldi';
                passwordMatch.style.color = '#198754';
            }
        });

        // Telefon raqam formati - Soddalashtirilgan versiya
        const phoneInput = document.getElementById('phone');

        phoneInput.addEventListener('input', function(e) {
            // Faqat raqamlarni qabul qilish
            this.value = this.value.replace(/[^0-9]/g, '');

            // 9 ta raqamdan oshmasligi kerak
            if (this.value.length > 9) {
                this.value = this.value.slice(0, 9);
            }
        });

        // Formani yuborish
        document.getElementById('registerForm').addEventListener('submit', function(e) {
            // Parol mosligini tekshirish
            if (passwordInput.value !== confirmPasswordInput.value) {
                e.preventDefault();
                alert('Parollar mos kelmadi. Iltimos, tekshirib qaytadan kiriting.');
                passwordInput.focus();
                return false;
            }

            // Telefon raqam formatini tekshirish
            const phonePattern = /^[0-9]{9}$/;
            if (!phonePattern.test(phoneInput.value)) {
                e.preventDefault();
                alert('Iltimos, telefon raqamini to\'g\'ri formatda kiriting: 9 ta raqam');
                phoneInput.focus();
                return false;
            }

            // Gender tanlanganligini tekshirish
            const genderSelect = document.getElementById('gender');
            if (!genderSelect.value) {
                e.preventDefault();
                alert('Iltimos, jinsingizni tanlang');
                genderSelect.focus();
                return false;
            }

            // Agar hamma shartlar bajarilsa, form yuboriladi
            return true;
        });
    });
</script>
</body>
</html>