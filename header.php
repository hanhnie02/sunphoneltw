<?php
// Ket noi CSDL hihi
$servername="localhost";
$username="root";
$password="";
$dbname="sunphone";
$conn=new mysqli($servername,$username,$password,$dbname);
if($conn->connect_error){
    die ("Connection failed: ".$conn->connect_error);
}
mysqli_query($conn,'set names utf8');
session_start();
$cart = (isset($_SESSION['cart'])) ? $_SESSION['cart'] : [];
// haha
?>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Sun Phone </title>
    <meta name="keywords" content="HTML5 Template">
    <meta name="description" content="Sun Phone">    
    <meta name="author" content="p-themes">
    <!-- Favicon -->

    <link rel="apple-touch-icon" sizes="180x180" href="assets/images/haha.png">
    <link rel="icon" type="image/png" sizes="40x20" href="assets/images/haha.png">  
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/haha.png">

    <link rel="apple-touch-icon" sizes="180x180" href="assets/images/logo1.png">
    <link rel="icon" type="image/png" sizes="40x20" href="assets/images/logo1.png">  
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/logo1.png">

    <link rel="stylesheet" href="assets/vendor/line-awesome/line-awesome/line-awesome/css/line-awesome.min.css">
    <!-- Plugins CSS File -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/plugins/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="assets/css/plugins/magnific-popup/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/plugins/jquery.countdown.css">
    <!-- Main CSS File -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/skins/skin-demo-3.css">
    <link rel="stylesheet" href="assets/css/demos/demo-3.css">
</head>

