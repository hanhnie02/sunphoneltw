<?php
require("header.php");
?>
<style>
    .table{color: #666;}
</style>
<?php 
    $ketnoi = mysqli_connect("localhost","root","","sunphone");
    /*mysqli_set_charset($ketnoi, 'UTF8');*/
    
    // Bước 2: Lấy dữ liệu từ trên đường đẫn
    $id=$_GET["id"];

    //Bước 3: Hiển thị các dữ liệu trong bảng tbl_sanpham ra đây
    $sql = "
        SELECT * 
        FROM sanpham 
        WHERE sanpham_id = ".$id  ;
    
    $dulieu = mysqli_query($ketnoi, $sql);
          //  $product = mysqli_fetch_assoc($dulieu);
    $row = mysqli_fetch_array($dulieu);
;?>

<body>
    <main class="main">
        <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
            <div class="container d-flex align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.php" style="font-family:roboto">Trang chủ</a></li>
                    <li class="breadcrumb-item" style="font-family:roboto">Chi tiết sản phẩm</li>
                    <li class="breadcrumb-item" style="font-family:roboto"><?php echo $row["ten_sp"] ?></li>
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="page-content">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                        <div class="product-details-top">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="product-gallery">
                                        <figure class="product-main-image">
                                            <img src="assets/<?php echo $row["hinh_anh"];?>" alt="product image">     
                                        </figure><!-- End .product-main-image -->
                                    </div><!-- End .product-gallery -->
                                </div><!-- End .col-md-6 -->

                                <div class="col-md-6" >
                                    <div class="product-details product-details-sidebar" style="font-family:roboto; font-size:20px">
                                        <h1 class="product-title"><?php echo $row["ten_sp"] ?></h1><!-- End .product-title -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                        </div>
                                            <!-- End .rating-container -->
                                        <p class="mb-3" style="font-family:roboto">
                                            <span class="product-price" >
                                                <?php if (number_format($row["khuyenmai"])>0) echo number_format($row["khuyenmai"]).'₫'; else echo number_format($row["giaban"]).'₫';?> 
                                                <del class="mx-2 font-weight-light"> <?php if (number_format($row["khuyenmai"])>0) echo   number_format($row["giaban"]).'₫'?></del>
                                            </span>

                                        </p>
                                   

                                        <div>
                                            <strong style="color:#d70018 ;font-size: 20px">Khuyến mãi</strong>
                                            <ul class="" style="list-style-type:disc ; color:#000">
                                                <li><a style="font-family:roboto" >Lì xì ngay 360.000đ áp dụng đến 31/01</a></li>
                                                <li><a style="font-family:roboto" >Giảm thêm tới 300.000đ khi thanh toán qua VNPAY</a></li>
                                                <li><a style="font-family:roboto">Tặng hộp may mắn - số lượng có hạn</a></li>
                                            </ul>
                                        </div><!-- End .product-content -->                                   
                                        <p style="color:#000;font-size: 20px;font-family:roboto" for="color" style="font-family:roboto">Màu sắc: <?php echo $row["color"];?></p>
                                            <div class="details-filter-row details-row-size">
                                                <p style="color:#000;font-size: 20px;font-family:roboto" for="ram" style="font-family:roboto">RAM: <?php echo $row["ram"];?></p>
                                            </div><!-- End .details-filter-row -->

                                            <div class="product-details-action">
                                                <div class="details-action-col">
                                                    <label for="qty" style="color:#000">Số lượng</label>
                                                    <div class="product-details-quantity">
                                                        <input type="number" id="qty" class="form-control" value="1" min="1" max="10" step="1" data-decimals="0" required>
                                                    </div><!-- End .product-details-quantity -->

                                                    <a href="addtocart.php?id=<?php echo $row['sanpham_id']?>" class="btn-product btn-cart"><span>Thêm vào giỏ hàng</span></a>
                                                </div><!-- End .details-action-col -->

                                                <div class="details-action-wrapper">
                                                    <a href="#" class="btn-product btn-wishlist" title="Wishlist"><span>Add to Wishlist</span></a>
                                                    <a href="#" class="btn-product btn-compare" title="Compare"><span>Add to Compare</span></a>
                                                </div><!-- End .details-action-wrapper -->
                                            </div><!-- End .product-details-action -->

                                            <div class="product-details-footer details-footer-col">
                                                    <div class="social-icons social-icons-sm">
                                                    <span class="social-label">Share:</span>
                                                    <a href="#" class="social-icon" title="Facebook" target="_blank"><i class="icon-facebook-f"></i></a>
                                                    <a href="#" class="social-icon" title="Twitter" target="_blank"><i class="icon-twitter"></i></a>
                                                    <a href="#" class="social-icon" title="Instagram" target="_blank"><i class="icon-instagram"></i></a>
                                                    <a href="#" class="social-icon" title="Pinterest" target="_blank"><i class="icon-pinterest"></i></a>
                                                </div>
                                            </div><!-- End .product-details-footer -->
                                        </div><!-- End .product-details -->
                                    </div><!-- End .col-md-6 -->
                                </div><!-- End .row -->
                            </div><!-- End .product-details-top -->
                            <div class="product-details-tab">
                                <ul class="nav nav-pills justify-content-center" role="tablist" >
                                    <li class="nav-item" >
                                        <a class="nav-link" id="product-desc-link" data-toggle="tab" href="#product-desc-tab" role="tab" aria-controls="product-desc-tab" aria-selected="true" style="font-size: 20px;font-family:roboto">MÔ TẢ SẢN PHẨM</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="product-info-link" data-toggle="tab" href="#product-info-tab" role="tab" aria-controls="product-info-tab" aria-selected="false" style="font-size: 20px;font-family:roboto">THÔNG SỐ KỸ THUẬT</a>
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="product-desc-tab" role="tabpanel" aria-labelledby="product-desc-link" style="text-align: left; font-family:roboto; font-size: 16px">
                                        <div class="product-desc-content" >
                                        <?php echo $row["chitiet"];?>
                                        </div><!-- End .product-desc-content -->
                                    </div><!-- .End .tab-pane -->
                                    <div style="text-align: left; font-family:roboto; font-size: 16px; font-color:#666" class="tab-pane fade table" id="product-info-tab" role="tabpanel" aria-labelledby="product-info-link" >
                                        <table class="table table-striped table-bordered" >
                <tr>
                    <td>&ensp; Kích thước màn hình</td>
                    <td>&ensp; <?php echo $row['kichthuocman']; ?></td>
                </tr>
                <tr>
                    <td>&ensp; Công nghệ màn hình</td>
                    <td>&ensp; <?php echo $row['congngheman']; ?></td>
                </tr>
                <tr>
                    <td>&ensp; Camera sau</td>
                    <td>&ensp; <?php echo $row['cam_sau']; ?></td>
                </tr>
                <tr>
                    <td>&ensp; Cam trước</td>
                    <td>&ensp; <?php echo $row['cam_truoc']; ?></td>
                </tr>
                <tr>
                    <td> &ensp; Chipset</td>
                    <td>&ensp; <?php echo $row['chipset']; ?></td>
                </tr>
                <tr>
                    <td>&ensp; Pin</td>
                    <td>&ensp; <?php echo $row['pin']; ?></td>
                </tr>
                <tr>
                    <td>&ensp; Hệ điều hành</td>
                    <td>&ensp; <?php echo $row['hedieuhanh']; ?></td>
                </tr>
                <tr>
                    <td>&ensp; RAM</td>
                    <td>&ensp; <?php echo $row['ram']; ?></td>
                </tr>
            </table>

                                    </div><!-- .End .tab-pane -->                                                           
                                </div><!-- End .tab-content -->
                            </div><!-- End .product-details-tab -->

                            <h2 class="title text-center mb-4">You May Also Like</h2><!-- End .title text-center -->
                            <div class="owl-carousel owl-simple carousel-equal-height carousel-with-shadow" data-toggle="owl" 
                                data-owl-options='{
                                    "nav": false, 
                                    "dots": true,
                                    "margin": 20,
                                    "loop": false,
                                    "responsive": {
                                        "0": {
                                            "items":1
                                        },
                                        "480": {
                                            "items":2
                                        },
                                        "768": {
                                            "items":3
                                        },
                                        "992": {
                                            "items":4
                                        },
                                        "1200": {
                                            "items":4,
                                            "nav": true,
                                            "dots": false
                                        }
                                    }
                                }'>
                                <div class="product product-7 text-center">
                                    <figure class="product-media">
                                        <span class="product-label label-new">New</span>
                                        <a href="product.html">
                                            <img src="assets/images/products/product-4.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            <a href="popup/quickView.html" class="btn-product-icon btn-quickview" title="Quick view"><span>Quick view</span></a>
                                            <a href="#" class="btn-product-icon btn-compare" title="Compare"><span>Compare</span></a>
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="addtocart.php?id=<?php echo $row['sanpham_id']?>" class="btn-product btn-cart"><span>Thêm vào giỏ hàng</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Women</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Brown paperbag waist pencil skirt</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            $60.00
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 20%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 2 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="active" style="background: #cc9966;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #7fc5ed;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #e8c97a;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product product-7 text-center">
                                    <figure class="product-media">
                                        <span class="product-label label-out">Out of Stock</span>
                                        <a href="product.html">
                                            <img src="assets/images/products/product-6.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            <a href="popup/quickView.html" class="btn-product-icon btn-quickview" title="Quick view"><span>Quick view</span></a>
                                            <a href="#" class="btn-product-icon btn-compare" title="Compare"><span>Compare</span></a>
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="addtocart.php?id=<?php echo $row['sanpham_id']?>" class="btn-product btn-cart"><span>Thêm vào giỏ hàng</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Jackets</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Khaki utility boiler jumpsuit</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="out-price">$120.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 6 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product product-7 text-center">
                                    <figure class="product-media">
                                        <span class="product-label label-top">Top</span>
                                        <a href="product.html">
                                            <img src="assets/images/products/product-11.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            <a href="popup/quickView.html" class="btn-product-icon btn-quickview" title="Quick view"><span>Quick view</span></a>
                                            <a href="#" class="btn-product-icon btn-compare" title="Compare"><span>Compare</span></a>
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="addtocart.php?id=<?php echo $row['sanpham_id']?>"class="btn-product btn-cart"><span>Thêm vào giỏ hàng</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Shoes</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Light brown studded Wide fit wedges</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            $110.00
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 1 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="active" style="background: #8b513d;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #333333;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #d2b99a;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product product-7 text-center">
                                    <figure class="product-media">
                                        <a href="product.html">
                                            <img src="assets/images/products/product-10.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            <a href="popup/quickView.html" class="btn-product-icon btn-quickview" title="Quick view"><span>Quick view</span></a>
                                            <a href="#" class="btn-product-icon btn-compare" title="Compare"><span>Compare</span></a>
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="addtocart.php?id=<?php echo $row['sanpham_id']?>" class="btn-product btn-cart"><span>Thêm vào giỏ hàng</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Jumpers</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Yellow button front tea top</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            $56.00
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 0%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 0 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->
                            </div><!-- End .owl-carousel -->
                        </div><!-- End .col-lg-9 -->

                        <aside class="col-lg-3">
                            <div class="sidebar sidebar-product">
                                <div class="widget widget-products">
                                    <h4 class="widget-title">Related Product</h4><!-- End .widget-title -->

                                    <div class="products">
                                        <div class="product product-sm">
                                            <figure class="product-media">
                                                <a href="product.html">
                                                    <img src="assets/images/products/single/sidebar/1.jpg" alt="Product image" class="product-image">
                                                </a>
                                            </figure>

                                            <div class="product-body">
                                                <h5 class="product-title"><a href="product.html">Light brown studded Wide fit wedges</a></h5><!-- End .product-title -->
                                                <div class="product-price">
                                                    <span class="new-price">$50.00</span>
                                                    <span class="old-price">$110.00</span>
                                                </div><!-- End .product-price -->
                                            </div><!-- End .product-body -->
                                        </div><!-- End .product product-sm -->

                                        <div class="product product-sm">
                                            <figure class="product-media">
                                                <a href="product.html">
                                                    <img src="assets/images/products/single/sidebar/2.jpg" alt="Product image" class="product-image">
                                                </a>
                                            </figure>

                                            <div class="product-body">
                                                <h5 class="product-title"><a href="product.html">Yellow button front tea top</a></h5><!-- End .product-title -->
                                                <div class="product-price">
                                                    $56.00
                                                </div><!-- End .product-price -->
                                            </div><!-- End .product-body -->
                                        </div><!-- End .product product-sm -->

                                        <div class="product product-sm">
                                            <figure class="product-media">
                                                <a href="product.html">
                                                    <img src="assets/images/products/single/sidebar/3.jpg" alt="Product image" class="product-image">
                                                </a>
                                            </figure>

                                            <div class="product-body">
                                                <h5 class="product-title"><a href="product.html">Beige metal hoop tote bag</a></h5><!-- End .product-title -->
                                                <div class="product-price">
                                                    $50.00
                                                </div><!-- End .product-price -->
                                            </div><!-- End .product-body -->
                                        </div><!-- End .product product-sm -->

                                        <div class="product product-sm">
                                            <figure class="product-media">
                                                <a href="product.html">
                                                    <img src="assets/images/products/single/sidebar/4.jpg" alt="Product image" class="product-image">
                                                </a>
                                            </figure>

                                            <div class="product-body">
                                                <h5 class="product-title"><a href="product.html">Black soft RI weekend travel bag</a></h5><!-- End .product-title -->
                                                <div class="product-price">
                                                    $75.00
                                                </div><!-- End .product-price -->
                                            </div><!-- End .product-body -->
                                        </div><!-- End .product product-sm -->
                                    </div><!-- End .products -->

                                    <a href="category.html" class="btn btn-outline-dark-3"><span>View More Products</span><i class="icon-long-arrow-right"></i></a>
                                </div><!-- End .widget widget-products -->

                                <div class="widget widget-banner-sidebar">
                                    <div class="banner-sidebar-title">ad box 280 x 280</div><!-- End .ad-title -->
                                    
                                    <div class="banner-sidebar banner-overlay">
                                        <a href="#">
                                            <img src="assets/images/blog/sidebar/banner.jpg" alt="banner">
                                        </a>
                                    </div><!-- End .banner-ad -->
                                </div><!-- End .widget -->
                            </div><!-- End .sidebar sidebar-product -->
                        </aside><!-- End .col-lg-3 -->
                    </div><!-- End .row -->

                </div><!-- End .container -->
            </div><!-- End .page-content -->
        </main><!-- End .main -->
        <?php 
        require("footer.php");
        ?>
                        
    <!-- Plugins JS File -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/jquery.hoverIntent.min.js"></script>
    <script src="assets/js/jquery.waypoints.min.js"></script>
    <script src="assets/js/superfish.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/bootstrap-input-spinner.js"></script>
    <script src="assets/js/jquery.elevateZoom.min.js"></script>
    <script src="assets/js/bootstrap-input-spinner.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <!-- Main JS File -->
    <script src="assets/js/main.js"></script>
</body>


<!-- molla/product-sidebar.html  22 Nov 2019 10:03:37 GMT -->
</html>