#!/bin/bash

# Câu 4 Khởi động Linux (Fedora hoặc Ubuntu) trong chế độ Live và thực hiện yêu cầu:
# Chuyển vào tài khoản root, chạy chế độ CLI (Command Line Interface).
# Tạo ra file script để lưu và chạy các yêu cầu phía dưới. Tên của file là mã sinh viên_bai4.
# - Kiểm tra cấu hình của máy tính.
# - Định dạng ổ đĩa với định đạng ext2
# Tạo thư mục/THI/THUCHANH; gắn ổ đĩa với thư mục /THI/THUCHANH
# Sao chép (copy) một một file bất kỷ trong thư mục gốc vào thư mục /THI/THUCHANH
# Hủy bò gắn kết giữa thư mục THI/THUCHANH với ố đĩa trên.
# Gắn kết lại ổ đĩa với thư mục /THI/THUCHANH nhưng không cho phép ghi và xóa (Không cho phép
# thay đổi thông tin ổ đĩa gốc được gắn kết).


echo "Kiem tra cau hinh may"
uname -a && free -h && df -h

mkfs.ext2 /dev/sda1

mkdir -p /THI/THUCHANH
mount /dev/sda1 /THI/THUCHANH

cp /etc/hosts /THI/THUCHANH/file

umount /THI/THUCHANH

# Gan lai o dia read-only
# mount -r /dev/sda1 /THI/THUCHANH