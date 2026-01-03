#!/bin/bash

# Câu 4 Khởi động Linux (Fedora hoặc Ubuntu) trong chế độ Live và thực hiện yêu cầu:
# - Chuyển vào tài khoản root, chạy chế độ CLI (Command Line Interface).
# - Tạo ra file script để lưu và chạy các yêu cầu phía dưới. Tên của file là mã sinh viên.
# Tạo tài khoản user 123, user456 với cùng mật khẩu 123
# - Đăng nhập với tài khoản user123 và tạo một file /baitap/test.txt với nội dung bên trong chứa
# tên và mã sinh viên của mình.
# - Cấp phát quyền cho user456 đề user456 có quyền sửa và xem mà không có quyền thực thi
# User 123 kiếm tra xem thư mục baitap có những quyền gì.
# - Nén thnr mục baitap thành file baitap.gz
# Đồi tên tài khoản user456 thành 789user


useradd -m -s /bin/bash user123
useradd -m -s /bin/bash user456

echo "user123:123" | chpasswd
echo "user456:123" | chpasswd

mkdir -p /baitap
chown -R user123:user123 /baitap

su - user123 -c '
cat <<EOF > /baitap/test.txt
Noi dung file Test
Ma SV: CT080230
EOF
'

# # - Cấp phát quyền cho user456 đề user456 có quyền sửa và xem mà không có quyền thực thi
setfacl -m u:user456:rw /baitap/test.txt

ls -ld /baitap

tar -czvf baitap.tar.gz /baitap

# Đổi username
# 1. Đổi username: usermod
# 2. Đổi thư mục chủ
# 3. Đổi tên group nếu có
usermod -l 789user user456
usermod -d /home/789user -m 789user
groupmod -n 789user user456

# Check
getent passwd 789user

