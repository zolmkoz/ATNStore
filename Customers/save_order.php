
<?php
include("db_conection.php");
if (isset($_POST['order_save'])) {
    $user_id = $_POST['user_id'];
    $order_name = $_POST['order_name'];
    $order_price = $_POST['order_price'];
    $order_quantity = $_POST['order_quantity'];
    $order_total = $order_price * $order_quantity;
    $order_status = 'Pending';
    $save_order_details = "INSERT INTO orderdetails (user_id,order_name,order_price,order_quantity,order_total,order_status,order_date) 
    VALUE ('$user_id','$order_name','$order_price','$order_quantity','$order_total','$order_status',CURDATE())";

    mysqli_query($DB_con, $save_order_details);
    echo "<script>alert('Item successfully added to cart!')</script>";
    echo "<script>window.open('shop.php?id=1','_self')</script>";
}

?>
