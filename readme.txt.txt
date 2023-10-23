•	HƯỚNG DẪN CÀI ĐẶT
Bước 1: Trước tiên bạn phải tải cài đặt môi trường cho Apache TomCat. Sau đó vào tệp bin rồi chạy file startup (loại WindowsBatch File). Và chờ trong giây lát.

Bước 2: Sau đó coppy file gearhub.war vào trong tệp webapps của tệp Apache TomCat mà bạn đã tải. Sau khi coppy xong, đợi vài giây sẽ thấy 1 tệp VietTravel sinh ra.

Bước 3: Vào tệp Apache TomCat => conf => sever.xml. Chỉnh sửa tệp sever.xml, thêm "<Context docBase="VietTravel" path="" reloadable="true" />" trên "</Host>"

Bước 4: Bạn phải có phần mềm SQL Server 2014 Management Studio (hoặc những phiên bản MỚI HƠN). Đăng nhập vào SQL bằng tài khoản "sa". Sau đó chọn Open File => chọn tệp DB_Travel.sql  => Ctrl + A => nhấn Execute.

Bước 5: Mở tệp VietTravel ở bước 1 ra, vào theo đường dẫn "VietTravel\WEB-INF\classes" để thấy tệp "application.properties". Mở tệp "application.properties" bằng Notepad, sau đó tiến hành thay đổi mật khẩu ở "spring.datasource.password" thành mật khẩu của tài khoản sql bước 2 đã sử dụng

Bước 6: Mở trình duyệt bất kì lên. Vào link http://localhost:8080/home/index để truy cập website.

