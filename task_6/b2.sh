#!/bin/bash

# Câu 4 Khởi động Linux (Fedora hoặc Ubuntu) trong chế độ Live và thực hiện yêu cầu:
# Chuyển vào tài khoản root, chạy chế độ CLI (Command Line Interface).
# - Tạo ra file script để lưu và chạy các yêu cầu phía dưới. Tên của file là mã sinh viên.
# - Kiểm tra cấu hình của máy tính
# Kiem tra địa chi ip và subnetmask của máy tính
# - Đổi địa chỉ ip và subnetmask sang địa chỉ lớp khác (ví dụ: nếu đang ở lớp C thì đổi sang lớp
# B)
# - Kiểm tra MTU (Maximun Transfer Unit) và thay đổi MTU sang giá trị khác.
# - Nén một file bất kỳ trong hệ thống với tên file trùng với tên file gốc (giữ tên gốc của file cho
# file nén).

# Kiem tra cau hinh may
uname -a
lsblk
free -h
lscpu

# Kiểm tra ip và subnet mask
ip addr

# Thay doi cau hinh IP
ip addr flush dev ens33
ip addr add 172.16.10.10/16 dev ens33
ip link set dev ens33 up
ip addr show ens33

# Kiem tra MTU
ip link show dev ens33
ip link set dev ens33 mtu 1000
ip link show dev ens33


echo "Day la file test" > filetest.txt
gzip -k filetest.txt
ls -l filetest*

