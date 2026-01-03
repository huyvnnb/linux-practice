#!/bin/bash

# Câu 3. Khởi động Linux (Fedora hoặc Ubuntu) trong chế độ Live và thực hiện yêu cầu:
# - Chuyển vào tài khoản root, chạy chế độ CLI (Command Line Interface).
# - Tạo ra file script để lưu và chạy các yêu cầu phía dưới. Tên của file là mã sinh viên.
# - Tạo người dùng U1, mật khẩu abc@123
# - Tạo file F1.txt trong thư mục chủ U1 (nội dung tùy ý); Xem sự tồn tại của F1.txt
# - Tạo file fl.txt trong thư mục chủ U1 (nội dung tùy ý); Xem sự tồn tại của f1.txt
# - Xem thuộc tính của tập tin F1.txt và f1.txt; Giải thích sự tồn tại hai tập tin trên trong cùng thư
# mục chủ U1

useradd -m -s /bin/bash U1

U1_PATH="/home/U1"

echo "U1:abc@123" | chpasswd

echo "Noi dung file F1.txtx" > "$U1_PATH/F1.txt"
if [ -f "$U1_PATH/F1.txt" ]; then
    echo "Ton tai file F1.txt"
else
    echo "Khong ton tai F1.txt"
fi

echo "Noi dung file f1.txt" > "$U1_PATH/f1.txt"
if [ -f "$U1_PATH/f1.txt" ]; then
    echo "Ton tai file f1.txt"
else
    echo "Khong ton tai f1.txt"
fi 

ls -l "$U1_PATH/F1.txt"
ls -l "$U1_PATH/f1.txt"

# Giai thich:
# Linux phan biet chu hoa va chu thuong
# F1.txt va f1.txt la hai tap tin khac nhau