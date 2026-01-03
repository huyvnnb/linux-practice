#!/bin/bash

# Câu 3. Khởi động Linux (Fedora hoặc Ubuntu) trong chế độ Live và thực hiện yêu cầu:
# - Chuyển vào tài khoản root, chạy chế độ CLI (Command Line Interface).
# - Tạo ra file script để lưu và chạy các yêu cầu phía dưới. Tên của file là mã sinh viên.
# - Xem danh sách ổ đĩa có trên Linux.
# - Tạo thư mục KMA/data
# - Thực hiện ánh xạ (#mount) ổ đĩa cdrom(iso) vào thư mục /KMA/data
# - Sao chép 1 file bất kỳ trong /KMA/data tới ổ đĩa gốc "/". Kiểm tra trong thư mục gốc đã có
# file vừa sao chép hay chưa?

# Xem thư mục
lsblk

mkdir -p /KMA/data
# echo "Noi dung file trong thu muc /KMA/data" > /KMA/data/file.txt

mount /dev/cdrom /KMA/data

cp /KMA/data/upgrade.sh /

if [ -f /upgrade.sh ]; then
    echo "File ton tai trong root"
else
    echo "File khong ton tai trong root"
fi