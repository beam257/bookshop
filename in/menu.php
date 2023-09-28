<header class="d-flex justify-content-center py-3 sticky-top bg-light border-bottom shadow-sm">
<a href="index1.php" style="text-decoration: none;"><font color="#003300"><h2 class="Logo"><i class='bx bxl-firebase'></i>Bookshop</h2></a></font>
<ul class="nav nav-pills">
        <li class="nav-item"><b><a href="<?php echo $base_url; ?>/index1.php" class="nav-link">Home</a></li</b>
        <li class="nav-item"><b><a href="<?php echo $base_url; ?>/cart.php" class="nav-link"><i class='fas fa-cart-plus'></i> (<?php echo count($_SESSION['cart'] ?? []); ?>)</a></li></b>
        <li class="nav-items"><b><a href="<?php echo $base_url; ?>/login.php" class="nav-link">Login</a></li></b>
    </ul>
</header>
