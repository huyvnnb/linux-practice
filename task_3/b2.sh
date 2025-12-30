#!/bin/bash

# Câu 4 Khởi động Linux (Fedora hoặc Ubuntu) trong chế độ Live và thực hiện yêu cầu:
# - Chuyển vào tài khoản root, chạy chế độ CLI (Command Line Interface).
# - Tạo ra file script để lưu và chạy các yêu cầu phía dưới. Tên của file là mã sinh viên_bai4.
# - Đặt IP tĩnh trên máy chú Linux (dùng lệnh hoặc network tool) 192.168.0.100/255.255.255.0
# - Kiếm tra địa chỉ mạng trên máy cục bộ (IP of Localhost)
# - Kiếm tra thông mạng tới máy vật lý (hoặc máy khác trong mạng LAN)
# - Thay đổi thành địa chỉ IP mới: 192.168.1.200/ 255.255.255.252
# - Kiếm tra lại IP sau khi đã thay đổi
# - Để tài một file từ trang download.net/file1 thì user dùng lệnh nào (gõ trong file script có thể
# để dạng comment nều máy không có mạng)

# ifconfig eth0 192.168.1.10 netmask 255.255.255.0
# ip addr add 192.168.1.10/24 dev eth0

ip addr flush dev ens33
ip addr add 192.168.0.100/24 dev ens33
ip link set ens33 up

ip addr show ens33
#ifconfig

ping -c 5 127.0.0.1

ip addr flush dev ens33
ip addr add 192.168.1.200/30 dev ens33

ip addr show ens33

# wget https://download.net/file1
# curl -O https://download.net/file1