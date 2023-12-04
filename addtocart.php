<?php
$servername="localhost";
$username="root";
$password="";
$dbname="sunphone";
$conn=new mysqli($servername,$username,$password,$dbname);

session_start();
$action = (isset($_GET['action'])) ? $_GET['action'] : 'add'; 
$slg = (isset($_GET['slg'])) ? $_GET['slg'] : 1;
$_SESSION['tongtien']=$tongtien;


if($slg <= 0){
	$slg = 1;
}
if(isset($_GET['id'])){
	$id = $_GET['id'];
}
$query = mysqli_query($conn, "SELECT * FROM sanpham WHERE sanpham_id = $id");
if($query){
$product = mysqli_fetch_assoc($query);
}

$item =[
	'id'=> $product['sanpham_id'],
	'name'=>$product['ten_sp'],
	'img'=>$product['hinh_anh'],
	'gia'=>($product['khuyenmai'] > 0) ? $product['khuyenmai'] 	: $product['giaban'],
	'slg'=> $slg
];
if($action == 'add'){
	if(isset($_SESSION['cart'][$id])){
		$_SESSION['cart'][$id]['slg'] += $slg;
	}
	else{
		$_SESSION['cart'][$id] = $item;
	
	}
}	
// Tăng số lượng
/*if(isset($_SESSION['cart'][$id])){
	$_SESSION['cart'][$id]['slg'] +=1;
}
else{
	$_SESSION['cart'][$id] = $item;

}*/
// Cập nhật giỏ hàng
if($action == 'update'){
	$_SESSION['cart'][$id]['slg'] = $slg;
}

//Xóa sản phẩm khỏi giỏ hàng
if($action == 'delete'){
	unset($_SESSION['cart'][$id]);
}
header('location: cart.php')
//echo "<pre>";
//print_r($_SESSION['cart']);

// Thêm mới giỏ hàng


?>