#!/bin/bash

# Câu 3. Khởi động Linux (Fedora hoặc Ubuntu) trong chế độ Live và thực hiện yêu cầu:
# - Chuyển vào tài khoản root, chạy chế độ CLI (Command Line Interface).
# - Tạo ra file script để lưu và chạy các yêu cầu phía dưới. Tên của file là mã sinh viên.
# - Tạo thư mục /KMA
# - Tạo file svktmm.txt trong thư mục /KMA (nội dung: Một ngày tốt lành) sau đó thoát khỏi trình
# soạn thảo
# - Thay đổi nội dung file svktmm.txt bằng cách bổ sung tên mình ở dòng cuối.
# - Xem lại nội dung file svktmm.txt sau khi đã thay đổi
# - Nen thu muc "KMA" thanh file "kma ... gz2"
# n thu

mkdir -p /KMA
echo "Mot ngay tot lanh" > /KMA/svktmm.txt

echo "Ten: Nguyen Quang Huy" >> /KMA/svktmm.txt

echo "Noi dung file sau khi chinh sua"
cat /KMA/svktmm.txt

# Nen file
tar -cjvf kma.tar.gz /KMA

