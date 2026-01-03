#!/bin/bash


# Câu 3. Khởi động Linux (Fedora hoặc Ubuntu) trong chế độ Live và thực hiện yêu cầu:
# Chuyền vào tài khoản root, chạy chế độ CLI (Command Line Interface).
# - Tạo ra file script để lưu và chạy các yêu cầu phía dưới. Tên của file là mã sinh viên.
# - Tạo người dùng user1 với mật khẩu tùy ý;
# - Tạo nhóm group1; Gán người dùng user1 và nhóm group1; Xem số hiệu người dùng user1
# (U_id), số hiệu nhóm group1 (G_id)
# - Xem đường dẫn của thư mục chủ user1
# - Tạo tập tin file1.txt có nội dung tùy ý trong thư mục chủ user1; Xem nội dung tập tin file1.txt
# - Xem thuộc tính tập tin file1.txt, giải thích ý nghĩa thuộc tính

useradd -m -s /bin/bash user1
echo "user1:password" | chpasswd

groupadd group1

usermod -aG group1 user1

echo "User id"
getent passwd user1 | cut -d ':' -f3

echo "Group id"
getent group group1 | cut -d ':' -f3

echo "Home directory"
getent passwd user1 | cut -d ':' -f7

echo "Noi dung file1.txt" > /home/user1/file1.txt
cat /home/user1/file1.txt

ls -l /home/user1/file1.txt