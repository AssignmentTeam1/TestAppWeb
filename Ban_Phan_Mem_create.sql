-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-07 01:43:57.977




-- tables
-- Table: ChiTietHoaDon
CREATE TABLE ChiTietHoaDon (
    MaCTHD varchar(12)  NOT NULL,
    MaKH varchar(12)  NOT NULL,
    MaSP varchar(12)  NOT NULL,
    TenSP nvarchar(20)  NOT NULL,
    SoLuong int  NOT NULL,
    Tien money  NOT NULL,
    NgayLapDH datetime  NOT NULL,
    NgayNhanHang datetime  NOT NULL,
    CONSTRAINT ChiTietHoaDon_pk PRIMARY KEY (MaCTHD)
)
;





-- Table: ChiTietSanPham
CREATE TABLE ChiTietSanPham (
    MaChiTietSP varchar(12)  NOT NULL,
    TenSP nvarchar(50)  NOT NULL,
    MaLoaiSP varchar(12)  NOT NULL,
    "Key" varchar(20)  NOT NULL,
    ChucNang nvarchar(200)  NOT NULL,
    CONSTRAINT ChiTietSanPham_pk PRIMARY KEY (MaChiTietSP)
)
;





-- Table: HangSX
CREATE TABLE HangSX (
    MaHSX varchar(12)  NOT NULL,
    TenHSX nvarchar(50)  NOT NULL,
    MaSP varchar(12)  NOT NULL,
    CONSTRAINT HangSX_pk PRIMARY KEY (MaHSX)
)
;





-- Table: HoaDon
CREATE TABLE HoaDon (
    MaHD varchar(12)  NOT NULL,
    MaCTHD varchar(12)  NOT NULL,
    MaKH varchar(12)  NOT NULL,
    TenKH nvarchar(20)  NOT NULL,
    TenSP nvarchar(50)  NOT NULL,
    NgayLapHD datetime  NOT NULL,
    CONSTRAINT HoaDon_pk PRIMARY KEY (MaHD)
)
;





-- Table: KhachHang
CREATE TABLE KhachHang (
    MaKH varchar(12)  NOT NULL,
    HoDem nvarchar(20)  NOT NULL,
    Ten nvarchar(20)  NOT NULL,
    DiaChi nvarchar(100)  NOT NULL,
    Email nvarchar(100)  NOT NULL,
    SDT int  NOT NULL,
    CONSTRAINT KhachHang_pk PRIMARY KEY (MaKH)
)
;





-- Table: LoaiSP
CREATE TABLE LoaiSP (
    MaLoaiSP varchar(12)  NOT NULL,
    TenLoaiSP nvarchar(20)  NOT NULL,
    MaHSX varchar(12)  NOT NULL,
    CONSTRAINT LoaiSP_pk PRIMARY KEY (MaLoaiSP)
)
;





-- Table: SanPham
CREATE TABLE SanPham (
    MaSP varchar(12)  NOT NULL,
    TenSP nvarchar(20)  NOT NULL,
    GiaSP money  NOT NULL,
    MaHSX varchar(12)  NOT NULL,
    MaChiTietSP varchar(12)  NOT NULL,
    CONSTRAINT SanPham_pk PRIMARY KEY (MaSP)
)
;









-- foreign keys
-- Reference:  ChiTietHoaDon_SanPham (table: ChiTietHoaDon)


ALTER TABLE ChiTietHoaDon ADD CONSTRAINT ChiTietHoaDon_SanPham 
    FOREIGN KEY (MaSP)
    REFERENCES SanPham (MaSP)
;

-- Reference:  ChiTietSanPham_LoaiSP (table: ChiTietSanPham)


ALTER TABLE ChiTietSanPham ADD CONSTRAINT ChiTietSanPham_LoaiSP 
    FOREIGN KEY (MaLoaiSP)
    REFERENCES LoaiSP (MaLoaiSP)
;

-- Reference:  HoaDon_ChiTietHoaDon (table: HoaDon)


ALTER TABLE HoaDon ADD CONSTRAINT HoaDon_ChiTietHoaDon 
    FOREIGN KEY (MaCTHD)
    REFERENCES ChiTietHoaDon (MaCTHD)
;

-- Reference:  HoaDon_KhachHang (table: HoaDon)


ALTER TABLE HoaDon ADD CONSTRAINT HoaDon_KhachHang 
    FOREIGN KEY (MaKH)
    REFERENCES KhachHang (MaKH)
;

-- Reference:  LoaiSP_HangSX (table: LoaiSP)


ALTER TABLE LoaiSP ADD CONSTRAINT LoaiSP_HangSX 
    FOREIGN KEY (MaHSX)
    REFERENCES HangSX (MaHSX)
;

-- Reference:  SanPham_ChiTietSanPham (table: SanPham)


ALTER TABLE SanPham ADD CONSTRAINT SanPham_ChiTietSanPham 
    FOREIGN KEY (MaChiTietSP)
    REFERENCES ChiTietSanPham (MaChiTietSP)
;

-- Reference:  SanPham_HangSX (table: SanPham)


ALTER TABLE SanPham ADD CONSTRAINT SanPham_HangSX 
    FOREIGN KEY (MaHSX)
    REFERENCES HangSX (MaHSX)
;





-- End of file.

