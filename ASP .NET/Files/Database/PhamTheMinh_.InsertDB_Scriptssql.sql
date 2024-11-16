INSERT INTO ChuyenDi(id, maDangKy, slot, ngayThamQuan, trangThai, idKhoa, idGiangVien, idDoanhNghiep, is_deleted, created_by, created_at, updated_by, updated_at)
VALUES
	('1','DK01',30,'2024-11-01',1,1,1,1, 0, 1, GETDATE(), 1, GETDATE()),
	('2','DK02',25,'2024-11-02',2,2,1,2, 0, 1, GETDATE(), 1, GETDATE()),
	('3','DK03',30,'2024-11-03',1,3,1,3, 0, 1, GETDATE(), 1, GETDATE()),
	('4','DK04',25,'2024-11-04',2,4,1,4, 0, 1, GETDATE(), 1, GETDATE()),
	('5','DK05',30,'2024-11-05',1,5,1,5, 0, 1, GETDATE(), 1, GETDATE()),
	('6','DK06',25,'2024-11-06',2,6,1,6, 0, 1, GETDATE(), 1, GETDATE()),
	('7','DK07',30,'2024-11-07',1,7,1,7, 0, 1, GETDATE(), 1, GETDATE()),
	('8','DK08',25,'2024-11-08',2,8,1,8, 0, 1, GETDATE(), 1, GETDATE()),
	('9','DK09',30,'2024-11-09',1,9,1,9, 0, 1, GETDATE(), 1, GETDATE()),
	('10','DK10',25,'2024-11-10',2,10,10,1, 0, 1, GETDATE(), 1, GETDATE()),
	('11','DK011',30,'2024-11-11',1,11,11,1, 0, 1, GETDATE(), 1, GETDATE()),
	('12','DK012',25,'2024-11-12',2,12,12,1, 0, 1, GETDATE(), 1, GETDATE()),
	('13','DK013',30,'2024-11-13',1,13,13,1, 0, 1, GETDATE(), 1, GETDATE());


INSERT INTO ChiTietDangKy(id, ngaydDangKy, idSinhVien, idDangKy, is_deleted, created_by, created_at, updated_by, updated_at)
VALUES
	(1, '2024-11-01', 1, 1, 0, 1, GETDATE(), 1, GETDATE()),
	(2, '2024-11-02', 2, 2, 0, 1, GETDATE(), 1, GETDATE()),
	(3, '2024-11-03', 3, 3, 0, 1, GETDATE(), 1, GETDATE()),
	(4, '2024-11-04', 4, 4, 0, 1, GETDATE(), 1, GETDATE()),
	(5, '2024-11-05', 5, 5, 0, 1, GETDATE(), 1, GETDATE()),
	(6, '2024-11-06', 6, 6, 0, 1, GETDATE(), 1, GETDATE()),
	(7, '2024-11-07', 7, 7, 0, 1, GETDATE(), 1, GETDATE()),
	(8, '2024-11-08', 8, 8, 0, 1, GETDATE(), 1, GETDATE()),
	(9, '2024-11-09', 9, 9, 0, 1, GETDATE(), 1, GETDATE()),
	(10, '2024-11-10', 10, 10, 0, 1, GETDATE(), 1, GETDATE()),
	(11, '2024-11-11', 11, 11, 0, 1, GETDATE(), 1, GETDATE()),
	(12, '2024-11-12', 12, 12, 0, 1, GETDATE(), 1, GETDATE()),
	(13, '2024-11-13', 13, 13, 0, 1, GETDATE(), 1, GETDATE());