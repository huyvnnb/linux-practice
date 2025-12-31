#!/bin/bash

# Câu 4 Khởi động Linux (Fedora/ hoặc Ubuntu) trong chế độ Live và thực hiện yêu cầu:
# - Chuyển vào tài khoản root, chạy chế độ CLI (Command Line Interface).
# - Tạo ra file script để lưu và chạy các yêu cầu phía dưới. Tên của file là mã sinh viên.
# - Tạo cây thư mục \KMA\Baitap; Trong \KMA\Baitap tạo file vanban2.txt có nội dung tùy ý
# - Xem thuộc tính của tập tin vanban2.txt.
# - Gán lại quyền với số hiệu 744. Xem lại quyền đã thay đổi
# - Tạo người dùng U25, mật khẩu tùy ý; Để U25 có thể sửa được file vanban.txt cần thực hiện
# như thế nào?
# - Đăng nhập với U25; đổi tên "vanban2.txt” thành "soanthao.txt"
# - Kiểm tra địa chỉ mạng, địa chỉ quảng bá của máy.

mkdir -p /KMA/Baitap

echo "Noi dung vanban2.txt" >> /KMA/Baitap/vanban2.txt

ls -ld /KMA/Baitap/vanban2.txt

chmod 744 /KMA/Baitap/vanban2.txt
ls -ld /KMA/Baitap/vanban2.txt

useradd -m -s /bin/bash U25
echo "U25:matkhau" | chpasswd

chown U25 /KMA/Baitap/vanban2.txt

su - U25 -c "mv /KMA/Baitap/vanban2.txt /KMA/Baitap/soanthao.txt"
if [ -f /KMA/Baitap/soanthao.txt ]; then
    echo "Da doi ten vanban2 -> soanthao"
else
    echo "Doi ten khong thanh cong"
fi

# Xem dia chi mang va dia chi quang ba cua may
ip addr show ens33