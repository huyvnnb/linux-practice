#!/bin/bash

# Câu 3. Khởi động Linux (Fedora hoặc Ubuntu) trong chế độ Live và thực hiện yêu cầu:
# - Chuyển vào tài khoản root, chạy chế độ CLI (Command Line Interface).
# - Tạo ra file script để lưu và chạy các yêu cầu phía đưới. Tên của file là mã sinh viên_bai3.
# - Xem danh sách ổ đĩa có trên Linux.
# - Tạo thư mục /KMA/Security và /THI
# - Thực hiện ánh xạ (#mount) ổ đĩa cdrom (iso) vào thư mục /KMA/Security
# - Copy 1 file bất kỳ trong /KMA/Security tới ổ đĩa gốc "/THI"

echo "Danh sach o dia co tren Linux"
lsblk
# fdisk -l

mkdir -p /KMA/Security 
mkdir -p /THI

mount /dev/cdrom /KMA/Security

cp /KMA/Security/upgrade.sh /THI/file

if [ -f /THI/file ]; then
    echo "File da duoc copy"
else
    echo "File khong duoc copy"
fi
