# Phân biệt Copyleft và Copyright

**Copyright (bản quyền)**

1. Mục đích: bảo vệ quyền sở hữu trí tuệ của tác giả.

2. Quyền của tác giả: kiểm soát việc sao chép, sửa đổi, phân phối tác phẩm.

3. Người khác muốn sử dụng, chỉnh sửa hoặc phân phối lại phải có sự cho phép.

4. Lý do: đảm bảo lợi ích kinh tế và quyền kiểm soát của tác giả đối với sản phẩm trí tuệ.

**Copyleft**

1. Mục đích: bảo vệ quyền tự do sử dụng và phát triển phần mềm.

2. Cho phép: sao chép, sửa đổi, phân phối tự do.

3. Điều kiện bắt buộc: mọi phiên bản sửa đổi/phân phối lại phải tiếp tục dùng cùng giấy phép Copyleft (ví dụ GPL).

4. Lý do: ngăn việc “đóng” phần mềm tự do thành phần mềm độc quyền, đảm bảo cộng đồng luôn được hưởng lợi.

# Câu 2. Tập tin /etc/shadow chứa thông tin gì của users hệ thống?

/etc/shadow chứa thông tin về mật khẩu của các người dùng hệ thống. Mỗi dòng trong tập tin này thường chứa thông tin về một người dùng cụ thể. Cụ thể, mỗi dòng bao gồm các trường sau, được phân tách bởi dấu hai chấm (:):

- Tên người dùng (Username): Tên của người dùng hệ thống.
- Mật khẩu (Password): Trường này thường chứa một giá trị băm (hash) của mật khẩu. Thông thường, mật khẩu thực sự không được lưu trữ ở đây, mà là một giá trị băm của mật khẩu để bảo mật hơn.
- Ngày bắt đầu (Last password change): Số ngày kể từ lần thay đổi mật khẩu cuối cùng.
- Thời gian hết hạn (Password expiration): Ngày mật khẩu sẽ hết hạn và yêu cầu người dùng thay đổi mật khẩu.
- Thời gian cảnh báo (Password warning): Số ngày trước khi mật khẩu hết hạn mà người dùng sẽ bắt đầu nhận được cảnh báo.
- Thời gian bảo vệ (Account expiration): Ngày tài khoản sẽ bị khóa và trở thành không hoạt động.
- Ngày hết hạn (Reserved): Trường dự trữ cho sự mở rộng trong tương lai.
- Tập tin /etc/shadow thường chỉ có quyền đọc và ghi cho người quản trị hệ thống (root), nhằm bảo vệ thông tin mật khẩu khỏi việc truy cập không ủy quyền.


# Giải thích cơ chế mont /unmount
1. Cơ chế mount

- Mỗi thiết bị lưu trữ trên hệ thống được đại diện bởi một đường dẫn 
- Để truy cập dữ liệu trên thiết bị, bạn cần "mount" nó vào một thư mục trên hệ thống tệp (đó là Mousepoint)
Khi chạy lệnh mount A B, bạn đang nói với hệ điều hành rằng bạn muốn kết nối phân vùng A vào thư mục B.
- Bây giờ, Bất kỳ tệp tin hoặc thư mục nào trên A sẽ có thể được truy cập thông qua đường dẫn B

2. Cơ chế unmount

- Khi muốn ngắt kết nối một thiết bị khỏi cây thư mục, dùng lệnh umount B (hoặc umount A) 
- 
- Lệnh này thông báo cho hệ điều hành để dừng kết nối giữa A và B
- Sau khi unmount, thư mục B không còn truy cập được đến dữ liệu trên A. Dữ liệu trong thư mục B sẽ bị mất.
