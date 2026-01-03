#!/bin/bash

# Câu 4 Khởi động Linux (Fedora hoặc Ubuntu) trong chế độ Live và thực hiện yêu cầu:
# Chuyền vào tài khoản root, chạy chế độ CLI (Command Line Interface).
# Tạo ra file script để lưu và chạy các yêu cầu phía dưới. Tên của file là mã sinh viên.
# - Tạo tài khoản User 123 , mật khẩu 2711; tạo nhóm G123
# - Tạo file /KMA/test2.txt (nội dung tùy ý)
# - Xem lại thuộc tính của file test2.txt
# - Mặc định người chủ file là root, hãy gán quyền cho User123 và G123 với file test2.txt (cho
# phép đọc và thực thi file này)
# User 123 nén file test.txt thành file "filenen.gz"
# Hiển thị các tiến trình đang hoạt động


useradd -m -s /bin/bash User123
echo "User123:2711" | chpasswd

groupadd G123
usermod -aG G123 User123

mkdir -p /KMA
echo "Noi dung file" > /KMA/test2.txt
ls -l /KMA/test2.txt

chown root:G123 /KMA
chmod 550 /KMA/test2.txt

# nen
su - User123 -c "gzip -c /KMA/test2.txt > /KMA/filenen.gz"

# Hien thi tien trinh
ps aux

