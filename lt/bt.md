# Bài tập Linux – Các lệnh và thư mục

---

## Câu 1
**Các lệnh:**  
- `ls -alt` : Liệt kê tất cả file (bao gồm file ẩn), theo thứ tự thời gian, chi tiết đầy đủ.  
- `ls *.doc` : Liệt kê các file có phần mở rộng `.doc` trong thư mục hiện tại.  
- `ls -d .*` : Liệt kê **chỉ các thư mục ẩn** (bắt đầu bằng `.`) mà không hiển thị nội dung bên trong.  

**Thư mục:**  
- `/bin/` : Chứa các lệnh thực thi cơ bản cho người dùng.  
- `/dev/` : Chứa các thiết bị (device) như ổ cứng, cổng, thiết bị nhập xuất.  
- `/home/` : Thư mục chứa thư mục cá nhân của người dùng.  

---

## Câu 2
**Ý nghĩa các thư mục:**  
- `./` : Thư mục hiện tại → tuyệt đối: `/home/httt`  
- `../` : Thư mục cha → tuyệt đối: `/home`  
- `~/` : Thư mục home của user hiện tại → tuyệt đối: `/home/httt`  

**Thư mục:**  
- `/lost+found/` : Nơi lưu các file bị mất mát hoặc phục hồi sau lỗi hệ thống.  
- `/mnt/` : Thư mục gắn kết thiết bị lưu trữ tạm thời (mount).  
- `/proc/` : Thư mục ảo, chứa thông tin hệ thống và tiến trình.  

---

## Câu 3
**Các lệnh:**  
- `cat` : Hiển thị nội dung toàn bộ file ra màn hình.  
- `more` : Hiển thị nội dung file theo trang, có thể cuộn xuống.  
- `less` : Tương tự `more` nhưng linh hoạt hơn, hỗ trợ cuộn lên/xuống, tìm kiếm.  

**Thư mục:**  
- `/sbin/` : Chứa lệnh hệ thống dành cho root.  
- `/tmp/` : Thư mục chứa file tạm thời.  
- `/var/` : Chứa file thay đổi, log, spool, cache.  

---

## Câu 4
**Các lệnh:**  
- `head -10 oss1.txt` : Hiển thị 10 dòng đầu của file `oss1.txt`.  
- `tail -20 oss2.txt` : Hiển thị 20 dòng cuối của file `oss2.txt`.  
- `tail -f oss3.txt` : Theo dõi file `oss3.txt` theo thời gian thực (dòng mới hiển thị liên tục).  

**Thư mục:**  
- `/boot/` : Chứa file cần thiết để khởi động hệ thống (kernel, bootloader).  
- `/etc/` : Chứa file cấu hình hệ thống.  
- `/lib/` : Chứa thư viện dùng chung cho các chương trình.  

---

## Câu 5
**Các lệnh:**  
- `grep -v httt *.txt` : Hiển thị các dòng **không chứa** từ `httt` trong các file `.txt`.  
- `grep -ri cntt .` : Tìm từ `cntt` trong thư mục hiện tại và con, không phân biệt chữ hoa/thường.  
- `grep -i pmmnm *.log` : Tìm từ `pmmnm` trong file `.log`, không phân biệt chữ hoa/thường.  

**Thư mục:**  
- `/media/` : Chứa các thiết bị gắn ngoài (USB, CD-ROM).  
- `/opt/` : Thư mục cài đặt phần mềm bổ sung.  
- `/root/` : Thư mục home của người dùng root.  

---

## Câu 6
**Các lệnh:**  
- `chmod go+r oss1.txt` : Thêm quyền đọc (r) cho group và others trên `oss1.txt`.  
- `chmod u-w oss2.txt` : Xóa quyền ghi (w) của user trên `oss2.txt`.  
- `chmod a-x oss3.txt` : Xóa quyền thực thi (x) của tất cả trên `oss3.txt`.  

**Thư mục:**  
- `/sys/` : Thư mục ảo, thông tin kernel và thiết bị.  
- `/usr/` : Chứa ứng dụng, thư viện và tài nguyên dùng chung.  
- `/boot/` : File cần thiết cho khởi động hệ thống.  

---

## Câu 7
**Các lệnh:**  
- `ps` : Liệt kê tiến trình đang chạy.  
- `top` : Hiển thị tiến trình theo thời gian thực, thống kê tài nguyên.  
- `htop` : Giống `top` nhưng có giao diện màu, dễ thao tác hơn.  

**Thư mục:**  
- `/bin/` : Lệnh cơ bản cho người dùng.  
- `/home/` : Thư mục user.  
- `/mnt/` : Mount thiết bị lưu trữ tạm thời.  

---

## Câu 8
**Các lệnh:**  
- `history` : Hiển thị lịch sử lệnh đã dùng.  
- `!!` : Thực thi lệnh cuối cùng.  
- `!1005` : Thực thi lệnh số 1005 trong lịch sử.  

**Thư mục:**  
- `/sbin/` : Lệnh hệ thống dành cho root.  
- `/var/` : File thay đổi, log, spool, cache.  
- `/opt/` : Thư mục phần mềm bổ sung.  

---

## Câu 9
**Các lệnh:**  
- `df -h` : Hiển thị dung lượng ổ đĩa theo dạng dễ đọc (human-readable).  
- `du -h` : Hiển thị dung lượng thư mục/file theo human-readable.  
- `du -sh` : Hiển thị dung lượng thư mục/file tổng cộng, dạng human-readable.  

