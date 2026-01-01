#!/bin/bash

# Cần 3. Khởi động Linux (Fedora hoặc Ubuntu) trong chế độ Live và thực hiện yêu cầu:
# - Chuyển vào tài khoản root, chạy chế độ CLI (Command Line Interface),
# - Tạo ra file script để lưu và chạy các yêu cầu phía dưới. Tên của file là mã sinh viên.
# - Tạo người dùng userl với mật khẩu tùy ý:
# - Tạo nhóm group1; Gán người dùng userl và nhóm group1; Xem số hiệu người dùng userl
# (U_id), số hiệu nhôm group1 (G_id)
# - Xem đường dẫn của thư mục chủ user!
# Tạo tập tin file1 txt có nội dung tùy ý trong thư mục chủ user1; Xem nội dung tập tin file1.txt
# - Xem thuộc tỉnh tập tin filel.txt, giai thích ý nghĩa thuộc tỉnh

useradd -m -s /bin/bash user1
echo "user1:abc@123" | chpasswd

groupadd group1
usermod -aG group1 user1

id user1
getent group group1 | cut -d: -f3

getent passwd user1 | cut -d: -f6

touch "Noi dung file.txt" >> /home/user1/file1.txt
cat /home/user1/file1.txt

ls -l /home/user1/file1.txt