#!/bin/bash

# Câu 4 Khởi động Linux (Fedora hoặc Ubuntu) trong chế độ Live và thực hiện yêu cầu:
# - Chuyển vào tài khoản root, chạy chế độ CLI (Command Line Interface).
# - Tạo ra file script để lưu và chạy các yêu cầu phía dưới. Tên của file là mã sinh viên_bai4.
# - Dùng lệnh định dạng ổ đĩa với định dạng ext4
# - Tạo thư mục/THI1_HK và /THI2_HK; gắn ổ đĩa với thư mục /THI1_HK.
# - Sao lưu một file bất kỳ từ ổ đĩa vào /THI2_HK bằng câu lệnh rsync
# - Copy file bất kỳ (trên ổ đĩa gốc) vào thư mục /THI21
# - Hủy bỏ gắn kết giữa THI1_HK với ổ đĩa trên
# - Kiểm tra sự tồn tại file vừa copy vào thư mục /THI1_HK; giải thích cơ chế ánh xạ ổ đĩa mount/
# umount

# sudo -i
# nano b2.sh

# Gia su trong lsblk co /dev/sda
# Ta tao phan vung bangf fdisk, thao tac
# 1. fdisk /dev/sda
# 2. n (for new)
# 3. p (for primary)
# 4. 1 -> 4 (cai nao cung duoc, gia su chon 1)
# 5. Enter
# 6. +100M (tao 100M)
# 7. w (de luu thay doi)

mkfs.ext4 /dev/sda1

mkdir -p /THI1_HK
mkdir -p /THI2_HK

mount /dev/sda1 /THI1_HK/

touch /THI1_HK/file

rsync -av /THI1_HK/file /THI2_HK/

cp /etc/hosts /THI1_HK/file_cp

umount /THI1_HK

if [ -f /THI1_HK/file_cp ]; then
    echo "File copy ton tai trong /THI1_HK"
else
    echo "File copy khong ton tai trong /THI1_HK"
fi