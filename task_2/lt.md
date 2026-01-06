
# Free distribution
- Free distribution là tự do phân phối phần mềm hoặc nội dung mà người dùng có quyền sử dụng, sao chép, phân phối, thay đổi, và thậm chí phát triển tiếp mà không phải trả bất kỳ chi phí hay chịu các hạn chế đặc biệt từ phía người phân phối.
- Có hai ý nghĩa chính của "free distribution":
- Miễn phí: Phần mềm hoặc nội dung có thể được sử dụng mà không phải trả bất kỳ chi phí nào.
- Tự do: Phần mềm hoặc nội dung có sẵn dưới dạng mã nguồn mở và người dùng có quyền kiểm soát, sửa đổi, và tái sử dụng mã nguồn theo ý muốn của họ. Điều này thường đi kèm với các giấy phép mã nguồn mở như GNU General Public License (GPL) hoặc các giấy phép tương tự.


# Có ít nhất bao nhiêu partition cần được tạo ra khi cài đặt hệ điều hành Linux?

- Trên hệ điều hành Linux, cần tối thiểu 3 phân vùng đó là:
**/boot** : Chứa kernel của Linux, kích thước phân vùng tối thiểu 100 MB.
**/**: Thư mục gốc của hệ thống, chứa tất cả các file hệ thống, kích thước phân vùng tối thiểu 4GB.
**swap**: là một phân vùng đặc biệt được sử dụng để lưu trữ dữ liệu từ bộ nhớ RAM khi bộ nhớ RAM đã đầy, giúp hệ thống duy trì hiệu suất khi không còn đủ bộ nhớ RAM vật lý. Kích thước của swap sẽ được xác định như sau:
		Nếu RAM < 32GB, swap = 2xRAM;
		Nếu RAM  [32;96] GB, swap = RAM;
		Nếu RAM > 96GB, swap = 96GB.