<style>
body {
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>
    <div class="page-wrapper">
        <header class="header header-intro-clearance header-3">
            <div class="header-top">
                <div class="container">
                    <div class="header-left">
                        <a href="tel:#"><i class="icon-phone"></i>Call: +0123 456 789</a>
                    </div><!-- End .header-left bun cha -->
                    <div class="header-right">
                        <ul class="top-menu">
                            <li>
                                <a href="#">Links</a>
                                <ul>
                                    <li>
                                        <div class="header-dropdown">
                                            <a href="#">Vi</a>
                                            <div class="header-menu">
                                                <ul>
                                                    <li><a href="#">Vi</a></li>
                                                    <li><a href="#">En</a></li>                                          
                                                </ul>
                                            </div><!-- End .header-menu -->
                                        </div>
                                    </li>
                                 <ul>   
                                    <li><a style style="font-family:roboto"><a href="register.php">Đăng kí</a></li>
                                    <li><a style style="font-family:roboto"><a href="login.php">Đăng nhập</a></li>
                                </ul>
                                </li>
                                </ul>
                            </li>
                        </ul><!-- End .top-menu -->
                    </div><!-- End .header-right -->

                </div><!-- End .container -->
            </div><!-- End .header-top -->

            <div class="header-middle">
                <div class="container">
                    <div class="header-left">
                        <button class="mobile-menu-toggler">
                            <span class="sr-only">Toggle mobile menu</span>
                            <i class="icon-bars"></i>
                        </button>
                        
                        <a href="index.php" class="logo">
                            <img src="assets/images/sunphone.png" alt="Molla Logo" width="250" height="150">
                        </a>
                    </div><!-- End .header-left -->

                    <div class="header-center">
                        <div class="header-search header-search-extended header-search-visible d-none d-lg-block">
                            <a href="#" class="search-toggle" role="button"><i class="icon-search"></i></a>
                            <form action="#" method="get">
                                <div class="header-search-wrapper search-wrapper-wide">
                                    <label for="q" class="sr-only">Search</label>
                                    <button class="btn btn-primary" type="submit"><i class="icon-search"></i></button>
                                    <input type="search" style="font-family:roboto; font-size:15px" class="form-control" name="q" id="q" placeholder="Tìm kiếm sản phẩm ..." required>
                                </div><!-- End .header-search-wrapper -->
                            </form>
                        </div><!-- End .header-search -->
                    </div>

                    <div class="header-right">
                       

                        <div class="wishlist">
                            <a href="wishlist.php" title="Wishlist">
                                <div class="icon">
                                    <i class="icon-heart-o"></i>
                                  
                                </div>
                                <p>Yêu thích</p>
                            </a>
                        </div>
                        <div class="dropdown cart-dropdown">
                        <a href="cart.php" class="dropdown-toggle">
                                <div class="icon">
                                    <i class="icon-shopping-cart"></i>
                                    <span class="cart-count"><?php echo count($cart)?></span>
                                </div>
                                <p style="font-family:roboto ">Giỏ hàng</p>
                            </a>    
                    </div><!-- End .header-right -->
                </div><!-- End .container --> 
            </div><!-- End .header-middle -->

            <div class="header-bottom sticky-header">
                <div class="container">
                    <div class="header-left">
                        <div class="dropdown category-dropdown">
                            <a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static" title="Browse Categories"
                            style="font-family:roboto; font-size:20px"> Danh mục sản phẩm <i class="icon-angle-down"></i>
                            </a>

                            <div class="dropdown-menu">
                                <nav class="side-nav">
                                    <ul class="menu-vertical sf-arrows">

                                        <?php
                                        $sql_category="SELECT * FROM danhmuc order by danhmuc_id asc";
                                        $result=$conn->query($sql_category);
                                        if($result ->num_rows >0)
                                        {
                                            $i=1;
                                            while($row_danhmuc=$result->fetch_assoc())
                                            {
                                                ?>
                                                <li class="item-lead"><a style="font-family:roboto" href="category.php?id=<?php echo $row_danhmuc['danhmuc_id'];?>"><?php echo $row_danhmuc['tendanhmuc']?></a></li>
                                                <?php
                                            $i++;
                                            }
                                        }
                                        ?>
                                                                           
                                    </ul><!-- End .menu-vertical -->
                                </nav><!-- End .side-nav -->
                            </div><!-- End .dropdown-menu -->
                        </div><!-- End .category-dropdown -->
                    </div><!-- End .header-left -->
                    <div class="header-center">
                        <nav class="main-nav">
                            <ul class="menu sf-arrows">
                                <li class="megamenu-container active">
                                    <a href="index.php" style="font-family:roboto">Trang chủ</a>

                                </li>
                                
                                <li>
                                    <a style="font-family:roboto" href="blog-listing.php" class="sf-with-ul">Tin tức</a>
                                    <nav class="side-nav">
                                    <ul class="menu-vertical sf-arrows">

                                        <?php
                                        $sql_blog="SELECT * FROM blog order by blog_id asc";
                                        $result=$conn->query($sql_blog);
                                        if($result ->num_rows >0)
                                        {
                                            $i=1;
                                            while($row_blog=$result->fetch_assoc())
                                            {
                                                ?>
                                                <li class="item-lead"><a style="font-family:roboto" href="blog-listing.php?id=<?php echo $row_blog['blog_id'];?>"><?php echo $row_blog['blog_name']?></a></li>
                                                <?php
                                            $i++;
                                            }
                                        }
                                        ?>
                                                                           
                                    </ul><!-- End .menu-vertical -->
                                </nav><!-- End .side-nav -->
                                </li>
                                <li>
                                <a href="listsanpham.php" style="font-family:roboto">Sản phẩm</a>
                                </li>
                                <li>
                                    <a href="elements-list.html" style="font-family:roboto">Bảo hành</a>
                                </li>
                                <li>
                                    <a href="elements-list.html" style="font-family:roboto">Liên hệ</a>
                                </li>
                            </ul><!-- End .menu -->
                        </nav><!-- End .main-nav -->
                    </div><!-- End .header-center -->

                    <div class="header-right">
                        <i class="la la-lightbulb-o" ></i><p style="font-family: roboto, Helvetica, sans-serif;">Xả kho<span class="highlight">&nbsp;Giảm tới 30%</span></p>
                    </div>
                </div><!-- End .container -->
            </div><!-- End .header-bottom -->
        </header><!-- End .header -->