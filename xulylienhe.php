<?php
    $hoten = $_POST['HoTen'];
    $sodienthoai = $_POST['SoDienThoai'];
    $email = $_POST['Email'];
    $tieude = $_POST['TieuDe'];
    $noidungphanhoi = $_POST['NoiDung'];

    // Chàn dữ liệu vào bảng tbl_lien_he
    // Bước 1: Kết nối đến CSDL 

    $ketnoi = mysqli_connect("localhost","root","","sunphone");
  
    // Bước 2: Chèn dữ liệu vào bảng Liên hệ
    $sql = "
    INSERT INTO `lienhe` (
        `ten_lien_he`, 
        `so_dien_thoai`, 
        `email`, 
        `tieu_de`, 
        `noi_dung`) 
    VALUES (
        '".$hoten."',
        '".$sodienthoai."',
        '".$email."',
        '".$tieude."',
        '".$noidungphanhoi."')";
    
    // Xem câu lệnh SQL viết có đúng hay không?
    // echo $sql;

    // Cho thực thi câu lệnh SQL trên
   // mysqli_query($ketnoi, $sql);
    if($ketnoi->query($sql)===TRUE)
    {
?>
    <script type="text/javascript">
    window.alert("Gửi thành công. Chúng tôi sẽ hồi đáp bạn sớm nhất có thể!");
    window.location="index.php";
    </script>
<?php 
    }
    else
        header("location:loi.php?error=$error");
?>
