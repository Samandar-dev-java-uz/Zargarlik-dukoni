<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="uz">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZARGARLIK UYI - Foydalanuvchi Panel</title>
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
            background-color: #f8f9fa;
        }

        .sidebar {
            background-color: var(--secondary-color);
            color: white;
            height: 100vh;
            position: fixed;
            width: 250px;
            padding-top: 20px;
            z-index: 1000;
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

        .header {
            background-color: white;
            padding: 15px 20px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            margin-bottom: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .search-bar {
            width: 300px;
        }

        .product-card {
            border: none;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            transition: all 0.3s;
            margin-bottom: 20px;
            height: 100%;
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

        .cart-item {
            border-bottom: 1px solid #eee;
            padding: 15px 0;
        }

        .order-item {
            border-bottom: 1px solid #eee;
            padding: 15px 0;
        }

        .badge-gold {
            background-color: var(--primary-color);
            color: var(--secondary-color);
        }

        .notification-badge {
            position: absolute;
            top: -5px;
            right: -5px;
            background-color: #dc3545;
            color: white;
            border-radius: 50%;
            width: 20px;
            height: 20px;
            font-size: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .cart-container, .history-container {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        .language-selector {
            background: none;
            border: none;
            color: white;
        }

        .user-info {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .user-avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background-color: var(--primary-color);
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <div class="text-center mb-4">
        <h4><i class="fas fa-gem me-2"></i>ZARGARLIK UYI</h4>
        <p class="text-muted">Foydalanuvchi Panel</p>
    </div>
    <hr class="bg-light">
    <ul class="nav flex-column">
        <li class="nav-item">
            <a class="nav-link active" href="#" data-section="products">
                <i class="fas fa-ring me-2"></i>Mahsulotlar
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#" data-section="cart">
                <i class="fas fa-shopping-cart me-2"></i>Savatcha
                <span class="notification-badge" id="cart-count">3</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#" data-section="history">
                <i class="fas fa-history me-2"></i>Tarix
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/auth">
                <i class="fas fa-sign-out-alt me-2"></i>Chiqish
            </a>
        </li>
    </ul>
</div>

<!-- Main Content -->
<div class="main-content">
    <!-- Header -->
    <div class="header">
        <div class="search-bar">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Qidirish...">
                <button class="btn btn-outline-secondary" type="button">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>
        <div class="user-info">
            <select class="language-selector">
                <option>ENG</option>
                <option selected>UZB</option>
                <option>RUS</option>
            </select>
            <div class="user-avatar">AA</div>
            <div>
                <div class="fw-bold">Aziz Aliyev</div>
                <div class="text-muted small">12:01 PM 9/13/2025</div>
            </div>
        </div>
    </div>

    <!-- Products Section -->
    <div id="products-section" class="content-section">
        <h2 class="mb-4">Mahsulotlar</h2>
        <div class="row">
            <!-- Product 1 -->
            <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
                <div class="card product-card h-100">
                    <img src="https://images.unsplash.com/photo-1605100956109-c4812ed0dcc5?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80"
                         class="card-img-top product-image" alt="Oltin uzuk">
                    <div class="card-body">
                        <h5 class="card-title">Oltin uzuk</h5>
                        <p class="card-text">Chiroyli naqshli oltin uzuk, ajoyib qizil tosh bilan bezatilgan.</p>
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <span class="price">2,500,000 so'm</span>
                        </div>
                        <button class="btn btn-gold w-100 add-to-cart" data-product-id="1" data-product-name="Oltin uzuk" data-product-price="2500000">
                            <i class="fas fa-cart-plus me-2"></i>Savatga qo'shish
                        </button>
                    </div>
                </div>
            </div>

            <!-- Product 2 -->
            <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
                <div class="card product-card h-100">
                    <img src="https://images.unsplash.com/photo-1515562141207-7a88fb7ad5e5?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80"
                         class="card-img-top product-image" alt="Kumush bilaguzuk">
                    <div class="card-body">
                        <h5 class="card-title">Kumush bilaguzuk</h5>
                        <p class="card-text">Zamonaviy uslubda ishlangan kumush bilaguzuk, noyob dizayn.</p>
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <span class="price">890,000 so'm</span>
                        </div>
                        <button class="btn btn-gold w-100 add-to-cart" data-product-id="2" data-product-name="Kumush bilaguzuk" data-product-price="890000">
                            <i class="fas fa-cart-plus me-2"></i>Savatga qo'shish
                        </button>
                    </div>
                </div>
            </div>

            <!-- Product 3 -->
            <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
                <div class="card product-card h-100">
                    <img src="https://images.unsplash.com/photo-1535632066927-ab7c9ab60908?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80"
                         class="card-img-top product-image" alt="Olmosli zirak">
                    <div class="card-body">
                        <h5 class="card-title">Olmosli zirak</h5>
                        <p class="card-text">Sifatli olmos bilan ishlangan oltin zirak, ajoyib yorqinlik.</p>
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <span class="price">3,500,000 so'm</span>
                        </div>
                        <button class="btn btn-gold w-100 add-to-cart" data-product-id="3" data-product-name="Olmosli zirak" data-product-price="3500000">
                            <i class="fas fa-cart-plus me-2"></i>Savatga qo'shish
                        </button>
                    </div>
                </div>
            </div>

            <!-- Product 4 -->
            <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
                <div class="card product-card h-100">
                    <img src="https://images.unsplash.com/photo-1596944946755-2a7e4c69b345?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80"
                         class="card-img-top product-image" alt="Marvarid zanjir">
                    <div class="card-body">
                        <h5 class="card-title">Marvarid zanjir</h5>
                        <p class="card-text">Tabiiy marvarid bilan ishlangan oltin zanjir, noyob va zamonaviy.</p>
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <span class="price">2,800,000 so'm</span>
                        </div>
                        <button class="btn btn-gold w-100 add-to-cart" data-product-id="4" data-product-name="Marvarid zanjir" data-product-price="2800000">
                            <i class="fas fa-cart-plus me-2"></i>Savatga qo'shish
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Cart Section (Hidden by default) -->
    <div id="cart-section" class="content-section" style="display: none;">
        <h2 class="mb-4">Savatcha</h2>
        <div class="cart-container">
            <div id="cart-items">
                <!-- Cart items will be dynamically added here -->
            </div>
            <div class="d-flex justify-content-between align-items-center mt-4 pt-3 border-top">
                <h4>Jami: <span id="cart-total">0</span> so'm</h4>
                <button class="btn btn-gold btn-lg" id="checkout-btn">
                    <i class="fas fa-shopping-bag me-2"></i>Buyurtma berish
                </button>
            </div>
        </div>
    </div>

    <!-- Order History Section (Hidden by default) -->
    <div id="history-section" class="content-section" style="display: none;">
        <h2 class="mb-4">Buyurtmalar tarixi</h2>
        <div class="history-container">
            <div id="order-history">
                <!-- Order history will be dynamically added here -->
                <p class="text-center text-muted" id="empty-history-message">Hali buyurtmalaringiz mavjud emas.</p>
            </div>
        </div>
    </div>
</div>

<!-- Success Modal -->
<div class="modal fade" id="successModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Muvaffaqiyatli</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>Mahsulot muvaffaqiyatli savatchaga qo'shildi!</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Yopish</button>
                <button type="button" class="btn btn-gold" id="go-to-cart">Savatchaga o'tish</button>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Navigation
        const navLinks = document.querySelectorAll('.nav-link[data-section]');
        const contentSections = document.querySelectorAll('.content-section');

        navLinks.forEach(link => {
            link.addEventListener('click', function(e) {
                e.preventDefault();

                // Remove active class from all links
                navLinks.forEach(navLink => navLink.classList.remove('active'));
                // Add active class to clicked link
                this.classList.add('active');

                // Hide all sections
                contentSections.forEach(section => section.style.display = 'none');

                // Show the selected section
                const targetSection = this.getAttribute('data-section');
                document.getElementById(`${targetSection}-section`).style.display = 'block';
            });
        });

        // Cart functionality
        let cart = JSON.parse(localStorage.getItem('user_cart')) || [];
        let orderHistory = JSON.parse(localStorage.getItem('user_orders')) || [];

        // Update cart count
        function updateCartCount() {
            const cartCount = document.getElementById('cart-count');
            const totalItems = cart.reduce((total, item) => total + item.quantity, 0);
            cartCount.textContent = totalItems;

            if (totalItems === 0) {
                cartCount.style.display = 'none';
            } else {
                cartCount.style.display = 'flex';
            }
        }

        // Add to cart functionality
        const addToCartButtons = document.querySelectorAll('.add-to-cart');
        addToCartButtons.forEach(button => {
            button.addEventListener('click', function() {
                const productId = this.getAttribute('data-product-id');
                const productName = this.getAttribute('data-product-name');
                const productPrice = parseInt(this.getAttribute('data-product-price'));

                // Check if product already in cart
                const existingItem = cart.find(item => item.id === productId);

                if (existingItem) {
                    existingItem.quantity += 1;
                } else {
                    cart.push({
                        id: productId,
                        name: productName,
                        price: productPrice,
                        quantity: 1
                    });
                }

                // Save to localStorage
                localStorage.setItem('user_cart', JSON.stringify(cart));

                // Update cart count
                updateCartCount();

                // Show success modal
                const successModal = new bootstrap.Modal(document.getElementById('successModal'));
                successModal.show();
            });
        });

        // Go to cart button in modal
        document.getElementById('go-to-cart').addEventListener('click', function() {
            // Switch to cart section
            navLinks.forEach(link => link.classList.remove('active'));
            document.querySelector('.nav-link[data-section="cart"]').classList.add('active');

            contentSections.forEach(section => section.style.display = 'none');
            document.getElementById('cart-section').style.display = 'block';

            // Update cart display
            updateCartDisplay();

            // Hide modal
            bootstrap.Modal.getInstance(document.getElementById('successModal')).hide();
        });

        // Update cart display
        function updateCartDisplay() {
            const cartItemsContainer = document.getElementById('cart-items');
            const cartTotalElement = document.getElementById('cart-total');

            cartItemsContainer.innerHTML = '';

            if (cart.length === 0) {
                cartItemsContainer.innerHTML = '<p class="text-center text-muted">Savatchangiz bo\'sh</p>';
                cartTotalElement.textContent = '0';
                return;
            }

            let total = 0;

            cart.forEach((item, index) => {
                const itemTotal = item.price * item.quantity;
                total += itemTotal;

                const cartItemElement = document.createElement('div');
                cartItemElement.className = 'cart-item';
                cartItemElement.innerHTML = `
                    <div class="row align-items-center">
                        <div class="col-md-4">
                            <h5>${item.name}</h5>
                        </div>
                        <div class="col-md-2">
                            <span class="price">${item.price.toLocaleString()} so'm</span>
                        </div>
                        <div class="col-md-2">
                            <div class="input-group">
                                <button class="btn btn-outline-secondary decrease-quantity" data-index="${index}">-</button>
                                <input type="number" class="form-control text-center" value="${item.quantity}" min="1" readonly>
                                <button class="btn btn-outline-secondary increase-quantity" data-index="${index}">+</button>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <span class="price">${itemTotal.toLocaleString()} so'm</span>
                        </div>
                        <div class="col-md-2">
                            <button class="btn btn-danger remove-from-cart" data-index="${index}">
                                <i class="fas fa-trash"></i>
                            </button>
                        </div>
                    </div>
                `;

                cartItemsContainer.appendChild(cartItemElement);
            });

            cartTotalElement.textContent = total.toLocaleString();

            // Add event listeners to quantity buttons
            document.querySelectorAll('.increase-quantity').forEach(button => {
                button.addEventListener('click', function() {
                    const index = parseInt(this.getAttribute('data-index'));
                    cart[index].quantity += 1;
                    localStorage.setItem('user_cart', JSON.stringify(cart));
                    updateCartDisplay();
                    updateCartCount();
                });
            });

            document.querySelectorAll('.decrease-quantity').forEach(button => {
                button.addEventListener('click', function() {
                    const index = parseInt(this.getAttribute('data-index'));
                    if (cart[index].quantity > 1) {
                        cart[index].quantity -= 1;
                    } else {
                        cart.splice(index, 1);
                    }
                    localStorage.setItem('user_cart', JSON.stringify(cart));
                    updateCartDisplay();
                    updateCartCount();
                });
            });

            document.querySelectorAll('.remove-from-cart').forEach(button => {
                button.addEventListener('click', function() {
                    const index = parseInt(this.getAttribute('data-index'));
                    cart.splice(index, 1);
                    localStorage.setItem('user_cart', JSON.stringify(cart));
                    updateCartDisplay();
                    updateCartCount();
                });
            });
        }

        // Checkout functionality
        document.getElementById('checkout-btn').addEventListener('click', function() {
            if (cart.length === 0) {
                alert('Savatchangiz bo\'sh. Buyurtma berish uchun mahsulot qo\'shing.');
                return;
            }

            // Create order
            const order = {
                id: Date.now(),
                date: new Date().toLocaleString('uz-UZ'),
                items: [...cart],
                total: cart.reduce((total, item) => total + (item.price * item.quantity), 0)
            };

            // Add to order history
            orderHistory.push(order);
            localStorage.setItem('user_orders', JSON.stringify(orderHistory));

            // Clear cart
            cart = [];
            localStorage.setItem('user_cart', JSON.stringify(cart));

            // Update UI
            updateCartCount();
            updateCartDisplay();

            // Show success message
            alert('Buyurtmangiz muvaffaqiyatli qabul qilindi! Buyurtma raqami: ' + order.id);

            // Update order history display if we're on that page
            if (document.getElementById('history-section').style.display === 'block') {
                updateOrderHistoryDisplay();
            }
        });

        // Update order history display
        function updateOrderHistoryDisplay() {
            const orderHistoryContainer = document.getElementById('order-history');
            const emptyHistoryMessage = document.getElementById('empty-history-message');

            if (orderHistory.length === 0) {
                emptyHistoryMessage.style.display = 'block';
                return;
            }

            emptyHistoryMessage.style.display = 'none';
            orderHistoryContainer.innerHTML = '';

            orderHistory.forEach(order => {
                const orderElement = document.createElement('div');
                orderElement.className = 'order-item';

                let itemsHtml = '';
                order.items.forEach(item => {
                    itemsHtml += `
                        <div class="d-flex justify-content-between">
                            <span>${item.name} x ${item.quantity}</span>
                            <span>${(item.price * item.quantity).toLocaleString()} so'm</span>
                        </div>
                    `;
                });

                orderElement.innerHTML = `
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <h5>Buyurtma #${order.id}</h5>
                        <span class="badge bg-success">Yetkazib berildi</span>
                    </div>
                    <div class="mb-2">
                        <small class="text-muted">Sana: ${order.date}</small>
                    </div>
                    <div class="mb-2">
                        ${itemsHtml}
                    </div>
                    <div class="d-flex justify-content-between pt-2 border-top">
                        <strong>Jami:</strong>
                        <strong>${order.total.toLocaleString()} so'm</strong>
                    </div>
                `;

                orderHistoryContainer.appendChild(orderElement);
            });
        }

        // Initialize
        updateCartCount();

        // If we're on the cart page, update cart display
        if (document.getElementById('cart-section').style.display === 'block') {
            updateCartDisplay();
        }

        // If we're on the history page, update order history display
        if (document.getElementById('history-section').style.display === 'block') {
            updateOrderHistoryDisplay();
        }
    });
</script>
</body>
</html>