#!/bin/bash

# Câu 3. Khởi động Linux (Fedora hoặc Ubuntu) trong chế độ Live và thực hiện yêu cầu:
# Chuyển vào tài khoản root, chạy chế độ CLI (Command Line Interface).
# Tạo ra file script để lưu và chạy các yêu cầu phía dưới. Tên của file là mã sinh viên_bai3.
# Tạo người dùng U3, U4 và thiết lập mật khẩu tương ứng là u3_123 và u4_456.
# Gán người dùng U3, U4 vào nhóm root
# - Tạo thư mục KMA2; trong thư mục gốc “/"
# Sao chép thư mục KMA2 và thư mục chủ U3
# Đăng nhập với tài khoản U3; Xóa thư mục /KMA2; Kiểm tra sự tồn tại /KMA2 sau khi xóa
# (nếu không thể xóa hãy giải thích?)

useradd -m -s /bin/bash U3
useradd -m -s /bin/bash U4

echo "U3:u3_123" | chpasswd
echo "U4:u4_456" | chpasswd

usermod -aG root U3
usermod -aG root U4

mkdir -p /KMA2
cp -r /KMA2 /home/U3

su - U3 -c "rmdir /KMA2"

if [ -d /KMA2 ]; then
    echo "Thu muc /KMA2 ton tai"
else
    echo "Thu muc /KMA2 khong ton tai (da bi xoa)"
fi


# # Ly do khong xoa duoc
# Quyền xóa không phụ thuộc vào quyền của chính thư mục /KMA2

# Quyền xóa phụ thuộc vào quyền ghi (w) trên thư mục cha /