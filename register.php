<?php
 require("header.php");
 $ketnoi = mysqli_connect("localhost","root","","sunphone");
// Dùng isset để kiểm tra Form
if(isset($_POST['dangky'])){
    $id = trim($_POST['id']);
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);
    $email = trim($_POST['email']);
    $phone = trim($_POST['phone']);
    
    
    if (empty($username)) {
    array_push($errors, "Username is required"); 
    }
    if (empty($email)) {
    array_push($errors, "Email is required"); 
    }
    if (empty($phone)) {
    array_push($errors, "Password is required"); 
    }
    if (empty($password)) {
    array_push($errors, "Two password do not match"); 
    }
    
    // Kiểm tra username hoặc email có bị trùng hay không
    $sql = "SELECT * FROM admin WHERE username = '$username' OR email = '$email'";
    
    // Thực thi câu truy vấn
    $result = mysqli_query($ketnoi, $sql);
    
    // Nếu kết quả trả về lớn hơn 1 thì nghĩa là username hoặc email đã tồn tại trong CSDL
    if (mysqli_num_rows($result) > 0)
    {
    echo '<script language="javascript">alert("Bị trùng tên hoặc chưa nhập tên!"); window.location="register.php";</script>';
    
    // Dừng chương trình

    }
    else {
    $sql = "INSERT INTO admin (id,username, password, email, phone) VALUES ('$id','$username','$password','$email','$phone')";
    echo '<script language="javascript">alert("Đăng ký thành công!"); window.location="index.php";</script>';
    
    if (mysqli_query($ketnoi, $sql)){
    echo "Tên đăng nhập: ".$_POST['username']."<br/>";
    echo "Mật khẩu: " .$_POST['password']."<br/>";
    echo "Email đăng nhập: ".$_POST['email']."<br/>";
    echo "Số điện thoại: ".$_POST['phone']."<br/>";
    }
    else {
    echo '<script language="javascript">alert("Có lỗi trong quá trình xử lý"); window.location="register.php";</script>';
    }
    }
    }
?>
<!DOCTYPE html>
<html lang="en">
<!-- molla/login.html  22 Nov 2019 10:04:03 GMT -->
<head>
        <style>
            .form 
            {
                width: 500px;
                border: 1px solid green;
                padding: 20px;
                margin: 0 auto;
                font-weight: 700px;
            }
            .form input {
                width: 100%;
                padding: 10px 0;
                color: black;
            }       
        </style>
</head>
<body>
    <div class="page-wrapper">
    <div class="page-header text-center" style="background-image: url('assets//images/banners/tett.png')">
                <div class="container">
                </div><!-- End .container -->
            </div><!-- End .page-header -->
            <nav aria-label="breadcrumb" class="breadcrumb-nav mb-2">
                <div class="container">
                    <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.php" style="font-family:roboto">Trang chủ</a></li>
                    <li class="breadcrumb-item" style="font-family:roboto">Đăng nhập / Đăng kí</li>
                    <li class="breadcrumb-item active" aria-current="page">Đăng nhập</li>
                    </ol>
                </div><!-- End .container -->
            </nav><!-- End .breadcrumb-nav -->
            </div><!-- End .page-wrapper -->
    <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
            <b> Đăng ký tài khoản</b>
            <form method="post" action="register.php" class="form">
                <div class="form-group">
                    <label for=""> Tên người dùng </label>
                        <input type="text" name="username" value="" required>
        </div>
        <div class="form-group">
            <label for="">Email</label>
                <input type="email" name="email" value="" required/>
        </div>
        <div class="form-group">
            <label for="">Số điện thoại</label>
          <input type="text" name="phone" value="" required/>
          <div class="form-group">
            <label for=""> Mật khẩu </label>
            <input type="text" name="password" value="" required/>
        </div>
        <div class="form-group">
            <label for="">Nhập lại mật khẩu </label>
            <input type="text" name="rpassword" value="" required/>
        </div>
</div>
        <input type="submit" name="dangky" value="Đăng Ký"/>
</form>
</div>
</div>
</div>
    <!--Kiểm tra các trường hợp chưa nhập-->
    <script>
function checkForm()
{
     var username = document.forms['register']["username"].value;
     var password = document.forms['register']["password"].value;
     var confirmPassword = document.forms['register']["confirmPassword"].value;
     var email = document.forms['register']["email"].value;
     
     if(username == '')
     {
        alert('Bạn phải nhập đầy đủ thông tin người dùng');
        document.forms["register"]["username"].focus();
        return false;
     }
     else if(password == '')
     {
        alert('Bạn phải nhập mật khẩu');
        document.forms["register"]["password"].focus();
        return false;
     }
     else if(email == '')
     {
        alert('Bạn phải nhập email');
        document.forms["register"]["email"].focus();
        return false;
     }
     else if(password != confirmPassword)
     {
        alert('Mật khẩu xác nhận chưa khớp !');
        return false;
     }
     else return true;  
}
</script>
    <!-- Mobile Menu -->
    <div class="mobile-menu-overlay"></div><!-- End .mobil-menu-overlay -->

    <div class="mobile-menu-container">
        <div class="mobile-menu-wrapper">
            <span class="mobile-menu-close"><i class="icon-close"></i></span>
            <div class="social-icons">
                <a href="#" class="social-icon" target="_blank" title="Facebook"><i class="icon-facebook-f"></i></a>
                <a href="#" class="social-icon" target="_blank" title="Twitter"><i class="icon-twitter"></i></a>
                <a href="#" class="social-icon" target="_blank" title="Instagram"><i class="icon-instagram"></i></a>
                <a href="#" class="social-icon" target="_blank" title="Youtube"><i class="icon-youtube"></i></a>
            </div><!-- End .social-icons -->
        </div><!-- End .mobile-menu-wrapper -->
    </div><!-- End .mobile-menu-container -->
    <?php require("footer.php");?>
</body>


<!-- molla/login.html  22 Nov 2019 10:04:03 GMT -->
</html>