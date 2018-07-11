<form method="post" class="form" style="padding: 25px">
	<h4 style="color: red">Danh Sách Nhân Viên</h4>
	<table class="table">
		<thead class="thead-light">
		<tr>
			<th scope="col">Mã Nhân Viên</th>
			<th scope="col">Hình ảnh</th>
			<th scope="col">Tên Đăng Nhập</th>
			<th scope="col">Họ Tên</th>
			<th scope="col">Email</th>
			<th scope="col">Số Điện Thoại</th>
			<th scope="col">Trạng Thái</th>
			<th scope="col">Sửa</th>
			<th scope="col">Xóa</th>
		</tr>
		</thead>
        <?php
            $sql = "SELECT MaNhanVien,HinhNhanVien,TenDangNhap,MatKhau,HoTen,Email,
 					SoDienThoai,BiXoa FROM nhanvien";
            $result = DataProvider::ExecuteQuery($sql);
            while($row = mysqli_fetch_array($result)){ // tìm và trả về một dòng kết quả của một truy vấn
                ?>
				<tr>
					<th scope="row"><?php echo $row["MaNhanVien"];?></th>
					<th><img src="../backend/modules/logo/<?php echo $row["HinhNhanVien"]; ?>" style="width: 80px;height: 80px"></th>
					<td><?php echo $row["TenDangNhap"]; ?></td>
					<td><?php echo $row["HoTen"]; ?></td>
					<td><?php echo $row["Email"]; ?></td>
					<td><?php echo $row["SoDienThoai"]; ?></td>
					<td style="text-align: center"><?php echo $row["BiXoa"]; ?></td>
					<td><a href="#"><img src="../../images/icon/edit.png"></a></td>
					<td><a href="#"><img src="../../images/icon/delete.png"></a></td>
				</tr>
                <?php
            }
        ?>
	</table>
</form>
