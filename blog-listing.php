<!DOCTYPE html>
<html lang="en">
<?php require("header.php");
$ketnoi = mysqli_connect("localhost","root","","sunphone");
/*mysqli_set_charset($ketnoi, 'UTF8');*/
//Bước 2: Hiển thị các dữ liệu trong bảng blog ra đây
$sql = "SELECT * FROM blog"  ;
$dulieu = mysqli_query($ketnoi, $sql);
//  $product = mysqli_fetch_assoc($dulieu);
$row = mysqli_fetch_array($dulieu);
?>

<body>
    <div class="page-wrapper">
        <main class="main">
        	<div class="page-header text-center" style="background-image: url('assets//images/banners/blog_nen.jpg')">
        		<div class="container">
        			<h1 class="page-title">Tin tức<span>Blog</span></h1>
        		</div><!-- End .container -->
        	</div><!-- End .page-header -->
            <nav aria-label="breadcrumb" class="breadcrumb-nav mb-3">
                <div class="container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php">Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="blog-listing.php">Tin tức</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Tin nóng</li>
                    </ol>
                </div><!-- End .container -->
            </nav><!-- End .breadcrumb-nav -->

            <div class="page-content">
                <div class="container">
                	<div class="row">
                		<div class="col-lg-9">
                            <article class="entry entry-list">
                                <div class="row align-items-center">
                                </div><!-- End .row -->
                            </article><!-- End .entry -->
                            <?php
                                $sql_tin="SELECT * FROM blog ";
                                $result=$conn->query($sql_tin);
                                if($result ->num_rows >0)
                                    {
                                        $i=1;
                                         while($row_tin=$result->fetch_assoc())
                                         {
                                          ?>
                                          <article class="entry entry-list">
                                <div class="row align-items-center">
                                    <div class="col-md-5">
                                        <figure >
                                            <a href="#">
                                                <img src="assets/<?php echo $row_tin['bog_image']?>">
                                            </a>
                                        </figure><!-- End .entry-media -->
                                    </div><!-- End .col-md-5 -->

                                    <div class="col-md-7">
                                        <div class="entry-body">
                                            <h2 class="entry-title">
                                                <a href="" style="font-family:roboto"><?php echo $row_tin['blog_name']?></a>
                                            </h2><!-- End .entry-title -->

                                            <div class="entry-content">
                                                <ul>
                                                    <li style="font-family:roboto"><?php echo $row_tin['blog_noidung']?></li>
                                                </ul>                                             
                                                <a href="#" class="read-more">Continue Reading</a>
                                            </div><!-- End .entry-content -->
                                        </div><!-- End .entry-body -->
                                    </div><!-- End .col-md-7 -->
                                </div><!-- End .row -->
                            </article><!-- End .entry -->                                          
                                        <?php
                                             $i++;
                                        }
                                    }
                            ?>

                            <article class="entry entry-list">
                                <div class="row align-items-center">
                                    <div class="col-md-5">
                                        <figure class="entry-media">
                                            <div class="owl-carousel owl-simple owl-light owl-nav-inside" data-toggle="owl">
                                                <a href="single.html">
                                                    <img src="assets/images/blog/listing/post-3.jpg" alt="image desc">
                                                </a>
                                                <a href="single.html">
                                                    <img src="assets/images/blog/listing/post-1.jpg" alt="image desc">
                                                </a>
                                            </div><!-- End .owl-carousel -->
                                        </figure><!-- End .entry-media -->
                                    </div><!-- End .col-md-5 -->
                                </div><!-- End .row -->
                            </article><!-- End .entry -->
                			<nav aria-label="Page navigation">
							    <ul class="pagination">
							        <li class="page-item disabled">
							            <a class="page-link page-link-prev" href="#" aria-label="Previous" tabindex="-1" aria-disabled="true">
							                <span aria-hidden="true"><i class="icon-long-arrow-left"></i></span>Prev
							            </a>
							        </li>
							        <li class="page-item active" aria-current="page"><a class="page-link" href="#">1</a></li>
							        <li class="page-item"><a class="page-link" href="#">2</a></li>
							        <li class="page-item">
							            <a class="page-link page-link-next" href="#" aria-label="Next">
							                Next <span aria-hidden="true"><i class="icon-long-arrow-right"></i></span>
							            </a>
							        </li>
							    </ul>
							</nav>
                		</div><!-- End .col-lg-9 -->

                		<aside class="col-lg-3">
                			<div class="sidebar">
                				<div class="widget widget-search">
                                    <h3 class="widget-title">Tìm kiếm</h3><!-- End .widget-title -->

                                    <form action="#">
                                        <label for="ws" class="sr-only">Tìm kiếm</label>
                                        <input type="search" class="form-control" name="ws" id="ws" placeholder="Tìm kiếm" required>
                                        <button type="submit" class="btn"><i class="icon-search"></i><span class="sr-only">Tìm</span></button>
                                    </form>
                				</div><!-- End .widget -->

                                <div class="widget widget-cats">
                                    <h3 class="widget-title" style="color:blue">Danh mục</h3><!-- End .widget-title -->

                                    <ul>
                                        <li><a href="#">Công nghệ mới<span>3</span></a></li> 
                                        <li><a href="#">Cải tiến<span>3</span></a></li>
                                        <li><a href="#">Phụ kiện đi kèm<span>1</span></a></li>
                                        <li><a href="#">Edition<span>3</span></a></li>
                                        <li><a href="#">Trải nghiệm<span>2</span></a></li>
                                    </ul>
                                </div><!-- End .widget -->

                                <div class="widget">
                                    <h3 class="widget-title" style="color:blue">Bài viết được yêu thích nhất</h3><!-- End .widget-title -->

                                    <ul class="posts-list">
                                        <li>
                                            <figure>
                                                <a href="#">
                                                    <img src="assets/images/blog/1.png" alt="post">
                                                </a>
                                            </figure>

                                            <div>
                                                <span>Jan 5, 2023</span>
                                                <h4><a href="#">Mới ra mắt</a></h4>
                                            </div>
                                        </li>
                                        <li>
                                            <figure>
                                                <a href="#">
                                                    <img src="assets/images/blog/2.png" alt="post">
                                                </a>
                                            </figure>

                                            <div>
                                                <span>Jan 9, 2023</span>
                                                <h4><a href="#">Giá rẻ bất ngờ.</a></h4>
                                            </div>
                                        </li>
                                    </ul><!-- End .posts-list -->
                                </div><!-- End .widget -->

                                <div class="widget widget-banner-sidebar">
                                    <div class="banner-sidebar-title" style="color:blue">SAM SUNG GALAXY S23 ULTRA</div><!-- End .ad-title -->
                                    
                                    <div class="banner-sidebar banner-overlay">
                                        <a href="#">
                                            <img src="assets/images/blog/2.png" alt="banner">
                                        </a>
                                    </div><!-- End .banner-ad -->
                                </div><!-- End .widget -->

                                <div class="widget">
                                    <h3 class="widget-title" style="color:blue">Tags</h3><!-- End .widget-title -->

                                    <div class="tagcloud">
                                        <a href="#">Pin</a>
                                        <a href="#">Màn hình</a>
                                        <a href="#">Vỏ kim loại</a>
                                        <a href="#">ICD</a>
                                        <a href="#">Kháng nước</a>
                                        <a href="#">Giá rẻ</a>
                                        <a href="#">Sành điệu</a>
                                    </div><!-- End .tagcloud -->
                                </div><!-- End .widget -->

                                <div class="widget widget-text">
                                    <h3 class="widget-title" style="color:blue">Bản tin công nghệ</h3><!-- End .widget-title -->

                                    <div class="widget-text-content">
                                        <b>Màn hình OLED <br> Màn hình cong <br> Màn hình gập<br> Vân tay siêu âm<br>Pin vô cực<br></b>
                                    </div><!-- End .widget-text-content -->
                                </div><!-- End .widget -->
                			</div><!-- End .sidebar -->
                		</aside><!-- End .col-lg-3 -->
                	</div><!-- End .row -->
                </div><!-- End .container -->
            </div><!-- End .page-content -->
        </main><!-- End .main -->
    </div><!-- End .page-wrapper -->
    <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>

    <!-- Mobile Menu -->
    <div class="mobile-menu-overlay"></div><!-- End .mobil-menu-overlay -->

    <!-- Plugins JS File -->
<?php require("footer.php");?>
</body>


<!-- molla/blog-listing.html  22 Nov 2019 10:04:12 GMT -->
</html>