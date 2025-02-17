-- Xóa bảng "NhanVien" nếu tồn tại
DROP TABLE IF EXISTS NhanVien;

-- Tạo bảng "NhanVien"
CREATE TABLE NhanVien (
    MaNV INT PRIMARY KEY,
    HoTen VARCHAR(50),
    Tuoi INT,
    PhongBan VARCHAR(50)
);

-- Chèn các bản ghi nhân viên
INSERT INTO NhanVien (MaNV, HoTen, Tuoi, PhongBan) VALUES
(1, 'Nguyen Van A', 30, 'Ke Toan'),
(2, 'Tran Thi B', 25, 'Nhan Su'),
(3, 'Le Van C', 28, 'IT'),
(4, 'Pham Thi D', 32, 'Ke Toan'),
(5, 'Vu Van E', 26, 'IT'),
(6, 'Nguyen Thi F', 29, 'Marketing'),
(7, 'Le Thi G', 27, 'Nhan Su'),
(8, 'Hoang Van H', 35, 'Ke Toan'),
(9, 'Pham Van I', 33, 'Marketing'),
(10, 'Tran Van J', 24, 'IT'),
(11, 'Dang Thi K', 31, 'Nhan Su'),
(12, 'Nguyen Van L', 28, 'Ke Toan'),
(13, 'Tran Thi M', 26, 'Marketing'),
(14, 'Pham Van N', 30, 'Nhan Su'),
(15, 'Hoang Thi O', 27, 'IT');

-- Truy vấn tất cả thông tin từ bảng "NhanVien"
SELECT * FROM NhanVien;

-- Truy vấn tên và tuổi của các nhân viên trong phòng IT
SELECT HoTen, Tuoi FROM NhanVien WHERE PhongBan = 'IT';

-- Tìm các nhân viên lớn hơn 25 tuổi
SELECT * FROM NhanVien WHERE Tuoi > 25;

-- Xác định nhân viên lớn tuổi nhất trong mỗi phòng ban
SELECT PhongBan, HoTen, MAX(Tuoi) AS Tuoi
FROM NhanVien
GROUP BY PhongBan, HoTen
ORDER BY PhongBan;

-- Thay đổi thông tin phòng ban của nhân viên "Le Van C" sang "Marketing"
UPDATE NhanVien
SET PhongBan = 'Marketing'
WHERE HoTen = 'Le Van C';

-- Xóa nhân viên có MaNV = 2
DELETE FROM NhanVien
WHERE MaNV = 2;

-- Hiển thị số lượng nhân viên trong mỗi phòng ban
SELECT PhongBan, COUNT(*) AS SoNhanVien
FROM NhanVien
GROUP BY PhongBan;
