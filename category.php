<!DOCTYPE html>
<html lang="en">


<!-- molla/category.html  22 Nov 2019 10:02:48 GMT -->
<?php require("header.php");
$ketnoi = mysqli_connect("localhost","root","","sunphone");
/*mysqli_set_charset($ketnoi, 'UTF8');*/

// Bước 2: Lấy dữ liệu từ trên đường đẫn
$id=$_GET["id"];

//Bước 3: Hiển thị các dữ liệu trong bảng tbl_sanpham ra đây
$sql = "SELECT * FROM sanpham a join danhmuc b on a.danhmuc_id=b.danhmuc_id
   WHERE a.danhmuc_id = ".$id  ;


$dulieu = mysqli_query($ketnoi, $sql);
//  $product = mysqli_fetch_assoc($dulieu);
$row = mysqli_fetch_array($dulieu);
?>
<body>
    <div class="page-wrapper">
        <main class="main">
        <div class="page-header text-center" style="background-image: url('assets//images/banners/tett.png')">
                <div class="container">
                    <h1 class="page-title"><?php echo $row['tendanhmuc'];?></h1>
                </div><!-- End .container -->
            </div><!-- End .page-header -->
            <nav aria-label="breadcrumb" class="breadcrumb-nav mb-2">
                <div class="container">
                    <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.php" style="font-family:roboto">Trang chủ</a></li>
                    <li class="breadcrumb-item" style="font-family:roboto">Chi tiết sản phẩm</li>
                    <li class="breadcrumb-item" style="font-family:roboto"><?php echo $row['tendanhmuc']?></li>
                    </ol>
                </div><!-- End .container -->
            </nav><!-- End .breadcrumb-nav -->

                <div class="page-content">
                    <div class="container">
                			<div class="toolbox">
                				<div class="toolbox-left">
                					<div class="toolbox-info">
                						Hiển thị <span style="bold" ></span> Sản phẩm
                					</div><!-- End .toolbox-info -->
                				</div><!-- End .toolbox-left -->
                                
                				<div class="toolbox-right">
                					<div class="toolbox-sort">
                						<label for="sortby">Sắp xếp theo:</label>
                                        <!--sắp xếp lọc theo cái-->
                						<div class="select-custom">
											<select name="sortby" id="sortby" class="form-control">
												<option value="{{Request: :url()}}?sort_by=none" >--Lọc--</option>
												<option value="{{Request: :url()}}?sort_by=tang_dan" >Giá tăng dần</option>
                                                <option value="{{Request: :url()}}?sort_by=giam_dan" >Giá giảm dần</option>
                                                <option value="{{Request: :url()}}?sort_by=none" >--Lọc--</option>

											</select>
										</div>
                					</div><!-- End .toolbox-sort -->
                					<div class="toolbox-layout">
                						<a href="category-list.html" class="btn-layout">
                							<svg width="16" height="10">
                								<rect x="0" y="0" width="4" height="4" />
                								<rect x="6" y="0" width="10" height="4" />
                								<rect x="0" y="6" width="4" height="4" />
                                                <rect x="6" y="6" width="10" height="4" />
                							</svg>
                						</a>

                						<a href="category-2cols.html" class="btn-layout">
                							<svg width="10" height="10">
                								<rect x="0" y="0" width="4" height="4" />
                								<rect x="6" y="0" width="4" height="4" />
                								<rect x="0" y="6" width="4" height="4" />
                								<rect x="6" y="6" width="4" height="4" />
                							</svg>
                						</a>

                						<a href="category.html" class="btn-layout active">
                							<svg width="16" height="10">
                								<rect x="0" y="0" width="4" height="4" />
                								<rect x="6" y="0" width="4" height="4" />
                								<rect x="12" y="0" width="4" height="4" />
                								<rect x="0" y="6" width="4" height="4" />
                								<rect x="6" y="6" width="4" height="4" />
                								<rect x="12" y="6" width="4" height="4" />
                							</svg>
                						</a>

                						<a href="category-4cols.html" class="btn-layout">
                							<svg width="22" height="10">
                								<rect x="0" y="0" width="4" height="4" />
                								<rect x="6" y="0" width="4" height="4" />
                								<rect x="12" y="0" width="4" height="4" />
                								<rect x="18" y="0" width="4" height="4" />
                								<rect x="0" y="6" width="4" height="4" />
                								<rect x="6" y="6" width="4" height="4" />
                								<rect x="12" y="6" width="4" height="4" />
                								<rect x="18" y="6" width="4" height="4" />
                							</svg>
                						</a>
                					</div><!-- End .toolbox-layout -->
                				</div><!-- End .toolbox-right -->
                			</div><!-- End .toolbox -->                           
                            <div class="products mb-3">
                                
                                <div class="row justify-content-center">

                                <div class="container">
                                <hr class="mt-3 mb-6">
                            </div><!-- End .container -->
                            <div class="container trending">
                                <div class="heading heading-flex mb-3">
                                    <div class="heading-left">
                                    </div><!-- End .heading-left -->                  
                                </div><!-- End .heading -->
                                </div>
                                <div id="1" class="row product__filter">
                            <?php                                     
                            $sql = "SELECT * FROM sanpham a join danhmuc b on a.danhmuc_id=b.danhmuc_id
                            WHERE a.danhmuc_id = ".$id  ;
                            $dulieu = mysqli_query($ketnoi, $sql);
                        
                            while ($row = mysqli_fetch_array($dulieu)) 
                            {
                            ;?>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix best-sellers ">
                        <div class="product product-2">
                        <figure class="product-media">
                            <a href="product.php?id=<?php echo $row["sanpham_id"];?>">
                            <img src="assets/<?php echo $row["hinh_anh"];?>" >        
                                </a>
                                <div class="product-action-vertical">
                                    <a style="font-family:roboto" href="wishlist.php" class="btn-product-icon btn-wishlist btn-expandable"><span>Thêm mục yêu thích</span></a>
                                </div><!-- End .product-action -->


                                <div class="product-action product-action-dark">
                                    <a style="font-family:roboto"  href="addtocart.php?id=<?php echo $row['sanpham_id']?>" class="btn-product btn-cart" title="Add to cart"><span>Thêm vào giỏ</span></a>
                                    <a style="font-family:roboto" href="popup/quickView.php?id=<?php echo $row["sanpham_id"];?> && danhmuc_id=<?php echo $row["danhmuc_id"];?>" class="btn-product btn-quickview" title="Quick view"><span>Xem nhanh</span></a>
                                </div><!-- End .product-action -->
                            </figure><!-- End .product-media -->
            
                        <div class="product-body">
                                <div class="product-cat" style="font-family:roboto" >
                                    <a style="font-family:roboto" href="#"><?php echo $row["tendanhmuc"];?></a>
                                </div><!-- End .product-cat -->
                                <h3 class="product-title"><a style="font-family:roboto"  href="product.php?id=<?php echo $row["sanpham_id"];?>"><?php echo $row["ten_sp"];?></a></h3><!-- End .product-title -->
                                <br>
                                <div style="font-family:roboto" class="product-price">
                                <?php if (number_format($row["khuyenmai"])>0) echo number_format($row["khuyenmai"]).'₫'; else echo number_format($row["giaban"]).'₫';?> 
                                    <del class="mx-2 font-weight-light" style="color:gray"> <?php if (number_format($row["khuyenmai"])>0) echo   number_format($row["giaban"]).'₫'?></del>
                                </div><!-- End .product-price -->
                                <div class="ratings-container">
                                    <div class="ratings">
                                        <div class="ratings-val" style="width:<?php echo $row["rate"];?> ;"></div><!-- End .ratings-val -->
                                    </div><!-- End .ratings -->
                                    
                                </div><!-- End .rating-container -->
                            </div><!-- End .product-body -->
                            </div>
                            </div>
                            <?php 
                        }; ?>
                        </div>

                    </div><!-- End .col-xl-4-5col -->
                </div><!-- End .row -->
            </div><!-- End .container -->

                           <!--Phân luồng các trang-->         
                			<nav aria-label="Page navigation">
							    <ul class="pagination justify-content-center">
							        <li class="page-item disabled">
                                    <a class="page-link page-link-prev" href="#" aria-label="Previous" tabindex="-1" aria-disabled="true">
							                <span aria-hidden="true"><i class="icon-long-arrow-left"></i></span>Prev
							            </a>
							        </li>
							        <li class="page-item active" aria-current="page"><a class="page-link" href="#">1</a></li>
							        <li class="page-item"><a class="page-link" href="#">2</a></li>
							        <li class="page-item"><a class="page-link" href="#">3</a></li>
							        <li class="page-item-total">of 6</li>
							        <li class="page-item">
							            <a class="page-link page-link-next" href="#" aria-label="Next">
							                Next <span aria-hidden="true"><i class="icon-long-arrow-right"></i></span>
							            </a>
							        </li>
							    </ul>
							</nav>
                		</div><!-- End .col-lg-9 -->
                	</div><!-- End .row -->
                </div><!-- End .container -->
            </div><!-- End .page-content -->
        </main><!-- End .main -->


    <!-- Plugins JS File -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/jquery.hoverIntent.min.js"></script>
    <script src="assets/js/jquery.waypoints.min.js"></script>
    <script src="assets/js/superfish.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/wNumb.js"></script>
    <script src="assets/js/bootstrap-input-spinner.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/nouislider.min.js"></script>
    <!-- Main JS File -->
    <script src="assets/js/main.js"></script>
</body>

<?php 
require("footer.php");
?>
<!-- molla/category.html  22 Nov 2019 10:02:52 GMT -->
</html>
