create database [dbQLCF]
go
USE [dbQLCF]
GO
/****** Object:  Table [dbo].[Ban]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban](
	[MaBan] [int] IDENTITY(100,1) NOT NULL,
	[TenBan] [nvarchar](100) NOT NULL,
	[SoCho] [tinyint] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [pk_B] PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[caTruc]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caTruc](
	[maCT] [tinyint] NOT NULL,
	[TGBatDau] [time](7) NULL,
	[TGKetThuc] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[maCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietGiaoHang]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGiaoHang](
	[MaGiaoHang] [int] NOT NULL,
	[maThucDon] [int] NOT NULL,
	[soLuongGiao] [int] NOT NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [pk_CTGH] PRIMARY KEY CLUSTERED 
(
	[MaGiaoHang] ASC,
	[maThucDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[MaHoaDon] [int] NOT NULL,
	[MaThucDon] [int] NOT NULL,
	[SoLuongMon] [int] NOT NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [pk_CTHD] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaThucDon] ASC,
	[SoLuongMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietNhapHang]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ChiTietNhapHang](
	[MaNhapHang] [int] NOT NULL,
	[MaHang] [char](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [int] NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [pk_CTPNH] PRIMARY KEY CLUSTERED 
(
	[MaNhapHang] ASC,
	[MaHang] ASC,
	[SoLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DoanhThu]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanhThu](
	[maCT] [tinyint] NOT NULL,
	[ngayTruc] [date] NOT NULL,
	[doanhThu] [float] NOT NULL,
 CONSTRAINT [PK_DoanhThu] PRIMARY KEY CLUSTERED 
(
	[maCT] ASC,
	[doanhThu] ASC,
	[ngayTruc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonGiaoHang]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonGiaoHang](
	[MaGiaoHang] [int] IDENTITY(100,1) NOT NULL,
	[maKhachHang] [int] NOT NULL,
	[maNhanVien] [int] NULL,
	[NgayGiao] [datetime] NULL,
	[diaChiGiao] [nvarchar](100) NULL,
	[PhiShip] [float] NULL,
	[tongTien] [float] NULL,
	[TrangThai] [bit] NULL,
	[GhiChu] [nvarchar](265) NULL,
 CONSTRAINT [pk_DGH] PRIMARY KEY CLUSTERED 
(
	[MaGiaoHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonNhapHang]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonNhapHang](
	[MaNhapHang] [int] IDENTITY(100,5) NOT NULL,
	[MaNhanVien] [int] NOT NULL,
	[NhaCungCap] [nvarchar](100) NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[tongNhapHang] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhapHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonNhapHang_C]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonNhapHang_C](
	[MaNhapHang] [int] IDENTITY(100,5) NOT NULL,
	[MaNhanVien] [int] NOT NULL,
	[NhaCungCap] [nvarchar](100) NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[tongNhapHang] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhapHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHang] [char](10) NOT NULL,
	[TenHang] [nvarchar](100) NOT NULL,
	[Gia] [float] NOT NULL,
	[DVT] [nvarchar](15) NULL,
	[SLTon] [int] NULL,
	[MaLoaiHang] [char](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [int] IDENTITY(100,1) NOT NULL,
	[MaBan] [int] NOT NULL,
	[MaKhachHang] [int] NOT NULL,
	[MaNhanVien] [int] NOT NULL,
	[ThoiGianVao] [date] NOT NULL,
	[ThanhToan] [float] NULL,
 CONSTRAINT [pk_HD] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOTROKHACHHANG]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOTROKHACHHANG](
	[MAKHACHHANG] [int] NOT NULL,
	[GMAIL] [varchar](255) NULL,
	[SDT] [varchar](255) NULL,
	[VANDEHOTRO] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKHACHHANG] ASC,
	[VANDEHOTRO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] IDENTITY(110,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](15) NULL,
	[Email] [nvarchar](100) NULL,
	[DienThoai] [varchar](15) NULL,
	[MaLoaiKH] [int] NOT NULL,
	[DiaChi] [nvarchar](250) NULL,
	[DiemTichLuy] [int] NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[KhachHang] ADD [HinhAnh] [varchar](40) NULL
 CONSTRAINT [pk_KH] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiHangHoa]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[LoaiHangHoa](
	[MaLoaiHang] [char](10) NOT NULL,
	[TenLoaiHang] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiKhachHang]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiKhachHang](
	[MaLoaiKH] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiKH] [nvarchar](100) NOT NULL,
	[UuDai] [float] NULL,
	[HanSuDung] [int] NULL,
	[DieuKien] [int] NULL,
	[MoTa] [nvarchar](500) NULL,
 CONSTRAINT [pk_LKH] PRIMARY KEY CLUSTERED 
(
	[MaLoaiKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiThucDon]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[LoaiThucDon](
	[MaLoaiTD] [char](10) NOT NULL,
	[TenLoaiTD] [nvarchar](100) NOT NULL,
	[SoLuongMon] [tinyint] NULL,
 CONSTRAINT [pk_LTD] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] IDENTITY(100,1) NOT NULL,
	[TenNhanVien] [nvarchar](255) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [int] NULL,
	[ChucVu] [nvarchar](100) NULL,
	[Luong] [float] NULL,
	[NgayVaoLam] [date] NULL,
	[HinhAnh] [nvarchar](255) NULL,
 CONSTRAINT [pk_NV] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanCong]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCong](
	[maCT] [tinyint] NOT NULL,
	[maNV] [int] NOT NULL,
	[ngay] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maCT] ASC,
	[maNV] ASC,
	[ngay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[taiKhoanCongTy]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[taiKhoanCongTy](
	[maTaiKhoan] [int] NOT NULL,
	[tenTaiKhoan] [varchar](20) NULL,
	[matKhau] [varchar](15) NULL,
	[ngayTao] [date] NULL,
	[Quyen] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maTaiKhoan] ASC,
	[Quyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[taiKhoanKhachHang]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[taiKhoanKhachHang](
	[maKH] [int] NOT NULL,
	[tenTaiKhoan] [char](20) NOT NULL,
	[matKhau] [char](15) NOT NULL,
	[ngayTao] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThucDon]    Script Date: 12/31/2020 7:18:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ThucDon](
	[MaThucDon] [int] IDENTITY(100,1) NOT NULL,
	[TenMon] [nvarchar](100) NOT NULL,
	[DonGia] [int] NULL,
	[DVT] [nvarchar](20) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[MaLoaiTD] [char](10) NOT NULL,
	[TiLeChon] [float] NULL,
 CONSTRAINT [pk_DA] PRIMARY KEY CLUSTERED 
(
	[MaThucDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Ban] ON 

INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoCho], [TrangThai]) VALUES (102, N'Bàn số 1', 4, NULL)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoCho], [TrangThai]) VALUES (103, N'Bàn số 2', 4, NULL)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoCho], [TrangThai]) VALUES (104, N'Bàn số 3', 4, NULL)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoCho], [TrangThai]) VALUES (105, N'Bàn số 4', 5, NULL)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoCho], [TrangThai]) VALUES (106, N'Bàn số 5', 5, NULL)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoCho], [TrangThai]) VALUES (107, N'Bàn số 6', 6, NULL)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoCho], [TrangThai]) VALUES (108, N'Bàn số 7', 6, NULL)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [SoCho], [TrangThai]) VALUES (109, N'Bàn số 8', 6, NULL)
SET IDENTITY_INSERT [dbo].[Ban] OFF
INSERT [dbo].[caTruc] ([maCT], [TGBatDau], [TGKetThuc]) VALUES (1, CAST(0x0700A47C7B360000 AS Time), CAST(0x07001417C6680000 AS Time))
INSERT [dbo].[caTruc] ([maCT], [TGBatDau], [TGKetThuc]) VALUES (2, CAST(0x07007CDB27710000 AS Time), CAST(0x0700604C49910000 AS Time))
INSERT [dbo].[caTruc] ([maCT], [TGBatDau], [TGKetThuc]) VALUES (3, CAST(0x070050CFDF960000 AS Time), CAST(0x0700BCFE35B40000 AS Time))
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (100, 100, 2, 64000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (101, 101, 5, 160000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (102, 102, 3, 96000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (103, 103, 9, 405000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (104, 104, 1, 45000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (105, 105, 3, 135000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (106, 100, 1, 32000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (106, 101, 4, 128000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (106, 102, 2, 64000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (111, 129, 2, 118000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (111, 134, 2, 118000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (112, 119, 2, 118000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (112, 120, 4, 220000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (113, 100, 3, 96000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (113, 134, 2, 118000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (114, 116, 9, 288000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (114, 129, 4, 236000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (115, 129, 3, 177000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (116, 129, 3, 177000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (117, 129, 3, 177000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (118, 119, 2, 118000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (120, 100, 2, 64000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (121, 119, 3, 177000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (122, 119, 2, 118000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (123, 116, 2, 64000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (124, 119, 3, 177000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (125, 129, 3, 177000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (126, 100, 2, NULL)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (126, 102, 1, NULL)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (126, 105, 3, NULL)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (129, 134, 1, 59000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (129, 176, 5, 295000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (130, 189, 2, 78000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (130, 190, 2, 90000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (131, 129, 4, 236000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (132, 100, 2, 64000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (132, 102, 1, 32000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (133, 119, 3, 177000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (133, 174, 2, 118000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (134, 116, 2, 64000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (134, 124, 2, 84000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (135, 129, 2, 118000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (135, 176, 1, 59000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (136, 100, 2, 64000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (136, 102, 1, 32000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (137, 119, 1, 59000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (138, 112, 1, 42000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (138, 114, 2, 84000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (139, 189, 2, 78000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (140, 101, 1, 32000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (140, 138, 1, 69000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (141, 119, 2, 118000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (141, 189, 2, 78000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (142, 129, 2, 118000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (142, 177, 1, 59000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (143, 129, 2, 118000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (143, 134, 1, 59000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (144, 112, 2, 84000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (145, 112, 2, 84000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (146, 129, 1, 59000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (147, 100, 1, 32000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (147, 189, 2, 78000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (147, 191, 1, 55000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (148, 189, 2, 78000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (148, 192, 1, 35000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (149, 129, 2, 118000)
INSERT [dbo].[ChiTietGiaoHang] ([MaGiaoHang], [maThucDon], [soLuongGiao], [ThanhTien]) VALUES (149, 176, 1, 59000)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (100, 100, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (101, 104, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (101, 105, 4, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (102, 106, 3, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (102, 120, 5, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (103, 112, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (104, 113, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (105, 114, 7, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (106, 115, 3, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (106, 116, 8, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (107, 102, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (107, 117, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (107, 120, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (108, 118, 3, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (109, 119, 4, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (110, 102, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (110, 103, 3, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (110, 120, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (113, 127, 3, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (113, 128, 3, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (114, 102, 3, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (114, 112, 8, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (114, 117, 13, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (114, 118, 11, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (115, 114, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (115, 115, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (115, 116, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (115, 128, 3, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (115, 129, 4, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (116, 102, 30, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (117, 102, 27, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (117, 104, 4, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (117, 106, 6, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (117, 120, 5, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (117, 124, 4, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (127, 104, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (128, 105, 3, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (128, 112, 3, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (128, 113, 4, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (128, 118, 3, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (134, 100, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (134, 100, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (134, 100, 3, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (134, 105, 4, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (134, 117, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (134, 119, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (137, 119, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (138, 100, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (139, 102, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (139, 103, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (140, 113, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (140, 116, 3, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (140, 119, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (140, 120, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (144, 106, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (144, 116, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (144, 119, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (144, 152, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (145, 103, 3, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (145, 114, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (146, 102, 3, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (147, 105, 3, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (147, 115, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (150, 104, 2, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (150, 112, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (151, 112, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (151, 115, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (152, 104, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (152, 105, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (153, 101, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (153, 105, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (154, 101, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (154, 102, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (155, 102, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (155, 104, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (156, 101, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (156, 103, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (157, 104, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (157, 112, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (158, 101, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (158, 104, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (158, 120, 3, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (158, 124, 3, NULL)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (160, 103, 1, 50000)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (160, 106, 1, 50000)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (161, 101, 1, 32000)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (161, 104, 1, 45000)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (162, 102, 1, 32000)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (163, 102, 1, 32000)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (163, 112, 1, 42000)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (164, 101, 1, 32000)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (164, 103, 2, 90000)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (164, 103, 4, 180000)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (166, 101, 2, 64000)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (166, 103, 2, 90000)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (166, 113, 2, 84000)
INSERT [dbo].[ChiTietHD] ([MaHoaDon], [MaThucDon], [SoLuongMon], [TongTien]) VALUES (166, 115, 3, 126000)
INSERT [dbo].[DoanhThu] ([maCT], [ngayTruc], [doanhThu]) VALUES (1, CAST(0xF7410B00 AS Date), 10000)
INSERT [dbo].[DoanhThu] ([maCT], [ngayTruc], [doanhThu]) VALUES (2, CAST(0xF7410B00 AS Date), 10000)
INSERT [dbo].[DoanhThu] ([maCT], [ngayTruc], [doanhThu]) VALUES (2, CAST(0xF7410B00 AS Date), 20000)
INSERT [dbo].[DoanhThu] ([maCT], [ngayTruc], [doanhThu]) VALUES (3, CAST(0xF7410B00 AS Date), 10000)
INSERT [dbo].[DoanhThu] ([maCT], [ngayTruc], [doanhThu]) VALUES (3, CAST(0xF7410B00 AS Date), 10001)
SET IDENTITY_INSERT [dbo].[DonGiaoHang] ON 

INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (100, 112, 110, CAST(0x0000AC9001059545 AS DateTime), N'Phường Sơn Kỳ', 15000, 79000, 0, NULL)
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (101, 112, 110, CAST(0x0000AC900125C62F AS DateTime), N'', 15000, 175000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (102, 112, 110, CAST(0x0000AC90012653D4 AS DateTime), N'', 15000, 111000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (103, 112, 110, CAST(0x0000AC9001265D48 AS DateTime), N'', 15000, 420000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (104, 112, 110, CAST(0x0000AC9001266949 AS DateTime), N'', 15000, 60000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (105, 112, 110, CAST(0x0000AC900127B60C AS DateTime), N'', 15000, 150000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (106, 112, 110, CAST(0x0000AC9001294BD8 AS DateTime), N'', 15000, 239000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (107, 112, 110, CAST(0x0000AC91002A9CF5 AS DateTime), N'', 15000, NULL, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (108, 112, 110, CAST(0x0000AC91002B3000 AS DateTime), N'', 15000, NULL, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (109, 112, 110, CAST(0x0000AC91002DADCC AS DateTime), N'', 15000, NULL, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (110, 112, 110, CAST(0x0000AC91004014A4 AS DateTime), N'106 Nguyễn Anh', 15000, NULL, 0, N'Nhanh')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (111, 112, 110, CAST(0x0000AC910040D684 AS DateTime), N'108 Nguyễn Tất', 15000, 251000, 0, N'Nhanh')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (112, 112, 110, CAST(0x0000AC9100CC7C8A AS DateTime), N'206 nggg', 15000, 353000, 0, N'nhanh')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (113, 112, 110, CAST(0x0000AC98005869A4 AS DateTime), N'109 nguyễn Tất thành', 15000, 229000, 0, N'nhanh nha')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (114, 112, 110, CAST(0x0000AC98005AE703 AS DateTime), N'12122', 15000, 539000, 0, N'891')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (115, 112, 110, CAST(0x0000AC98005BE8C9 AS DateTime), N'78', 15000, 192000, 0, N'123')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (116, 112, 110, CAST(0x0000AC98005C517E AS DateTime), N'78', 15000, 192000, 0, N'123')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (117, 112, 110, CAST(0x0000AC98005D62DC AS DateTime), N'1222', 15000, 192000, 0, N'222')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (118, 112, 110, CAST(0x0000AC98005D93E1 AS DateTime), N'w', 15000, 133000, 0, N'qq')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (119, 112, 110, CAST(0x0000AC98005D9BD7 AS DateTime), N'w', 15000, NULL, 0, N'qq')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (120, 112, 110, CAST(0x0000AC98005DF1DD AS DateTime), N'22', 15000, 79000, 0, N'11')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (121, 112, 110, CAST(0x0000AC98005F7D3E AS DateTime), N'3', 15000, 192000, 0, N'1')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (122, 112, 110, CAST(0x0000AC9800616CD2 AS DateTime), N'12', 15000, 133000, 0, N'12')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (123, 112, 110, CAST(0x0000AC9800B82F79 AS DateTime), N'23', 15000, 79000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (124, 112, 110, CAST(0x0000AC9800B867FA AS DateTime), N'dđ', 15000, 192000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (125, 112, 110, CAST(0x0000AC9800BCCC31 AS DateTime), N'444', 15000, 192000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (126, 119, 108, NULL, N'HAHAHAH', NULL, NULL, 0, N'mệch')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (127, 113, 104, CAST(0x0000AC9C00000000 AS DateTime), N'102 HIhi', NULL, NULL, 0, N'ko đá ko đường ko cafe')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (128, 119, 104, CAST(0x0000AC8400000000 AS DateTime), N'd', NULL, NULL, 0, N'2')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (129, 112, 110, CAST(0x0000AC9D00832607 AS DateTime), N'104 Nguyễn Trí Hữu', 15000, 369000, 0, N'T?c d? lên b?n nhé')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (130, 112, 110, CAST(0x0000AC9D0093BDE9 AS DateTime), N'10', 15000, 183000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (131, 112, 110, CAST(0x0000AC9D0095D0A3 AS DateTime), N'12', 15000, 251000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (132, 112, 110, CAST(0x0000AC9D00AA7BDA AS DateTime), N'331', 15000, 111000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (133, 112, 110, CAST(0x0000AC9D00C45710 AS DateTime), N'12', 15000, 310000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (134, 112, 110, CAST(0x0000AC9D00C4A016 AS DateTime), N'12', 15000, 163000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (135, 112, 110, CAST(0x0000AC9D00C6E7BC AS DateTime), N'12', 15000, 192000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (136, 112, 110, CAST(0x0000AC9E0089DE99 AS DateTime), N'109 Lê Trọng Tấn', 15000, 111000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (137, 112, 110, CAST(0x0000AC9E00A4AD87 AS DateTime), N'129 ltt', 15000, 74000, 0, N'as')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (138, 112, 110, CAST(0x0000AC9E011B0C85 AS DateTime), N'109 Dương Đức Hiền', 20000, 146000, 0, N'Ít dá')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (139, 112, 110, CAST(0x0000AC9E011FCD12 AS DateTime), N'12', 20000, 98000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (140, 112, 110, CAST(0x0000AC9E0120FFB0 AS DateTime), N'108 Lê Đức Hải', 20000, 121000, 0, N'ít du?ng')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (141, 112, 110, CAST(0x0000AC9F009AAEAE AS DateTime), N'2', 20000, 216000, 0, N'1')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (142, 112, 110, CAST(0x0000AC9F00CCB3DB AS DateTime), N'12', 20000, 197000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (143, 112, 110, CAST(0x0000AC9F00CCFC27 AS DateTime), N'12', 20000, 197000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (144, 129, 110, CAST(0x0000AC9F00D39347 AS DateTime), N'12', 20000, 104000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (145, 129, 110, CAST(0x0000AC9F00D39F91 AS DateTime), N'12', 20000, 104000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (146, 129, 110, CAST(0x0000AC9F00D3B39F AS DateTime), N'12', 20000, 79000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (147, 112, 110, CAST(0x0000AC9F00D49DE5 AS DateTime), N'12', 20000, 185000, 0, N'22')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (148, 112, 110, CAST(0x0000AC9F00D561BC AS DateTime), N'12', 20000, 133000, 0, N'')
INSERT [dbo].[DonGiaoHang] ([MaGiaoHang], [maKhachHang], [maNhanVien], [NgayGiao], [diaChiGiao], [PhiShip], [tongTien], [TrangThai], [GhiChu]) VALUES (149, 112, 110, CAST(0x0000AC9F00DA4CBE AS DateTime), N'10 Lê Trọng Tấn', 20000, 197000, 0, N'')
SET IDENTITY_INSERT [dbo].[DonGiaoHang] OFF
SET IDENTITY_INSERT [dbo].[DonNhapHang] ON 

INSERT [dbo].[DonNhapHang] ([MaNhapHang], [MaNhanVien], [NhaCungCap], [NgayNhap], [tongNhapHang]) VALUES (100, 114, N'Siêu Thị Nguyên Liệu', CAST(0xB8410B00 AS Date), 0)
INSERT [dbo].[DonNhapHang] ([MaNhapHang], [MaNhanVien], [NhaCungCap], [NgayNhap], [tongNhapHang]) VALUES (105, 114, N'Siêu Thị Nguyên Liệu', CAST(0xB9410B00 AS Date), 0)
INSERT [dbo].[DonNhapHang] ([MaNhapHang], [MaNhanVien], [NhaCungCap], [NgayNhap], [tongNhapHang]) VALUES (110, 115, N'Nguyên Liệu Nguyên An', CAST(0xBA410B00 AS Date), 0)
INSERT [dbo].[DonNhapHang] ([MaNhapHang], [MaNhanVien], [NhaCungCap], [NgayNhap], [tongNhapHang]) VALUES (115, 115, N'Nguyên Liệu Nguyên An', CAST(0xBB410B00 AS Date), 0)
INSERT [dbo].[DonNhapHang] ([MaNhapHang], [MaNhanVien], [NhaCungCap], [NgayNhap], [tongNhapHang]) VALUES (120, 114, N'S2 Shop', CAST(0xBC410B00 AS Date), 0)
INSERT [dbo].[DonNhapHang] ([MaNhapHang], [MaNhanVien], [NhaCungCap], [NgayNhap], [tongNhapHang]) VALUES (125, 114, N'S2 Shop', CAST(0xBD410B00 AS Date), 0)
INSERT [dbo].[DonNhapHang] ([MaNhapHang], [MaNhanVien], [NhaCungCap], [NgayNhap], [tongNhapHang]) VALUES (130, 114, N'S2 Shop', CAST(0xBE410B00 AS Date), 0)
INSERT [dbo].[DonNhapHang] ([MaNhapHang], [MaNhanVien], [NhaCungCap], [NgayNhap], [tongNhapHang]) VALUES (135, 114, N'Nguyên Liệu Pha Chế CHi Gourmet Store', CAST(0xC0410B00 AS Date), 0)
INSERT [dbo].[DonNhapHang] ([MaNhapHang], [MaNhanVien], [NhaCungCap], [NgayNhap], [tongNhapHang]) VALUES (140, 115, N'Nguyên Liệu Pha Chế CHi Gourmet Store', CAST(0xC1410B00 AS Date), 0)
INSERT [dbo].[DonNhapHang] ([MaNhapHang], [MaNhanVien], [NhaCungCap], [NgayNhap], [tongNhapHang]) VALUES (145, 115, N'Nguyên Liệu Pha Chế CHi Gourmet Store', CAST(0xC2410B00 AS Date), 0)
INSERT [dbo].[DonNhapHang] ([MaNhapHang], [MaNhanVien], [NhaCungCap], [NgayNhap], [tongNhapHang]) VALUES (150, 115, N'Siêu Thị Nguyên Liệu', CAST(0xC3410B00 AS Date), 0)
INSERT [dbo].[DonNhapHang] ([MaNhapHang], [MaNhanVien], [NhaCungCap], [NgayNhap], [tongNhapHang]) VALUES (155, 115, N'Siêu Thị Nguyên Liệu', CAST(0xC5410B00 AS Date), 0)
INSERT [dbo].[DonNhapHang] ([MaNhapHang], [MaNhanVien], [NhaCungCap], [NgayNhap], [tongNhapHang]) VALUES (160, 115, N'Siêu Thị Nguyên Liệu', CAST(0xC7410B00 AS Date), 0)
INSERT [dbo].[DonNhapHang] ([MaNhapHang], [MaNhanVien], [NhaCungCap], [NgayNhap], [tongNhapHang]) VALUES (165, 115, N'Siêu Thị Nguyên Liệu', CAST(0xC9410B00 AS Date), 0)
INSERT [dbo].[DonNhapHang] ([MaNhapHang], [MaNhanVien], [NhaCungCap], [NgayNhap], [tongNhapHang]) VALUES (170, 114, N'Công ty cà phê Việt', CAST(0xCD410B00 AS Date), 0)
INSERT [dbo].[DonNhapHang] ([MaNhapHang], [MaNhanVien], [NhaCungCap], [NgayNhap], [tongNhapHang]) VALUES (175, 114, N'Công ty cà phê Việt', CAST(0xCE410B00 AS Date), 0)
INSERT [dbo].[DonNhapHang] ([MaNhapHang], [MaNhanVien], [NhaCungCap], [NgayNhap], [tongNhapHang]) VALUES (180, 114, N'Công ty cà phê Việt', CAST(0xD3410B00 AS Date), 0)
INSERT [dbo].[DonNhapHang] ([MaNhapHang], [MaNhanVien], [NhaCungCap], [NgayNhap], [tongNhapHang]) VALUES (185, 114, N'Công ty cà phê Việt', CAST(0xD4410B00 AS Date), 0)
SET IDENTITY_INSERT [dbo].[DonNhapHang] OFF
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH001     ', N'Cà phê bột', 240000, N'Kg', 100, N'CF001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH002     ', N'Sữa đặc', 30000, N'Lon', 24, N'CF001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH003     ', N'Đường', 30000, N'Kg', 90, N'CF001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH004     ', N'Đá', 50000, N'Bao', 15, N'CF001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH005     ', N'Sữa tươi không đường', 210000, N'Thùng', 23, N'CF001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH006     ', N'Bột Onemix', 140000, N'Kg', 90, N'CF001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH007     ', N'Bột cacao', 220000, N'Kg', 34, N'CF001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH008     ', N'Bột socola', 320000, N'Kg', 38, N'CF001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH009     ', N'Trà nhài', 160000, N'Kg', 50, N'CF001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH010     ', N'Trà sen', 170000, N'Kg', 98, N'CF001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH011     ', N'Hạt Cafe', 270000, N'Kg', 291, N'CF002     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH012     ', N'Kem Rich', 270000, N'Kg', 18, N'CF002     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH013     ', N'Kem Base', 270000, N'Kg', 9, N'CF002     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH014     ', N'Kem Vani', 270000, N'Kg', 0, N'CF002     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH015     ', N'Bột Matcha', 300000, N'Kg', 92, N'CF002     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH016     ', N'Sốt dark chocolate', 370000, N'Kg', 129, N'CF002     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH017     ', N'Sốt caramel', 250000, N'Kg', 91, N'CF002     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH018     ', N'Siro các vị', 150000, N'Kg', 0, N'CF002     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH019     ', N'Sữa chua không đường', 270000, N'Kg', 10, N'ST001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH020     ', N'Bột onemix smoothies', 240000, N'Kg', 218, N'ST001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH021     ', N'Onemix Vanilla', 230000, N'Kg', 92, N'ST001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH022     ', N'Mứt hoa quả', 300000, N'H?p', 40, N'ST001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH023     ', N'Sốt chocolate', 290000, N'Kg', 80, N'ST001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH024     ', N'Bánh Ritz', 120000, N'H?p', 120, N'ST001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH025     ', N'Bánh Oreo', 170000, N'Thùng', 110, N'ST001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH026     ', N'Các loại hoa, quả', 550000, N'Thùng', 90, N'JU001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH027     ', N'Muối', 30000, N'B?ch', 20, N'JU001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH028     ', N'Sữa chua có đường', 270000, N'Thùng', 30, N'ST002     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH029     ', N'Các loại trái cây', 550000, N'Thùng', 70, N'ST002     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH030     ', N'Các loại trà túi lọc', 200000, N'Thùng', 40, N'TE001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH031     ', N'Nguyên liệu làm bánh kem', 250000, N'H?p', 120, N'TE001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH032     ', N'Đường kính', 60000, N'Kg', 130, N'OT001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH033     ', N'Rau củ trang trí', 80000, N'Kg', 110, N'OT001     ')
INSERT [dbo].[HangHoa] ([MaHang], [TenHang], [Gia], [DVT], [SLTon], [MaLoaiHang]) VALUES (N'HH034     ', N'Các loại kẹo', 70000, N'Kg', 50, N'OT001     ')
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (100, 102, 122, 106, CAST(0xDF410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (101, 103, 123, 106, CAST(0xDF410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (102, 102, 124, 106, CAST(0xDF410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (103, 104, 125, 106, CAST(0xDF410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (104, 106, 126, 106, CAST(0xDF410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (105, 106, 127, 106, CAST(0xDF410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (106, 104, 110, 106, CAST(0xDF410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (107, 105, 114, 106, CAST(0xDF410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (108, 103, 123, 106, CAST(0xDF410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (109, 103, 125, 106, CAST(0xDF410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (110, 105, 128, 106, CAST(0xDF410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (111, 104, 128, 106, CAST(0xDF410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (112, 107, 122, 106, CAST(0xDF410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (113, 107, 135, 109, CAST(0xCC410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (114, 107, 135, 109, CAST(0xEA410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (115, 107, 135, 109, CAST(0xEA410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (116, 107, 135, 109, CAST(0xEA410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (117, 107, 135, 109, CAST(0xEA410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (127, 107, 135, 109, CAST(0xF1410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (128, 107, 135, 109, CAST(0xF1410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (131, 107, 135, 109, CAST(0xF1410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (134, 107, 135, 109, CAST(0xF2410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (136, 102, 122, 103, CAST(0x5E410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (137, 102, 122, 103, CAST(0x5E410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (138, 105, 136, 102, CAST(0x9C410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (139, 107, 135, 109, CAST(0xF3410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (140, 107, 153, 109, CAST(0xF3410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (141, 106, 150, 107, CAST(0xF5410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (142, 107, 153, 109, CAST(0xF5410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (143, 107, 153, 109, CAST(0xF6410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (144, 107, 153, 109, CAST(0xF7410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (145, 107, 153, 109, CAST(0xF7410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (146, 107, 153, 109, CAST(0xF7410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (147, 107, 112, 109, CAST(0xF7410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (148, 105, 112, 105, CAST(0xF7410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (149, 103, 111, 109, CAST(0xF9410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (150, 107, 112, 109, CAST(0xFA410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (151, 107, 112, 109, CAST(0xFA410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (152, 107, 112, 109, CAST(0xFA410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (153, 107, 112, 109, CAST(0xFA410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (154, 107, 112, 109, CAST(0xFA410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (155, 107, 112, 109, CAST(0xFA410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (156, 107, 112, 109, CAST(0xFA410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (157, 107, 112, 109, CAST(0xFA410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (158, 107, 112, 109, CAST(0xFA410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (159, 107, 112, 109, CAST(0xFA410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (160, 107, 112, 109, CAST(0xFA410B00 AS Date), 100000)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (161, 107, 112, 109, CAST(0xFA410B00 AS Date), 77000)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (162, 107, 112, 109, CAST(0xFA410B00 AS Date), 32000)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (163, 107, 112, 109, CAST(0xFA410B00 AS Date), 74000)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (164, 107, 112, 109, CAST(0xFA410B00 AS Date), 302000)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (165, 107, 115, 102, CAST(0xFA410B00 AS Date), NULL)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaBan], [MaKhachHang], [MaNhanVien], [ThoiGianVao], [ThanhToan]) VALUES (166, 107, 112, 109, CAST(0xFA410B00 AS Date), 364000)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
INSERT [dbo].[HOTROKHACHHANG] ([MAKHACHHANG], [GMAIL], [SDT], [VANDEHOTRO]) VALUES (112, N'nguyenvanhao@gmail.com', N'0955213234', N'')
INSERT [dbo].[HOTROKHACHHANG] ([MAKHACHHANG], [GMAIL], [SDT], [VANDEHOTRO]) VALUES (112, N'nguyenvanhao@gmail.com', N'0955213234', N'hello')
INSERT [dbo].[HOTROKHACHHANG] ([MAKHACHHANG], [GMAIL], [SDT], [VANDEHOTRO]) VALUES (112, N'nguyenvanhao@gmail.com', N'', N'kkk')
INSERT [dbo].[HOTROKHACHHANG] ([MAKHACHHANG], [GMAIL], [SDT], [VANDEHOTRO]) VALUES (129, N'hovanviet@gmail.com', N'0912307225', N'')
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (110, N'Nguyễn VănTâm', CAST(0x27240B00 AS Date), N'Nam', N'nguyenvantam@gmail.com', N'0927738221', 1, N'206 Lê Trọng Tấn', 20, N'KH1.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (111, N'Trần ThịThư', CAST(0xA5220B00 AS Date), N'Nữ', N'tranthianhthu@gmail.com', N'0945323321', 1, N'123 Lê Trọng Tấn', 10, N'KH2.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (112, N'Nguyễn Văn Hảo', CAST(0xD7240B00 AS Date), N'Nam', N'nguyenvanhao@gmail.com', N'0955213234', 1, N'24 Lê Trọng Tấn', 100, N'KH1.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (113, N'Nguyễn Văn Long', CAST(0x5B230B00 AS Date), N'Nam', N'nguyenvanlong@gmail.com', N'0956432312', 2, N'35 Quận 1', 210, N'KH1.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (114, N'Nguyễn Văn Tân', CAST(0x20230B00 AS Date), N'Nam', NULL, N'0912562312', 3, N'24 Quận 10', 90, N'KH1.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (115, N'Nguyễn Văn Tuấn', CAST(0x40230B00 AS Date), N'Nam', NULL, N'0912456733', 3, N'13 Quận 3', 70, N'KH1.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (116, N'Hồng Bá Ngọc', CAST(0x9F230B00 AS Date), N'Nam', NULL, N'0912612892', 3, N'52 Quận Bình Thạnh', 50, N'KH1.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (117, N'Nguyễn Thị Anh', CAST(0xBE230B00 AS Date), N'Nữ', NULL, N'0388121221', 3, N'25 Quận Gò Vấp', 30, N'KH2.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (118, N'Nguyễn Thị Thảo', CAST(0x79220B00 AS Date), N'Nữ', N'nguyenthithao@gmail.com', N'0923881921', 2, N'78 Tân Kỳ Tân Quý', 300, N'KH2.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (119, N'Hồ Văn Tú', CAST(0x2B210B00 AS Date), N'Nam', N'hovantu@gmail.com', N'0293718291', 3, N'34 Cộng Hòa', 170, N'KH1.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (120, N'Lương Minh Tâm', CAST(0x01220B00 AS Date), N'Nam', N'luongminhtam@gmail.com', N'0283012812', 3, N'14 Cộng Hòa', 120, N'KH1.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (121, N'Kim Bá Long', CAST(0x96200B00 AS Date), N'Nam', NULL, N'0821267311', 3, N'15 Cộng Hòa', 90, N'KH1.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (122, N'Lương Thị Tuyết', CAST(0xB4200B00 AS Date), N'Nữ', NULL, N'0283126121', 3, N'150 Cộng Hòa', 0, N'KH2.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (123, N'Hồng Thị Thư', CAST(0xD21F0B00 AS Date), N'Nữ', NULL, N'0927311212', 3, N'258 Cộng Hòa', 0, N'KH2.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (124, N'Phan Thị Hồng', CAST(0xD21F0B00 AS Date), N'Nữ', NULL, N'0863122122', 3, N'26 Cộng Hòa', 80, N'KH2.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (125, N'Phan Văn Bé', CAST(0xDB1F0B00 AS Date), N'Nam', N'phanvanbe@gmail.com', N'0821216728', 2, N'78 Quận 1', 350, N'KH1.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (126, N'Nguyễn Minh Thư', CAST(0xC21F0B00 AS Date), N'Nữ', N'nguyenminhthu@gmail.com', N'0927112122', 2, N'82 Lê Trọng Tấn', 320, N'KH2.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (127, N'Nguyễn Trần Công Long', CAST(0x67210B00 AS Date), N'Nam', N'nguyentranconglong@gmail.com', N'0923781212', 2, N'526 Cộng Hòa', 430, N'KH1.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (128, N'Long Thị Loan', CAST(0xCB220B00 AS Date), N'Nữ', N'longthiloan@gmail.com', N'0921271822', 2, N'125 Lê Trọng Tấn', 390, N'KH2.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (129, N'Hồ Văn Việt', CAST(0x36240B00 AS Date), N'Nam', N'hovanviet@gmail.com', N'0912307225', 2, N'70 Cộng Hòa', 510, N'KH1.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (130, N'Phan Văn Tâm', CAST(0x54240B00 AS Date), N'Nam', NULL, N'0912712231', 3, N'99 Cộng Hòa', 80, N'KH1.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (131, N'Nguyễn Việt Quốc', CAST(0x74240B00 AS Date), N'Nam', N'vietquoc@gmail.com', N'0933718223', 2, N'125 Quận Tân Phú', 290, N'KH1.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (132, N'Trần Anh Thư', CAST(0xD7210B00 AS Date), N'Nữ', N'anhthu@gmail.com', N'0927371722', 3, N'167 Quận 2', 30, N'KH2.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (133, N'Trần Anh Tuấn', CAST(0xE1210B00 AS Date), N'Nam', NULL, N'0912883637', 3, N'29 Quận 12', 0, N'KH1.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (134, N'Hồ Thị Tâm', CAST(0x69200B00 AS Date), N'Nữ', N'hoThiTam@gmail.com', N'0826812812', 2, N'49 Nguyễn Bỉnh Khiêm', 490, N'KH2.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (135, N'Hồng Văn Đức', CAST(0x07240B00 AS Date), N'Nam', N'tttuan2703@gmail.com', N'0912348920', 1, N'140 Tân Kỳ Tân Quý', 0, N'KH1.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (143, N'121211212', CAST(0xBA400B00 AS Date), N'Nam', N'18219290@gmail.com', N'2121212123', 1, N'0912912', 0, N'IMG_6083.JPG')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (145, N'qqqq', CAST(0x9B400B00 AS Date), N'Nam', N'hhkuuqwo@gmail.com', N'1212121212', 1, N'91920120', 0, N'D:\CLB\SINH_HOAT(09272000)\IMG_6083.JPG')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (146, N'111111', CAST(0x9B400B00 AS Date), N'Nam', N'111111111@gmail.com', N'1111111111', 1, N'11111111', 3, NULL)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (147, N'1111111111', CAST(0x9B400B00 AS Date), N'Nam', N'1111111111@gmail.com', N'1111111111', 1, N'111111111', 3, NULL)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (148, N'111111111', CAST(0x9B400B00 AS Date), N'Nam', N'111111111111@gmail.com', N'1111111111', 1, N'1111111', 3, NULL)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (149, N'2222222', CAST(0xBA400B00 AS Date), N'Nam', N'2222222222@gmail.com', N'2222222222', 1, N'2222222', 3, NULL)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (150, N'2222222', CAST(0xBA400B00 AS Date), N'Nam', N'2222222@gmail.com', N'2222222212', 1, N'1111111', 3, N'D:\CLB\SINH_HOAT(09272000)\IMG_6082.JPG')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (151, N'Nguyễn Bích Hữu', CAST(0x07240B00 AS Date), N'Nam', N'nbh0928@gmail.com', N'1228912798', 1, N'106 Nguyễn Quý Anh', 3, N'D:\CLB\SINH_HOAT(09272000)\IMG_6328.JPG')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (152, N'Nguyễn Văn B', CAST(0xC2400B00 AS Date), N'Nam', N'hajskasjsgd@gmail.com', N'1290128128', 1, N'8102', 3, N'D:\CLB\Sinh ho?t 1-11-19\g.jpg')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (153, N'Thảo', CAST(0xEE410B00 AS Date), N'Nữ', N'hihi@gmail.com', N'0978154394', 2, N'123 Nguyễn Văn A', 0, NULL)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (154, N'hihi', CAST(0xEE410B00 AS Date), N'Nữ', N'hihi', N'', 2, N'', 0, NULL)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (155, N'kkk', CAST(0xE7410B00 AS Date), N'', N'', N'', 1, N'', 0, NULL)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (156, N'Khách', CAST(0xE7410B00 AS Date), N'Nữ', N'hihi@gmail.com', N'123', 1, NULL, 3, NULL)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email], [DienThoai], [MaLoaiKH], [DiaChi], [DiemTichLuy], [HinhAnh]) VALUES (157, N'Trần Thị Bích Ngân', CAST(0x5D240B00 AS Date), N'Nam', N'hajsjask@gmail.com', N'0912839121', 1, N'140 Lê Trọng Tấn', 3, N'D:\CLB\SINH_HOAT(09272000)\IMG_6086.JPG')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
INSERT [dbo].[LoaiHangHoa] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'CF002     ', N'Cà phê máy')
INSERT [dbo].[LoaiHangHoa] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'CF001     ', N'Cà phê truyền thống')
INSERT [dbo].[LoaiHangHoa] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'OT001     ', N'Các loại nguyên liệu khác')
INSERT [dbo].[LoaiHangHoa] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'TE001     ', N'Các loại trà')
INSERT [dbo].[LoaiHangHoa] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'ST001     ', N'Đồ uống đá xoay và sinh tố Smoothies')
INSERT [dbo].[LoaiHangHoa] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'JU001     ', N'Nước ép trái cây')
INSERT [dbo].[LoaiHangHoa] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'ST002     ', N'Sinh tố hoa quả')
SET IDENTITY_INSERT [dbo].[LoaiKhachHang] ON 

INSERT [dbo].[LoaiKhachHang] ([MaLoaiKH], [TenLoaiKH], [UuDai], [HanSuDung], [DieuKien], [MoTa]) VALUES (1, N'Khách hàng thành viên', 0.03, 15, 250, N'Khi khách hàng tích lũy đủ 250 điểm sẽ được cấp thẻ thành viên quán sẽ được nhận ưu đãi giảm giá 3% mỗi ngày(tối đa 15 ngày), chỉ áp dụng cho những thực đơn đang khuyến mãi. Lưu ý: không được sử dụng đồng thời các khuyến mãi khác.')
INSERT [dbo].[LoaiKhachHang] ([MaLoaiKH], [TenLoaiKH], [UuDai], [HanSuDung], [DieuKien], [MoTa]) VALUES (2, N'Khách hàng thân thiết', 0.07, 30, 500, N'Khi khách hàng tích lũy đủ 500 điểm sẽ được cấp thẻ khách hàng thân thiết nhận ưu đãi giảm 7% mỗi ngày(tối đa 30 ngày), áp dụng được nhiều món thực đơn hơn khách hàng thành viên. Lưu ý: không được sử dụng đồng các khuyến mãi khác.')
INSERT [dbo].[LoaiKhachHang] ([MaLoaiKH], [TenLoaiKH], [UuDai], [HanSuDung], [DieuKien], [MoTa]) VALUES (3, N'Khách hàng bình thường', 0, 0, 0, N'Khách hàng chưa đủ điểm tích lũy')
SET IDENTITY_INSERT [dbo].[LoaiKhachHang] OFF
INSERT [dbo].[LoaiThucDon] ([MaLoaiTD], [TenLoaiTD], [SoLuongMon]) VALUES (N'L01       ', N'CÀ PHÊ VIỆT NAM', NULL)
INSERT [dbo].[LoaiThucDon] ([MaLoaiTD], [TenLoaiTD], [SoLuongMon]) VALUES (N'L02       ', N'TRÀ TRÁI CÂY', NULL)
INSERT [dbo].[LoaiThucDon] ([MaLoaiTD], [TenLoaiTD], [SoLuongMon]) VALUES (N'L03       ', N'TRÀ SỮA MACCHIATO', NULL)
INSERT [dbo].[LoaiThucDon] ([MaLoaiTD], [TenLoaiTD], [SoLuongMon]) VALUES (N'L04       ', N'THỨC UỐNG TRÁI CÂY', NULL)
INSERT [dbo].[LoaiThucDon] ([MaLoaiTD], [TenLoaiTD], [SoLuongMon]) VALUES (N'L05       ', N'MATCHA - SÔCÔLA', NULL)
INSERT [dbo].[LoaiThucDon] ([MaLoaiTD], [TenLoaiTD], [SoLuongMon]) VALUES (N'L06       ', N'BÁNH & SNACK', NULL)
INSERT [dbo].[LoaiThucDon] ([MaLoaiTD], [TenLoaiTD], [SoLuongMon]) VALUES (N'L07       ', N'CÀ PHÊ MÁY', NULL)
INSERT [dbo].[LoaiThucDon] ([MaLoaiTD], [TenLoaiTD], [SoLuongMon]) VALUES (N'L08       ', N'COLD BREW', NULL)
INSERT [dbo].[LoaiThucDon] ([MaLoaiTD], [TenLoaiTD], [SoLuongMon]) VALUES (N'L09       ', N'CÀ PHÊ GÓI
', NULL)
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (100, N'Nguyễn Công Trung', N'Nam', CAST(0x8E1F0B00 AS Date), N'19 Quận Gò Vấp', 973838312, N'Quản lý', 10000000, CAST(0xB33D0B00 AS Date), N'nv1.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (101, N'Hồ Tấn Tài', N'Nam', CAST(0x8E1F0B00 AS Date), N'89 Quận 7', 912738192, N'Quản lý', 10000000, CAST(0x1E3F0B00 AS Date), N'nv2.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (102, N'Nguyễn Thanh Tâm', N'Nữ', CAST(0x8E1F0B00 AS Date), N'19 Lê Trọng Tấn', 921281823, N'Thu Ngân', 6000000, CAST(0x1E400B00 AS Date), N'nv3.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (103, N'Nguyễn Anh Thư', N'Nữ', CAST(0x8E1F0B00 AS Date), N'108 Lê Trọng Tấn', 826734712, N'Thu Ngân', 6000000, CAST(0xE23F0B00 AS Date), N'nv4.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (104, N'Trần Công Phượng', N'Nam', CAST(0x8E1F0B00 AS Date), N'190 Cộng hòa', 912712844, N'Thu Ngân', 6000000, CAST(0xB43E0B00 AS Date), N'nv5.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (105, N'Nguyễn Nhã Phượng', N'Nam', CAST(0x8E1F0B00 AS Date), N'128 Cộng Hòa', 293128123, N'Phục vụ', 6500000, CAST(0x3E3F0B00 AS Date), N'nv6.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (106, N'Hồng Anh Thư', N'Nữ', CAST(0x8E1F0B00 AS Date), N'89 Tân Kỳ Tân Quý', 823363711, N'Phục vụ', 6500000, CAST(0x64400B00 AS Date), N'nv7.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (107, N'Cao Mỹ Trâm', N'Nữ', CAST(0x8E1F0B00 AS Date), N'218 Tân Kỳ Tân Quý', 293773811, N'Phục vụ', 6500000, CAST(0x0A400B00 AS Date), N'nv8.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (108, N'Lương Bá Huy', N'Nam', CAST(0x8E1F0B00 AS Date), N'68 Nguyễn Cửu Đàm', 921287128, N'Phục vụ', 6500000, CAST(0xC03D0B00 AS Date), N'nv9.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (109, N'Hồ Anh Thư', N'Nữ', CAST(0x8E1F0B00 AS Date), N'122 Nguyễn Cửu Đàm', 912283738, N'Phục vụ', 6500000, CAST(0x30400B00 AS Date), N'nv10.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (110, N'Nguyễn Anh Tuấn', N'Nam', CAST(0x8E1F0B00 AS Date), N'119 Nguyễn Cửu Đàm', 912733611, N'Giao hàng', 6500000, CAST(0x78400B00 AS Date), N'nv11.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (111, N'Trần Đức Huy', N'Nam', CAST(0x8E1F0B00 AS Date), N'79 Dương Đức Hiền', 823738112, N'Giao hàng', 6500000, CAST(0x5B400B00 AS Date), N'nv12.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (112, N'Phan Phi Long', N'Nam', CAST(0x8E1F0B00 AS Date), N'182 Lê Trọng Tấn', 928373711, N'Giao hàng', 6500000, CAST(0x0C3F0B00 AS Date), N'nv13.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (113, N'Lương Văn Tân', N'Nam', CAST(0x8E1F0B00 AS Date), N'89 Nguyễn Quý Anh', 721912223, N'Pha chế', 7000000, CAST(0x79400B00 AS Date), N'nv14.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (114, N'Lê Đức Tiến', N'Nam', CAST(0x8E1F0B00 AS Date), N'102 Nguyễn Quý Anh', 912773812, N'Pha chế', 7000000, CAST(0x4E410B00 AS Date), N'nv15.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (115, N'Nguyễn Công Thuấn', N'Nam', CAST(0x8E1F0B00 AS Date), N'102 Nguyễn Quý Anh', 912783346, N'Pha chế', 7000000, CAST(0x1E400B00 AS Date), N'nv16.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (116, N'Nguyễn Công Trung', N'Nam', CAST(0x8E1F0B00 AS Date), N'19 Quận Gò Vấp', 973838312, N'Quản lý', 10000000, CAST(0xB33D0B00 AS Date), N'nv17.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (117, N'Hồ Tấn Tài', N'Nam', CAST(0x8E1F0B00 AS Date), N'89 Quận 7', 912738192, N'Quản lý', 10000000, CAST(0x1E3F0B00 AS Date), N'nv18.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (118, N'Hồ Tấn Tài', N'Nam', CAST(0x8E1F0B00 AS Date), N'89 Quận 7', 912738192, N'Quản lý', 10000000, CAST(0x1E3F0B00 AS Date), N'nv2.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (119, N'Nguyễn Công Trung', N'Nam', CAST(0x8E1F0B00 AS Date), N'19 Quận Gò Vấp', 973838312, N'Quản lý', 10000000, CAST(0xB33D0B00 AS Date), N'nv1.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (120, N'Nguyễn Công Trung', N'Nam', CAST(0x8E1F0B00 AS Date), N'19 Quận Gò Vấp', 973838312, N'Quản lý', 10000000, CAST(0xB33D0B00 AS Date), N'nv1.jpg')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Luong], [NgayVaoLam], [HinhAnh]) VALUES (121, N'Nguyễn Công Hậu', N'Nam', CAST(0x901F0B00 AS Date), N'19 Quận ', 973838323, N'Giao hàng', 40000000, CAST(0xAF3D0B00 AS Date), N'nv4.jpg')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (1, 100, CAST(0xB7410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (1, 100, CAST(0xB9410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (1, 101, CAST(0xBA410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (1, 102, CAST(0xB8410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (1, 102, CAST(0xBA410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (1, 103, CAST(0xB7410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (1, 104, CAST(0xB8410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (1, 106, CAST(0xB9410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (1, 109, CAST(0xB8410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (1, 109, CAST(0xBA410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (1, 110, CAST(0xB7410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (1, 113, CAST(0xB7410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (2, 100, CAST(0xB9410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (2, 101, CAST(0xB7410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (2, 103, CAST(0xB8410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (2, 104, CAST(0xB7410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (2, 108, CAST(0xB7410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (2, 108, CAST(0xBA410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (2, 110, CAST(0xB8410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (3, 101, CAST(0xB9410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (3, 102, CAST(0xB8410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (3, 105, CAST(0xB7410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (3, 105, CAST(0xB8410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (3, 107, CAST(0xBA410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (3, 110, CAST(0xBA410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (3, 111, CAST(0xB8410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (3, 112, CAST(0xB7410B00 AS Date))
INSERT [dbo].[PhanCong] ([maCT], [maNV], [ngay]) VALUES (3, 112, CAST(0xB8410B00 AS Date))
INSERT [dbo].[taiKhoanCongTy] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [ngayTao], [Quyen]) VALUES (104, N'2', N'123', CAST(0xE9410B00 AS Date), N'NVThuNgan')
INSERT [dbo].[taiKhoanCongTy] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [ngayTao], [Quyen]) VALUES (109, N'3', N'123', CAST(0xE9410B00 AS Date), N'NVOrder')
INSERT [dbo].[taiKhoanCongTy] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [ngayTao], [Quyen]) VALUES (115, N'1', N'123', CAST(0x8F410B00 AS Date), N'QuanLy')
INSERT [dbo].[taiKhoanKhachHang] ([maKH], [tenTaiKhoan], [matKhau], [ngayTao]) VALUES (112, N'taikhoan1           ', N'123            ', CAST(0xDF410B00 AS Date))
INSERT [dbo].[taiKhoanKhachHang] ([maKH], [tenTaiKhoan], [matKhau], [ngayTao]) VALUES (129, N'taikhoanvip         ', N'123            ', CAST(0xF8410B00 AS Date))
INSERT [dbo].[taiKhoanKhachHang] ([maKH], [tenTaiKhoan], [matKhau], [ngayTao]) VALUES (135, N'123456              ', N'123456         ', CAST(0xDF410B00 AS Date))
INSERT [dbo].[taiKhoanKhachHang] ([maKH], [tenTaiKhoan], [matKhau], [ngayTao]) VALUES (146, N'1111111             ', N'123456         ', CAST(0xEA410B00 AS Date))
INSERT [dbo].[taiKhoanKhachHang] ([maKH], [tenTaiKhoan], [matKhau], [ngayTao]) VALUES (147, N'11111111            ', N'123456         ', CAST(0xEA410B00 AS Date))
INSERT [dbo].[taiKhoanKhachHang] ([maKH], [tenTaiKhoan], [matKhau], [ngayTao]) VALUES (148, N'1234590             ', N'123456         ', CAST(0xEA410B00 AS Date))
INSERT [dbo].[taiKhoanKhachHang] ([maKH], [tenTaiKhoan], [matKhau], [ngayTao]) VALUES (149, N'102912001           ', N'123456         ', CAST(0xEA410B00 AS Date))
INSERT [dbo].[taiKhoanKhachHang] ([maKH], [tenTaiKhoan], [matKhau], [ngayTao]) VALUES (150, N'129012192           ', N'123456         ', CAST(0xEA410B00 AS Date))
INSERT [dbo].[taiKhoanKhachHang] ([maKH], [tenTaiKhoan], [matKhau], [ngayTao]) VALUES (151, N'nbh001              ', N'123456         ', CAST(0xEA410B00 AS Date))
INSERT [dbo].[taiKhoanKhachHang] ([maKH], [tenTaiKhoan], [matKhau], [ngayTao]) VALUES (152, N'tuan2019            ', N'12345678       ', CAST(0xF2410B00 AS Date))
INSERT [dbo].[taiKhoanKhachHang] ([maKH], [tenTaiKhoan], [matKhau], [ngayTao]) VALUES (156, N'admin               ', N'123            ', CAST(0xF7410B00 AS Date))
INSERT [dbo].[taiKhoanKhachHang] ([maKH], [tenTaiKhoan], [matKhau], [ngayTao]) VALUES (157, N'taikhoan2           ', N'123456         ', CAST(0xF9410B00 AS Date))
SET IDENTITY_INSERT [dbo].[ThucDon] ON 

INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (100, N'BẠC SỈU', 32000, N'Cốc', N'bac_sieu.jpg', N'Theo chân những người gốc Hoa đến định cư tại Sài Gòn, Bạc sỉu là cách gọi tắt của "Bạc tẩy sỉu phé" trong tiếng Quảng Đông, chính là: Ly sữa trắng kèm một chút cà phê.', N'L01       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (101, N'CÀ PHÊ ĐEN', 32000, N'Cốc', N'cafe-den.jpg', N'Một tách cà phê đen thơm ngào ngạt, phảng phất mùi cacao là món quà tự thưởng tuyệt vời nhất cho những ai mê đắm tinh chất nguyên bản nhất của cà phê. Một tách cà phê trầm lắng, thi vị giữa dòng đời vồn vã.', N'L01       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (102, N'CÀ PHÊ SỮA
', 32000, N'Cốc', N'cafe-sua.jpg', N'Cà phê phin kết hợp cũng sữa đặc là một sáng tạo đầy tự hào của người Việt, được xem món uống thương hiệu của Việt Nam.', N'L01       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (103, N'TRÀ OOLONG VẢI', 45000, N'Cốc', N'olongvai.jpg', N'Lớp trà oolong đã man mát, nhưng sẽ vị càng thêm vị khi có hương bưởi cùng những tép bưởi mọng nước đi kèm - cho bạn 1 cách thưởng thức đầy thú vị. Cùng đánh thức vị giác, khởi động 1 ngày tươi tắn cùng hương vị mới lạ này nhé!', N'L02       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (104, N'TRÀ OOLONG HẠT SEN
', 45000, N'Cốc', N'hatsen.jpg', N'Sự kết hợp của Trà Oolong hương thơm nhẹ, vị nồng hậu cùng Hạt sen tươi mềm có vị ngọt, sáp, vừa ngon miệng vừa có tác dụng an thần, tốt cho cơ thể.', N'L02       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (105, N'TRÀ ĐÀO CAM SẢ
', 45000, N'Cốc', N'daocamsa.jpg', N'Vị thanh ngọt của đào Hy Lạp, vị chua dịu của Cam Vàng nguyên vỏ, vị chát của trà đen tươi được ủ mới mỗi 4 tiếng, cùng hương thơm nồng đặc trưng của sả chính là điểm sáng làm nên sức hấp dẫn của thức uống này. Sản phẩm hiện có 2 phiên bản Nóng và Lạnh phù hợp cho mọi thời gian trong năm.', N'L02       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (106, N'TRÀ OOLONG BƯỞI MẬT ONG
', 50000, N'Cốc', N'camsa.jpg', N'Lớp trà oolong đã man mát, nhưng sẽ vị càng thêm vị khi có hương bưởi cùng những tép bưởi mọng nước đi kèm - cho bạn 1 cách thưởng thức đầy thú vị. Cùng đánh thức vị giác, khởi động 1 ngày tươi tắn cùng hương vị mới lạ này nhé!', N'L02       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (112, N'Trà Sữa Khoai Môn
', 42000, N'Cốc', N'tskhoaimon.jpg', N'Theo chân những người gốc Hoa đến định cư tại Sài Gòn, Bạc sỉu là cách gọi tắt của "Bạc tẩy sỉu phé" trong tiếng Quảng Đông, chính là: Ly sữa trắng kèm một chút cà phê.', N'L03       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (113, N'TRÀ MATCHA MACCHIATO
', 42000, N'Cốc', N'matcha.jpg', N'Bột trà xanh Matcha thơm lừng hảo hạng cùng lớp Macchiato béo ngậy là một sự kết hợp tuyệt vời.
', N'L03       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (114, N'TRÀ XOÀI MACCHIATO
', 42000, N'Cốc', N'macca.jpg', N'Một ngày thật là vàng tươi và tràn đầy sức sống cùng Trà Xoài Macchiato, tại sao không?', N'L03       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (115, N'TRÀ SỮA MẮC CA TRÂN CHÂU TRẮNG
', 42000, N'Cốc', N'macca.jpg', N'Một ngày thật là vàng tươi và tràn đầy sức sống cùng Trà Xoài Macchiato, tại sao không?', N'L03       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (116, N'BÁNH MÌ CHÀ BÔNG PHÔ MAI
', 32000, N'Cái', N'chabong.jpg', N'Chắc chắn bạn sẽ không thể cưỡng lại chiếc bánh bông lan tơi xốp, mềm mịn, vị ngọt dịu kết hợp với trứng muối và chà bông đậm đà, cân bằng vị giác.', N'L06       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (117, N'Bánh mì que
', 12000, N'Cái', N'bmque.jpg', N'Chắc chắn bạn sẽ không thể cưỡng lại chiếc bánh bông lan tơi xốp, mềm mịn, vị ngọt dịu kết hợp với trứng muối và chà bông đậm đà, cân bằng vị giác.', N'L06       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (118, N'BÔNG LAN TRỨNG MUỐI
', 19000, N'Cái', N'bonglan.jpg', N'Chắc chắn bạn sẽ không thể cưỡng lại chiếc bánh bông lan tơi xốp, mềm mịn, vị ngọt dịu kết hợp với trứng muối và chà bông đậm đà, cân bằng vị giác.', N'L06       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (119, N'MATCHA ĐÁ XAY
', 59000, N'Cốc', N'matcha.jpg', N'Matcha thanh, nhẫn, và đắng nhẹ được nhân đôi sảng khoái khi uống lạnh. Nhấn nhá thêm những nét bùi béo của kem và sữa. Gây thương nhớ vô cùng!

', N'L05       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (120, N'SÔ-CÔ-LA ĐÁ
', 55000, N'Cốc', N'socolada.jpg', N'Cacao nguyên chất hoà cùng sữa tươi béo ngậy. Vị ngọt tự nhiên, không gắt cổ, để lại một chút đắng nhẹ, cay cay trên đầu lưỡi.

', N'L05       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (124, N'cam tươi sấy dẻo
', 42000, N'Bịch', N'camsay.jpg', N'Cam tươi sấy khô dẻo dai, ngọt bùi và chua thanh đầy thú vị. Món ăn vặt "healthy" kích thích vị giác cho bạn khi buồn miệng.', N'L06       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (127, N'MATCHA LATTE
', 59000, N'Cốc', N'matcha.jpg', N'Với màu xanh mát mắt của bột trà Matcha, vị ngọt nhẹ nhàng, pha trộn cùng sữa tươi và lớp foam mềm mịn, Matcha Latte là thức uống yêu thích của tất cả mọi người khi ghé The Coffee House.

', N'L05       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (128, N'SÔ-CÔ-LA ĐÁ XAY
', 59000, N'Cốc', N'socoladaxay.jpg', N'Vị đắng của cà phê kết hợp cùng vị cacao ngọt ngàocủa sô-cô-la, vị sữa tươi ngọt béo, đem đến trải nghiệm vị giác cực kỳ thú vị.

', N'L05       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (129, N'PHÚC BỒN TỬ CAM ĐÁ XAY
', 59000, N'Cốc', N'phucbontu.jpg', N'òa quyện thêm hương vị chua chua, ngọt ngọt từ trái cam tươi và trái phúc bồn tử 100% tự nhiên, để cho ra một hương vị thanh mát, kích thích vị giác đầy thú vị ngay từ lần đầu thưởng thức.', N'L04       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (134, N'SINH TỐ VIỆT QUẤT
', 59000, N'Cốc', N'tskhoaimon.jpg', N'Mứt Việt Quất chua thanh, ngòn ngọt, phối hợp nhịp nhàng với dòng sữa chua bổ dưỡng. Là món sinh tố thơm ngon mà cả đầu lưỡi và làn da đều thích.

', N'L04       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (138, N'Cà phê Lúa Mạch đá', 69000, N'Cốc', N'luamachda.jpg', N'Đắm chìm vào hương vị cà phê mới mẻ khi kết hợp cùng lúa mạch thơm ngon. Không quá đắng lại ngọt dịu dễ ghiền. Thưởng thức ngay nhé.

', N'L01       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (149, N'Cà phê Lúa Mạch nóng', 69000, N'.jpg', N'luamachnong.jpg', N'1 tách cà phê đặc biệt cho mùa đặc biệt nhất năm. Lúa mạch thơm lừng kết hợp cùng cà phê đượm vị. Thưởng thức vị Giáng sinh dành riêng cho bạn hôm nay nhé.

', N'L01       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (151, N'Macca phủ socola', 45000, N'Bịch', N'maccalm.jpg', N'Sô cô la thơm lừng bao bọc hạt Mắc ca bùi béo thiệt ngon - món ăn vặt đắng nhẹ, ngọt ngào không thể thiếu cho mùa Giáng sinh ấm áp, cắn 1 miếng là mê ngay và nhâm nhi với món nước nào cũng hợp đấy.

', N'L06       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (152, N'Mochi Kem Chocolate', 19000, N'Cái', N'mochiscl.jpg', N'Cảm nhận hương vị Á Âu từ lớp vỏ nếp sô cô la ngọt dẻo, đến lớp kem lạnh và sốt sô cô la bên trong. Cắn 1 miếng là mê ngay.

', N'L06       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (161, N'Mochi Kem Matcha', 19000, N'Cái', N'mochimatcha.jpg', N'Vừa quen vừa lạ từ vỏ bánh mềm dẻo, đến lớp kem lạnh và nhân trà xanh đậm vị, gọi 1 chiếc Mochi cho ngày thiệt tươi nha

', N'L06       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (162, N'Mochi Kem Xoài', 19000, N'Cái', N'MochiXoai.jpg', N'Bạn sẽ thích thú với hương vị chua chua ngọt ngọt từ sự kết hợp giữa nhân kem lạnh và sốt xoài. Bao bọc bởi lớp vỏ nếp mềm dẻo. Gọi Mocchi Xoài cho ngày dài thiệt tươi.', N'L06       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (166, N'Mousse Gấu Chocolate', 39000, N'Cái', N'MousseGau.jpg', N'Với vẻ ngoài đáng yêu và hương vị ngọt ngào, thơm béo nhất định bạn phải thử ít nhất 1 lần.

', N'L06       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (168, N'Mousse Matcha', 29000, N'Cái', N'MousseMatcha.jpg', N'Khám phá từng tầng vị trà xanh thơm lừng xen kẽ lớp kéo béo dịu với đậu đỏ.

', N'L06       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (169, N'Mousse Passion Cheese', 29000, N'Cái', N'PassionCheese.jpg', N'Tận hưởng chiếc bánh mát lạnh với sự kết hợp hoàn hảo của vị béo ngậy của nhân kem phô mai, cân bằng với vị chua thanh từ chanh dây.

', N'L06       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (171, N'Mousse Tiramisu', 32000, N'Cái', N'MousseTiramisu.jpg', N'Hương vị dễ ghiền được tạo nên bởi chút đắng nhẹ của cà phê, lớp kem trứng béo ngọt dịu hấp dẫn.

', N'L06       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (174, N'CÀ PHÊ ĐÁ XAY', 59000, N'Cốc', N'cafedaxay.jpg', N'Một phiên bản "upgrade" từ ly cà phê sữa quen thuộc, nhưng lại đầy tỉnh táo và tươi mát hơn bởi lớp đá xay mát lạnh đi kèm. Nhấp 1 ngụm là thấy đã, ngụm thứ hai thêm tỉnh táo và cứ thế lôi cuốn bạn đến giọt cuối cùng.

', N'L05       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (175, N'TRÀ CÀ PHÊ ĐÁ XAY', 59000, N'Cốc', N'tracafe.jpg', N'Hấp dẫn trên từng nấc hương vị, là nốt hương đầu thanh thoát của lớp cà phê espresso hảo hạng, tiếp theo sau đó là thanh vị tươi mát đọng mãi nơi cuống họng bởi lớp trà oolong đi kèm - 1 vị cà phê mới lạ nhưng lại chiều lòng những tâm hồn yêu cà phê dù là khó tính nhất.

', N'L05       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (176, N'TRÀ OOLONG PHÚC BỒN TỬ', 59000, N'Cốc', N'olongp.jpg', N'Một sự kết hợp đầy hoàn hảo giữa thanh mát và bổ dưỡng.
', N'L04       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (177, N'TRÀ OOLONG BƯỞI MẬT ONG', 59000, N'Cốc', N'olongb.jpg', N'Lớp trà oolong đã man mát, nhưng sẽ vị càng thêm vị khi có hương bưởi cùng những tép bưởi mọng nước đi kèm - cho bạn 1 cách thưởng thức đầy thú vị. Cùng đánh thức vị giác, khởi động 1 ngày tươi tắn cùng hương vị mới lạ này nhé!

', N'L04       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (178, N'CHANH SẢ ĐÁ XAY', 49000, N'Cốc', N'chanhxa.jpg', N'Sự kết hợp hài hoà giữa những nguyên liệu mộc mạc rất đỗi quen thuộc đối với người Việt cho một thức uống thanh mát, giải nhiệt lại tốt cho sức khoẻ.

', N'L04       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (179, N'TRÀ LÀI MACCHIATO', 42000, N'Cốc', N'LAI.jpg', N'Ngay ngụm đầu tiên chính là vị beo béo ngọt dịu của lớp macchiato, sau đó được cân bằng lại bởi lớp thanh mát từ nền trà oolong hảo hạng - 1 hương vị tươi mới cho team hảo ngọt nhưng thích thanh mát.

', N'L03       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (180, N'TRÀ ĐEN MACCHIATO', 42000, N'Cốc', N'DEN.jpg', N'Trà đen được ủ mới mỗi ngày, giữ nguyên được vị chát mạnh mẽ đặc trưng của lá trà, phủ bên trên là lớp Macchiato "homemade" bồng bềnh quyến rũ vị phô mai mặn mặn mà béo béo.

', N'L03       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (181, N'CÀ PHÊ ARABICA', 10000, N'Bịch', N'ARABICA.jpg', N'TỰ TAY PHA TẠI NHÀ
MỘT LY CÀ PHÊ ĐẬM ĐÀ

Nhà gửi bạn hương vị cà phê từ 100% hạt Arabica, được chọn lọc kỹ lưỡng tại vùng Cầu Đất, với độ cao 1650m.', N'L09       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (182, N'CÀ PHÊ PHIN', 60000, N'Bịch', N'PHIN.jpg', N'TỰ TAY PHA TẠI NHÀ
MỘT LY CÀ PHÊ ĐẬM ĐÀ

Cà phê Phin của The Coffee House được phối trộn theo tỉ lệ hoàn hảo giữa hạt Robusta và hạt Arabica được hái chín đến 95%', N'L09       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (183, N'CÀ PHÊ PHIN ĐẮK NÔNG x CẦU ĐẤT', 70000, N'Bịch', N'CAUDAT.jpg', N'- Một chất nguyên bản mạnh mẽ của Robusta, từ vùng Đắk Nông nắng gắt mưa nhiều.
- Một chất nguyên bản nhẹ nhàng, thanh tao của nơi Cầu Đất sương mù bao phủ, nơi hạt Arabica được đất đai và khí hậu ưu ái vỗ về.', N'L09       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (184, N'COLD BREW TRUYỀN THỐNG', 45000, N'Cốc', N'cb4.jpg', N'Trong một năm trở lại đây, cà phê pha lạnh Cold Brew đã trở thành một xu hướng thưởng thức mới đối với các tín đồ cà phê Việt Nam.', N'L08       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (185, N'COLD BREW PHÚC BỒN TỬ', 50000, N'Cốc', N'cb3.jpg', N'Vị chua ngọt của trái phúc bồn tử, làm dậy lên hương vị trái cây tự nhiên vốn sẵn có trong hạt cà phê, hòa quyện thêm vị đăng đắng, ngọt dịu nhẹ nhàng của Cold Brew để mang đến một cách thưởng thức cà phê hoàn toàn mới,', N'L08       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (187, N'COLD BREW SỮA TƯƠI', 50000, N'Cốc', N'cb2.jpg', N'Thanh mát và cân bằng với hương vị cà phê nguyên bản 100% Arabica Cầu Đất cùng sữa tươi thơm béo cho từng ngụm tròn vị, hấp dẫn.

', N'L08       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (188, N'COLD BREW CAM SẢ', 50000, N'Cốc', N'cb1.jpg', N'Tinh tế trong hương - sắc - vị

', N'L08       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (189, N'AMERICANO', 39000, NULL, N'AMERICANO.jpg', N'Americano được pha chế bằng cách thêm nước vào một hoặc hai shot Espresso để pha loãng độ đặc của cà phê, từ đó mang lại hương vị nhẹ nhàng, không gắt mạnh và vẫn thơm nồng nàn.

', N'L07       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (190, N'CAPPUCCINO', 45000, NULL, N'CAPPUCCINO.jpg', N'Cappuccino được gọi vui là thức uống "một-phần-ba" - 1/3 Espresso, 1/3 Sữa nóng, 1/3 Foam.

', N'L07       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (191, N'CARAMEL MACCHIATO', 55000, NULL, N'CARAMELMACCHIATO.jpg', N'Vị thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát của cà phê Espresso hảo hạng, và vị ngọt đậm của sốt caramel.

', N'L07       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (192, N'ESPRESSO', 35000, NULL, N'ESPRESSO.jpg', N'Một cốc Espresso nguyên bản được bắt đầu bởi những hạt Arabica chất lượng, phối trộn với tỉ lệ cân đối hạt Robusta, cho ra vị ngọt caramel, vị chua dịu và sánh đặc. Để đạt được sự kết hợp này, chúng tôi xay tươi hạt cà phê cho mỗi lần pha.

', N'L07       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (194, N'LATTE', 45000, NULL, N'LATTE.jpg', N'Khi chuẩn bị Latte, cà phê Espresso và sữa nóng được trộn lẫn vào nhau, bên trên vẫn là lớp foam nhưng mỏng và nhẹ hơn Cappucinno.

', N'L07       ', NULL)
INSERT [dbo].[ThucDon] ([MaThucDon], [TenMon], [DonGia], [DVT], [HinhAnh], [MoTa], [MaLoaiTD], [TiLeChon]) VALUES (197, N'MOCHA', 49000, NULL, N'MOCHA.jpg', N'Cà phê Mocha được ví von đơn giản là Sốt Sô cô la được pha cùng một tách Espresso.

', N'L07       ', NULL)
SET IDENTITY_INSERT [dbo].[ThucDon] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__HangHoa__E6C9BFA8A704FB53]    Script Date: 12/31/2020 7:18:09 PM ******/
ALTER TABLE [dbo].[HangHoa] ADD UNIQUE NONCLUSTERED 
(
	[TenHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__LoaiHang__E74DCF9265F6C6B8]    Script Date: 12/31/2020 7:18:09 PM ******/
ALTER TABLE [dbo].[LoaiHangHoa] ADD UNIQUE NONCLUSTERED 
(
	[TenLoaiHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ban] ADD  DEFAULT ((4)) FOR [SoCho]
GO
ALTER TABLE [dbo].[Ban] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[ChiTietNhapHang] ADD  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[ChiTietNhapHang] ADD  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[ChiTietNhapHang] ADD  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[DoanhThu] ADD  CONSTRAINT [Default_Ngay]  DEFAULT (getdate()) FOR [ngayTruc]
GO
ALTER TABLE [dbo].[DonGiaoHang] ADD  DEFAULT ((110)) FOR [maNhanVien]
GO
ALTER TABLE [dbo].[DonGiaoHang] ADD  DEFAULT (NULL) FOR [GhiChu]
GO
ALTER TABLE [dbo].[HangHoa] ADD  DEFAULT ((0)) FOR [SLTon]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT ((1)) FOR [MaLoaiKH]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [df_diemtl_Kh]  DEFAULT ((3)) FOR [DiemTichLuy]
GO
ALTER TABLE [dbo].[taiKhoanCongTy] ADD  DEFAULT (getdate()) FOR [ngayTao]
GO
ALTER TABLE [dbo].[taiKhoanKhachHang] ADD  DEFAULT (getdate()) FOR [ngayTao]
GO
ALTER TABLE [dbo].[ChiTietGiaoHang]  WITH CHECK ADD  CONSTRAINT [fk_CTGH_GH] FOREIGN KEY([MaGiaoHang])
REFERENCES [dbo].[DonGiaoHang] ([MaGiaoHang])
GO
ALTER TABLE [dbo].[ChiTietGiaoHang] CHECK CONSTRAINT [fk_CTGH_GH]
GO
ALTER TABLE [dbo].[ChiTietGiaoHang]  WITH CHECK ADD  CONSTRAINT [fk_CTGH_TD] FOREIGN KEY([maThucDon])
REFERENCES [dbo].[ThucDon] ([MaThucDon])
GO
ALTER TABLE [dbo].[ChiTietGiaoHang] CHECK CONSTRAINT [fk_CTGH_TD]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [fk_CTHD_HD] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [fk_CTHD_HD]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [fk_CTHD_MA] FOREIGN KEY([MaThucDon])
REFERENCES [dbo].[ThucDon] ([MaThucDon])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [fk_CTHD_MA]
GO
ALTER TABLE [dbo].[ChiTietNhapHang]  WITH CHECK ADD  CONSTRAINT [fk_CTNH_HH] FOREIGN KEY([MaHang])
REFERENCES [dbo].[HangHoa] ([MaHang])
GO
ALTER TABLE [dbo].[ChiTietNhapHang] CHECK CONSTRAINT [fk_CTNH_HH]
GO
ALTER TABLE [dbo].[ChiTietNhapHang]  WITH CHECK ADD  CONSTRAINT [fk_CTNH_NH] FOREIGN KEY([MaNhapHang])
REFERENCES [dbo].[DonNhapHang] ([MaNhapHang])
GO
ALTER TABLE [dbo].[ChiTietNhapHang] CHECK CONSTRAINT [fk_CTNH_NH]
GO
ALTER TABLE [dbo].[DoanhThu]  WITH CHECK ADD  CONSTRAINT [FK_DoanhThu_CaTruc] FOREIGN KEY([maCT])
REFERENCES [dbo].[caTruc] ([maCT])
GO
ALTER TABLE [dbo].[DoanhThu] CHECK CONSTRAINT [FK_DoanhThu_CaTruc]
GO
ALTER TABLE [dbo].[DonGiaoHang]  WITH CHECK ADD  CONSTRAINT [fk_DGH_KH] FOREIGN KEY([maKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[DonGiaoHang] CHECK CONSTRAINT [fk_DGH_KH]
GO
ALTER TABLE [dbo].[DonGiaoHang]  WITH CHECK ADD  CONSTRAINT [fk_DGH_NV] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[DonGiaoHang] CHECK CONSTRAINT [fk_DGH_NV]
GO
ALTER TABLE [dbo].[DonNhapHang]  WITH CHECK ADD  CONSTRAINT [fk_NH_NV] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[DonNhapHang] CHECK CONSTRAINT [fk_NH_NV]
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [fk_HH_LHH] FOREIGN KEY([MaLoaiHang])
REFERENCES [dbo].[LoaiHangHoa] ([MaLoaiHang])
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [fk_HH_LHH]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_HD_B] FOREIGN KEY([MaBan])
REFERENCES [dbo].[Ban] ([MaBan])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_HD_B]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_HD_NV] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_HD_NV]
GO
ALTER TABLE [dbo].[HOTROKHACHHANG]  WITH CHECK ADD  CONSTRAINT [FK_HT_KH] FOREIGN KEY([MAKHACHHANG])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HOTROKHACHHANG] CHECK CONSTRAINT [FK_HT_KH]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [fk_KH_Loai] FOREIGN KEY([MaLoaiKH])
REFERENCES [dbo].[LoaiKhachHang] ([MaLoaiKH])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [fk_KH_Loai]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_caTruc] FOREIGN KEY([maCT])
REFERENCES [dbo].[caTruc] ([maCT])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_caTruc]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_NhanVien] FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_NhanVien]
GO
ALTER TABLE [dbo].[taiKhoanCongTy]  WITH CHECK ADD  CONSTRAINT [fk_TKCT_NV] FOREIGN KEY([maTaiKhoan])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[taiKhoanCongTy] CHECK CONSTRAINT [fk_TKCT_NV]
GO
ALTER TABLE [dbo].[taiKhoanKhachHang]  WITH CHECK ADD  CONSTRAINT [fk_TKKH_KH] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[taiKhoanKhachHang] CHECK CONSTRAINT [fk_TKKH_KH]
GO
ALTER TABLE [dbo].[ThucDon]  WITH CHECK ADD  CONSTRAINT [fk_TD_Loai] FOREIGN KEY([MaLoaiTD])
REFERENCES [dbo].[LoaiThucDon] ([MaLoaiTD])
GO
ALTER TABLE [dbo].[ThucDon] CHECK CONSTRAINT [fk_TD_Loai]
GO
ALTER TABLE [dbo].[caTruc]  WITH CHECK ADD CHECK  (([maCT]>(0) AND [maCT]<=(3)))
GO
ALTER TABLE [dbo].[ChiTietGiaoHang]  WITH CHECK ADD CHECK  (([soLuongGiao]>(0)))
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD CHECK  (([SoLuongMon]>(0)))
GO
