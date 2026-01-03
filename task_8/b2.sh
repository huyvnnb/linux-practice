#!/bin/bash

# Câu 4 Khởi động Linux (Fedora/ hoặc Ubuntu) trong chế độ Live và thực hiện yêu cầu:
# - Chuyển vào tài khoản root, chạy chế độ CLI (Command Line Interface).
# - Tạo ra file script để lưu và chạy các yêu cầu phía dưới. Tên của file là mã sinh viên.
# - Xem danh mục các tiến trình đang thực hiện
# - Dừng một tiến trình đang thực hiện bất kỳ, thay đổi độ ưu tiên của tiến trình, xóa 1 tiến trình
# - Kiểm tra tài nguyên RAM hiện tại của hệ thống linux
# - Kiểm tra tài nguyên về ổ đĩa trên linux
# - Tạo một file test.txt và kiểm tra quyền của file đó, ghi thông tin vào file và nén file đó với tên
# bất kỳ.

# Cac tien trinh dang thuc hien
ps aux

# Kill tien trinh
sleep 300 &
PID=$!
echo "PID cua tien trinh: $PID"

renice 10 -p $PID

kill -STOP $PID

kill -CONT $PID

kill -9 $PID

# Kiem tra RAM
free -h

# Kiem tra o dia
df -h

touch test.txt
ls -l test.txt

echo "Ghi noi dung cho file test.txt" > test.txt

gzip test.txt