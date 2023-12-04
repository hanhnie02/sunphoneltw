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

<div class="container quickView-container">
	<div class="quickView-content">
		<div class="row">
			<div class="col-lg-7 col-md-6">
				<div class="row">
					<div class="product-left">
						<a href="#one" class="carousel-dot active">
                        <img src="assets/<?php echo $row["hinh_anh"];?>" >  
						
					</div>
					<div class="product-right">
						<div class="owl-carousel owl-theme owl-nav-inside owl-light mb-0" data-toggle="owl" data-owl-options='{
	                        "dots": false,
	                        "nav": false, 
	                        "URLhashListener": true,
	                        "responsive": {
	                            "900": {
	                                "nav": true,
	                                "dots": true
	                            }
	                        }
	                    }'>
							<div class="intro-slide" data-hash="one">
                            <img src="assets/<?php echo $row["hinh_anh"];?>" >	                   
                               
		                    </div><!-- End .intro-slide -->

		                    <div class="intro-slide" data-hash="two">
		                    </div><!-- End .intro-slide -->

		                    <div class="intro-slide" data-hash="three">
	                            
		                    </div><!-- End .intro-slide -->

		                    <div class="intro-slide" data-hash="four">
	                            <img src="../../../../www.portotheme.com/html/molla/popup/assets/images/popup/quickView/4.html" alt="Image Desc">
	                            <a href="https://www.portotheme.com/html/molla/popup/popup/fullscreen.html" class="btn-fullscreen">
                                    <i class="icon-arrows"></i>
                                </a>
		                    </div><!-- End .intro-slide -->
		                </div>
					</div>
                </div>
			</div>
			<div class="col-lg-5 col-md-6">
			<span style="font-family:roboto" ><?php echo $row["ten_sp"] ?></span>
				<h3 style="font-family:roboto" class="product-price"><?php echo number_format($row["giaban"]) ?><sup>đ</sup></h3>

                <div class="ratings-container">
                    <div class="ratings">
                        <div class="ratings-val" style="width:<?php echo $row["rate"];?> ;"></div><!-- End .ratings-val -->
                    </div><!-- End .ratings -->
                </div><!-- End .rating-container -->
                <div>
                <h6 style="font-family:roboto; font-color:#fcb941" >Khuyễn mãi</h6>
                <ul style="list-style-type:disc">
                             <li><a style="font-family:roboto" class="product-txt">Lì xì ngay 360.000đ áp dụng đến 31/01</a></li>
                             <li><a style="font-family:roboto" class="product-txt"></a>Giảm thêm tới 300.000đ khi thanh toán qua VNPAY</li>
                             <li><a style="font-family:roboto" class="product-txt">Tặng hộp may mắn - số lượng có hạn</a></li>

                </ul>
                </div>
                <div class="details-filter-row product-nav product-nav-thumbs">
                <label for="size">color:</label>
                    <a><?php echo $row["color"];?></a>
                </div><!-- End .product-nav -->

                <div class="details-filter-row details-row-size">
	                <label for="size" >Size:</label>
                    <a><?php echo $row["ram"];?></a>

	            </div>    
                <div class="details-filter-row details-row-size">
                    <label for="qty">Qty:</label>
                    <div class="product-details-quantity">
                        <input type="number" id="qty" class="form-control" value="1" min="1" max="<?php echo $row["soluong"];?>" step="1" data-decimals="0" required>
                    </div><!-- End .product-details-quantity -->
                </div><!-- End .details-filter-row -->

                <div class="product-details-action">
                <a style="font-family:roboto"  href="addtocart.php?id=<?php echo $row['sanpham_id']?>" class="btn-product btn-cart" title="Add to cart"><span>Thêm vào giỏ</span></a>
                </div>

                <div class="product-details-footer">
                   

                    <div class="social-icons social-icons-sm">
                        <span style="font-family:roboto" class="social-label">Chia sẻ:</span>
                        <a href="#" class="social-icon" title="Facebook" target="_blank"><i class="icon-facebook-f"></i></a>
                        <a href="#" class="social-icon" title="Twitter" target="_blank"><i class="icon-twitter"></i></a>
                        <a href="#" class="social-icon" title="Instagram" target="_blank"><i class="icon-instagram"></i></a>
                        <a href="#" class="social-icon" title="Pinterest" target="_blank"><i class="icon-pinterest"></i></a>
                    </div>
                </div>
			</div>
		</div>
	</div>
</div>