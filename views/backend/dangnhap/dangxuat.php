<?php
    session_start();
    $_SESSION['Stendangnhap']=="";
    session_unset();
    echo '<script>alert("Bạn đã đăng xuất thành công...")</script>';
    $_SESSION['action1']="Vui lòng đăng nhập lại";
?>
<script language="javascript">
	document.location="index.php";
</script>