**Thư mục:**  
- `/proc/` : Thông tin hệ thống và tiến trình.  
- `/dev/` : Thiết bị.  
- `/lost+found/` : File phục hồi sau lỗi.  

---

## Câu 10
**Các lệnh:**  
- `locate "*.xls"` : Tìm tất cả file có phần mở rộng `.xls` trong hệ thống.  
- `locate "/usr/oss/*linux*"` : Tìm file trong `/usr/oss/` có chứa `linux`.  
- `find . -name "*.pdf"` : Tìm file `.pdf` trong thư mục hiện tại và con.  

**Thư mục:**  
- `/media/` : Thiết bị gắn ngoài.  
- `/sys/` : Thông tin kernel.  
- `/etc/` : File cấu hình.  

---

## Câu 11
**Các lệnh:**  
- `chmod go+r oss1.txt` → Thêm quyền đọc cho group/others.  
- `chmod u-w oss2.txt` → Xóa quyền ghi của user.  
- `chmod a-x oss3.txt` → Xóa quyền thực thi cho tất cả.  

**Thư mục:**  
- `/sys/` : Thông tin kernel.  
- `/usr/` : Ứng dụng và thư viện.  
- `/boot/` : File khởi động.  

---

## Câu 12
**Các lệnh:**  
- `locate "*.xls"` → Tìm file `.xls`.  
- `locate "/usr/oss/*linux*"` → Tìm file có `linux` trong `/usr/oss/`.  
- `find . -name "*.pdf"` → Tìm file `.pdf` trong thư mục hiện tại.  

**Thư mục:**  
- `/media/` : Thiết bị gắn ngoài.  
- `/sys/` : Thông tin kernel.  
- `/etc/` : File cấu hình.  

---

## Câu 13
**Các lệnh:**  
- `ps` → Liệt kê tiến trình đang chạy.  
- `top` → Thống kê tiến trình và tài nguyên theo thời gian thực.  
- `htop` → Giống `top` nhưng giao diện màu và dễ thao tác hơn.  

**Thư mục:**  
- `/bin/` : Lệnh cơ bản.  
- `/home/` : Thư mục người dùng.  
- `/mnt/` : Mount thiết bị lưu trữ tạm thời.  

---

## Câu 14
**Các lệnh:**  
- `history` → Lịch sử lệnh.  
- `!!` → Thực thi lệnh cuối cùng.  
- `!1005` → Thực thi lệnh số 1005 trong lịch sử.  

**Thư mục:**  
- `/sbin/` : Lệnh hệ thống root.  
- `/var/` : File thay đổi/log.  
- `/opt/` : Phần mềm bổ sung.  

---

## Câu 15
**Các lệnh:**  
- `head -10 oss1.txt` → 10 dòng đầu.  
- `tail -20 oss2.txt` → 20 dòng cuối.  
- `tail -f oss3.txt` → Theo dõi file theo thời gian thực.  

**Thư mục:**  
- `/boot/` : File khởi động.  
- `/etc/` : File cấu hình.  
- `/lib/` : Thư viện.  

---

## Câu 16
**Các lệnh:**  
- `df -h` → Dung lượng ổ đĩa human-readable.  
- `du -h` → Dung lượng thư mục/file human-readable.  
- `du -sh` → Tổng dung lượng thư mục/file human-readable.  

**Thư mục:**  
- `/proc/` : Thông tin hệ thống.  
- `/dev/` : Thiết bị.  
- `/lost+found/` : File phục hồi.  

---

## Câu 17
**Các lệnh:**  
- `ls -alt` → Liệt kê tất cả file theo thời gian, chi tiết.  
- `ls *.doc` → Liệt kê file `.doc`.  
- `ls -d .*` → Liệt kê thư mục ẩn.  

**Thư mục:**  
- `/bin/` : Lệnh cơ bản.  
- `/dev/` : Thiết bị.  
- `/home/` : Thư mục người dùng.  

---

## Câu 18
**Các lệnh:**  
- `cat` → Hiển thị toàn bộ file.  
- `more` → Hiển thị file theo trang.  
- `less` → Hiển thị file linh hoạt hơn, có thể cuộn lên/xuống.  

**Thư mục:**  
- `/sbin/` : Lệnh hệ thống root.  
- `/tmp/` : File tạm thời.  
- `/var/` : Log và file thay đổi.  

---

## Câu 19
**Các lệnh:**  
- `grep -v httt *.txt` → Hiển thị dòng không chứa `httt`.  
- `grep -ri cntt .` → Tìm `cntt` không phân biệt chữ hoa/thường.  
- `grep -i pmmnm *.log` → Tìm `pmmnm` trong file log, không phân biệt chữ hoa/thường.  

**Thư mục:**  
- `/media/` : Thiết bị gắn ngoài.  
- `/opt/` : Phần mềm bổ sung.  
- `/root/` : Thư mục home của root.  

---

## Câu 20
**Các thư mục:**  
- `./` → Thư mục hiện tại → `/home/httt`  
- `../` → Thư mục cha → `/home`  
- `~/` → Thư mục home user → `/home/httt`  

**Thư mục hệ thống:**  
- `/lost+found/` : File phục hồi.  
- `/mnt/` : Mount thiết bị lưu trữ tạm thời.  
- `/proc/` : Thông tin hệ thống và tiến trình.
