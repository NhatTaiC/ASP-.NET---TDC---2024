--Tài khoản
INSERT INTO TaiKhoan (tenTaiKhoan, matKhau, quyen, is_deleted, created_by, created_at, updated_by, updated_at)
VALUES
    ('admin', '123456', 0, 0, 0, GETDATE(), 0, GETDATE()),
    ('user2', '123456', 1, 0, 0, GETDATE(), 0, GETDATE()),
    ('user3', '123456', 1, 0, 0, GETDATE(), 0, GETDATE()),
    ('user4', '123456', 1, 0, 0, GETDATE(), 0, GETDATE()),
    ('user5', '123456', 1, 0, 0, GETDATE(), 0, GETDATE()),
    ('user6', '123456', 1, 0, 0, GETDATE(), 0, GETDATE()),
    ('user7', '123456', 1, 0, 0, GETDATE(), 0, GETDATE()),
    ('user8', '123456', 1, 0, 0, GETDATE(), 0, GETDATE()),
    ('user9', '123456', 1, 0, 0, GETDATE(), 0, GETDATE()),
    ('user1', '123456', 1, 0, 0, GETDATE(), 0, GETDATE());
--Khóa học
-- Thêm 10 dòng dữ liệu mẫu
INSERT INTO KhoaHoc (maKhoaHoc, namBatDau, namKetThuc, is_deleted, created_by, created_at, updated_by, updated_at)
VALUES
    ('14', 2014, 2017, 0, 0, GETDATE(), 0, GETDATE()),
    ('15', 2015, 2018, 0, 0, GETDATE(), 0, GETDATE()),
    ('16', 2016, 2019, 0, 0, GETDATE(), 0, GETDATE()),
    ('17', 2017, 2020, 0, 0, GETDATE(), 0, GETDATE()),
    ('18', 2018, 2021, 0, 0, GETDATE(), 0, GETDATE()),
    ('19', 2019, 2022, 0, 0, GETDATE(), 0, GETDATE()),
    ('20', 2020, 2023, 0, 0, GETDATE(), 0, GETDATE()),
    ('21', 2021, 2024, 0, 0, GETDATE(), 0, GETDATE()),
    ('22', 2022, 2025, 0, 0, GETDATE(), 0, GETDATE()),
    ('23', 2023, 2026, 0, 0, GETDATE(), 0, GETDATE()),
	('23', 2024, 2027, 0, 0, GETDATE(), 0, GETDATE());
--khoa
INSERT INTO Khoa (maKhoa, tenKhoa, soDienThoai, email, is_deleted, created_by, created_at, updated_by, updated_at)
VALUES
    ('CNTT', N'Khoa Công nghệ Thông tin', '0281234567', 'cntt@tdc.edu.vn', 0, 0, GETDATE(), 0, GETDATE()),
    ('QTKD', N'Khoa Quản trị Kinh doanh', '0281234568', 'qtkd@tdc.edu.vn', 0, 0, GETDATE(), 0, GETDATE()),
    ('CK', N'Khoa Cơ khí', '0281234569', 'ck@tdc.edu.vn', 0, 0, GETDATE(), 0, GETDATE()),
    ('DD', N'Khoa Điện - Điện tử', '0281234570', 'dd@tdc.edu.vn', 0, 0, GETDATE(), 0, GETDATE()),
    ('NL', N'Khoa Nông Lâm', '0281234571', 'nl@tdc.edu.vn', 0, 0, GETDATE(), 0, GETDATE()),
    ('LT', N'Khoa Lữ hành - Nhà hàng - Khách sạn', '0281234572', 'lt@tdc.edu.vn', 0, 0, GETDATE(), 0, GETDATE()),
    ('XD', N'Khoa Xây dựng', '0281234573', 'xd@tdc.edu.vn', 0, 0, GETDATE(), 0, GETDATE()),
    ('YH', N'Khoa Y học', '0281234574', 'yh@tdc.edu.vn', 0, 0, GETDATE(), 0, GETDATE()),
    ('TK', N'Khoa Thiết kế', '0281234575', 'tk@tdc.edu.vn', 0, 0, GETDATE(), 0, GETDATE()),
    ('SP', N'Khoa Sư phạm', '0281234576', 'sp@tdc.edu.vn', 0, 0, GETDATE(), 0, GETDATE());
--Doanh nghiệp
INSERT INTO DoanhNghiep (maDoanhNghiep, tenDoanhNghiep, soDienThoai, diaChi, is_deleted, created_by, created_at, updated_by, updated_at)
VALUES
    ('DN01', N'Công ty Công nghệ ABC', '0281234560', N'123 Đường Số 1, Quận 9, TP.HCM', 0, 0, GETDATE(), 0, GETDATE()),
    ('DN02', N'Tập đoàn XYZ', '0281234561', N'456 Đường Số 2, Quận Thủ Đức, TP.HCM', 0, 0, GETDATE(), 0, GETDATE()),
    ('DN03', N'Công ty Điện tử Điện lạnh', '0281234562', N'789 Đường Số 3, Quận 7, TP.HCM', 0, 0, GETDATE(), 0, GETDATE()),
    ('DN04', N'Công ty Cơ khí Công nghiệp', '0281234563', N'101 Đường Số 4, Quận 12, TP.HCM', 0, 0, GETDATE(), 0, GETDATE()),
    ('DN05', N'Công ty Thực phẩm An Toàn', '0281234564', N'202 Đường Số 5, Quận Bình Tân, TP.HCM', 0, 0, GETDATE(), 0, GETDATE()),
    ('DN06', N'Tập đoàn Xây dựng Việt Nam', '0281234565', N'303 Đường Số 6, Quận 10, TP.HCM', 0, 0, GETDATE(), 0, GETDATE()),
    ('DN07', N'Công ty Sản xuất Thiết bị Y tế', '0281234566', N'404 Đường Số 7, Quận Gò Vấp, TP.HCM', 0, 0, GETDATE(), 0, GETDATE()),
    ('DN08', N'Công ty Phần mềm Giải pháp', '0281234567', N'505 Đường Số 8, Quận 5, TP.HCM', 0, 0, GETDATE(), 0, GETDATE()),
    ('DN09', N'Công ty Nông sản Việt', '0281234568', N'606 Đường Số 9, Quận 8, TP.HCM', 0, 0, GETDATE(), 0, GETDATE()),
    ('DN10', N'Tập đoàn Thời trang Toàn Cầu', '0281234569', N'707 Đường Số 10, Quận Tân Bình, TP.HCM', 0, 0, GETDATE(), 0, GETDATE());