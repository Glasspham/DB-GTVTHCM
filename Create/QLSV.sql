CREATE DATABASE QLSV;
USE QLSV;

-- CREATE TABLES
CREATE TABLE MONHOC (
    MAMH VARCHAR(3) PRIMARY KEY,
    TENMH VARCHAR(50),
    SOTC INT
);

CREATE TABLE LOP (
    MALP VARCHAR(3) PRIMARY KEY,
    TENLP VARCHAR(30),
    NK INT
);

CREATE TABLE SINHVIEN (
    MASV VARCHAR(3) PRIMARY KEY,
    TENSV VARCHAR(30),
    DCSV VARCHAR(30),
    MALP VARCHAR(3)
);

CREATE TABLE DIEMSV (
    MASV VARCHAR(3),
    MAMH VARCHAR(3),
    DIEM FLOAT,
    PRIMARY KEY (MASV, MAMH)
);

-- INSERT DATA
INSERT INTO MONHOC VALUES 
('M01', 'TOÁN ĐẠI CƯƠNG', 3),
('M02', 'LẬP TRÌNH C++', 4),
('M03', 'MẠNG MÁY TÍNH', 3),
('M04', 'CƠ SỞ DỮ LIỆU', 3),
('M05', 'KỸ THUẬT PHẦN MỀM', 4);

INSERT INTO LOP VALUES 
('L01', 'LỚP 1 - 2023', 2023),
('L02', 'LỚP 2 - 2023', 2023),
('L03', 'LỚP 3 - 2023', 2023);

INSERT INTO SINHVIEN VALUES 
('S01', 'NGUYỄN VĂN A', 'HÀ NỘI', 'L01'),
('S02', 'TRẦN THỊ B', 'HỒ CHÍ MINH', 'L02'),
('S03', 'LÊ QUANG C', 'ĐÀ NẴNG', 'L03'),
('S04', 'PHAN MINH D', 'CẦN THƠ', 'L01'),
('S05', 'NGUYỄN LAN E', 'HẢI PHÒNG', 'L02'),
('S06', 'HOÀNG VĂN F', 'HÀ NỘI', 'L03'),
('S07', 'PHẠM THỊ G', 'NGHỆ AN', 'L01'),
('S08', 'TRẦN MINH H', 'HẢI PHÒNG', 'L02'),
('S09', 'VŨ VĂN I', 'ĐÀ NẴNG', 'L03'),
('S10', 'LÊ HỒNG J', 'HÀ NỘI', 'L01'),
('S11', 'ĐỖ THỊ K', 'HUẾ', 'L02'),
('S12', 'NGUYỄN ĐỨC L', 'HÀ NỘI', 'L03'),
('S13', 'PHẠM VĂN M', 'NGHỆ AN', 'L01'),
('S14', 'BÙI THỊ N', 'HÀ TĨNH', 'L02'),
('S15', 'NGÔ VĂN O', 'NAM ĐỊNH', 'L03'),
('S16', 'TRẦN MINH P', 'THÁI NGUYÊN', 'L01'),
('S17', 'PHAN THỊ Q', 'HẢI PHÒNG', 'L02'),
('S18', 'LÊ VĂN R', 'HÀ NỘI', 'L03'),
('S19', 'NGUYỄN THỊ S', 'NGHỆ AN', 'L01'),
('S20', 'TRẦN VĂN T', 'CẦN THƠ', 'L02');

INSERT INTO DIEMSV VALUES
('S01', 'M01', 9), ('S01', 'M02', 8), ('S01', 'M03', 6), ('S01', 'M04', 5), ('S01', 'M05', 10),
('S02', 'M01', 7), ('S02', 'M02', 5), ('S02', 'M04', 4),
('S03', 'M02', 8), ('S03', 'M03', 7),
('S04', 'M01', 4), ('S04', 'M02', 3), ('S04', 'M03', 8), ('S04', 'M04', 5), ('S04', 'M05', 9),
('S05', 'M01', 8), ('S05', 'M02', 9),
('S06', 'M02', 5), ('S06', 'M04', 7),
('S07', 'M01', 6), ('S07', 'M02', 8), ('S07', 'M03', 5),
('S08', 'M02', 4), ('S08', 'M03', 3),
('S09', 'M01', 3), ('S09', 'M02', 5),
('S10', 'M03', 6), ('S10', 'M04', 8);