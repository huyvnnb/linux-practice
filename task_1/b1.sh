#!/bin/bash

# Câu 3. Khởi động Linux (Fedora hoặc Ubuntu) trong chế độ Live và thực hiện yêu cầu:
# - Chuyển vào tài khoản root, chạy chế độ CLI (Command Line Interface).
# - Tạo ra file script để lưu và chạy các yêu cầu phía dưới. Tên của file là mã sinh viên_bai3.
# - Tạo người dùng U1 và U2 có cùng mật khẩu là sv123456
# - Xem thông tin về người dùng U1, U2. Xem đường dẫn hiện tại với U1
# - Tạo thư mục KMA_U1 trong thư mục U1
# - Di chuyển thư mục KMA_U1 sang thư mục chủ U2. Kiểm tra xem thư mục KMA_U1 đã sang
# U2 hay chưa.

# sudo -i
# nano b1.sh

useradd -m -s /bin/bash U1
useradd -m -s /bin/bash U2

echo "U1:sv123456" | chpasswd
echo "U2:sv123456" | chpasswd

getent passwd U1 U2

su - U1 -c "pwd"

mkdir -p /home/U1/KMA_U1
mv /home/U1/KMA_U1 /home/U2

if [ -d /home/U2/KMA_U1 ]; then
    echo "Da di chuyen thu muc KMA_U1 sang /home/U2"
else
    echo "Thu muc KMA_U1 khong ton tai trong /home/U2"
fi
