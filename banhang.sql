-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-06-13 10:32:31.631




-- tables
-- Table: ChiTietHoaDon
CREATE TABLE ChiTietHoaDon (
    MaCTHD varchar(12)  NOT NULL,
    TenSP nvarchar(50)  NOT NULL,
    MaSP nvarchar(50)  NOT NULL,
    MaKH varchar(12)  NOT NULL,
    NgayLapDH datetime  NOT NULL,
    NgayNhanHang datetime  NOT NULL,
    SoLuong int  NOT NULL,
    Tien money  NOT NULL,
    CONSTRAINT ChiTietHoaDon_pk PRIMARY KEY (MaCTHD)
)
;





-- Table: HoaDon
CREATE TABLE HoaDon (
    MaHD varchar(12)  NOT NULL,
    MaCTHD varchar(12)  NOT NULL,
    MaKH varchar(12)  NOT NULL,
    TenSP nvarchar(50)  NOT NULL,
    NgayLapDH datetime  NOT NULL,
    KhachHang_MaKH varchar(12)  NOT NULL,
    ChiTietHoaDon_MaCTHD varchar(12)  NOT NULL,
    SanPham_MaSP varchar(12)  NOT NULL,
    CONSTRAINT HoaDon_pk PRIMARY KEY (MaHD)
)
;





-- Table: KhachHang
CREATE TABLE KhachHang (
    MaKH varchar(12)  NOT NULL,
    HoDem nvarchar(20)  NOT NULL,
    TenKH nvarchar(10)  NOT NULL,
    DiaChi nvarchar(30)  NOT NULL,
    Email nvarchar(30)  NOT NULL,
    SDT int  NOT NULL,
    CONSTRAINT KhachHang_pk PRIMARY KEY (MaKH)
)
;





-- Table: LoaiSanPham
CREATE TABLE LoaiSanPham (
    LoaiSP varchar(12)  NOT NULL,
    HangSP varchar(12)  NOT NULL,
    CONSTRAINT LoaiSanPham_pk PRIMARY KEY (LoaiSP)
)
;





-- Table: SanPham
CREATE TABLE SanPham (
    MaSP varchar(12)  NOT NULL,
    TenSP nvarchar(50)  NOT NULL,
    LoaiSP varchar(12)  NOT NULL,
    Gia money  NOT NULL,
    LoaiSanPham_LoaiSP varchar(12)  NOT NULL,
    CONSTRAINT SanPham_pk PRIMARY KEY (MaSP)
)
;









-- foreign keys
-- Reference:  HoaDon_ChiTietHoaDon (table: HoaDon)


ALTER TABLE HoaDon ADD CONSTRAINT HoaDon_ChiTietHoaDon 
    FOREIGN KEY (ChiTietHoaDon_MaCTHD)
    REFERENCES ChiTietHoaDon (MaCTHD)
;

-- Reference:  HoaDon_KhachHang (table: HoaDon)


ALTER TABLE HoaDon ADD CONSTRAINT HoaDon_KhachHang 
    FOREIGN KEY (KhachHang_MaKH)
    REFERENCES KhachHang (MaKH)
;

-- Reference:  HoaDon_SanPham (table: HoaDon)


ALTER TABLE HoaDon ADD CONSTRAINT HoaDon_SanPham 
    FOREIGN KEY (SanPham_MaSP)
    REFERENCES SanPham (MaSP)
;

-- Reference:  SanPham_LoaiSanPham (table: SanPham)


ALTER TABLE SanPham ADD CONSTRAINT SanPham_LoaiSanPham 
    FOREIGN KEY (LoaiSanPham_LoaiSP)
    REFERENCES LoaiSanPham (LoaiSP)
;





-- End of file.

