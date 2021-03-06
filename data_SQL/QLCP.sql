USE [master]
GO
/****** Object:  Database [QuanLiCaPhe]    Script Date: 05/27/2019 22:07:54 ******/
CREATE DATABASE [QuanLyCaPhe]
GO
ALTER DATABASE [QuanLyCaPhe] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyCaPhe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyCaPhe] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QuanLyCaPhe] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QuanLyCaPhe] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QuanLyCaPhe] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QuanLyCaPhe] SET ARITHABORT OFF
GO
ALTER DATABASE [QuanLyCaPhe] SET AUTO_CLOSE ON
GO
ALTER DATABASE [QuanLyCaPhe] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyCaPhe] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QuanLyCaPhe] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyCaPhe] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QuanLyCaPhe] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QuanLyCaPhe] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QuanLyCaPhe] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE[QuanLyCaPhe] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QuanLyCaPhe] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QuanLyCaPhe] SET  DISABLE_BROKER
GO
ALTER DATABASE [QuanLyCaPhe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QuanLyCaPhe] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QuanLyCaPhe] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QuanLyCaPhe] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QuanLyCaPhe] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QuanLyCaPhe] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QuanLyCaPhe] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QuanLyCaPhe] SET  READ_WRITE
GO
ALTER DATABASE [QuanLyCaPhe] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QuanLyCaPhe] SET  MULTI_USER
GO
ALTER DATABASE [QuanLyCaPhe] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QuanLyCaPhe] SET DB_CHAINING OFF
GO
USE [QuanLyCaPhe]
GO
/****** Object:  Table [dbo].[tblDSMon]    Script Date: 05/27/2019 22:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDSMon](
	[MaMon] [varchar](5) NOT NULL,
	[TenMon] [nvarchar](50) NOT NULL,
	[Nhom] [nvarchar](50) NOT NULL,
	[DonGia] [money] NOT NULL,
	[DonViTinh] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblDSMon] ([MaMon], [TenMon], [Nhom], [DonGia], [DonViTinh]) VALUES (N'M001', N'Cà phê', N'Cà phê', 20000.0000, N'Cốc')
/****** Object:  Table [dbo].[tblDoanhThu]    Script Date: 05/27/2019 22:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDoanhThu](
	[Ngay] [datetime] NOT NULL,
	[DoanhThu] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ngay] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblXuatNL]    Script Date: 05/27/2019 22:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblXuatNL](
	[MaPhieuXuat] [int] NOT NULL,
	[NgayXuat] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuXuat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 05/27/2019 22:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUser](
	[MaUser] [varchar](5) NOT NULL,
	[PassWord] [varchar](10) NOT NULL,
	[TenThuNgan] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaUser] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblUser] ([MaUser], [PassWord], [TenThuNgan]) VALUES (N'Admin', N'1', N'Hải Sơn')
/****** Object:  Table [dbo].[tblBan]    Script Date: 05/27/2019 22:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBan](
	[MaBan] [varchar](3) NOT NULL,
	[SoBan] [int] NOT NULL,
	[Khu] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblBan] ([MaBan], [SoBan], [Khu]) VALUES (N'B1', 1, N'A')
/****** Object:  Table [dbo].[tblNhapNL]    Script Date: 05/27/2019 22:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhapNL](
	[MaPhieuNhap] [int] NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[TongTien] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblNhapNL] ([MaPhieuNhap], [NgayNhap], [TongTien]) VALUES (0, CAST(0x0000AA5600000000 AS DateTime), 0.0000)
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 05/27/2019 22:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[MaNV] [varchar](5) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[GioiTinh] [nvarchar](30) NOT NULL,
	[TrinhDoHocVan] [nvarchar](30) NULL,
	[ChucVu] [nvarchar](30) NOT NULL,
	[SoCMND] [char](11) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [TrinhDoHocVan], [ChucVu], [SoCMND], [DiaChi]) VALUES (N'NV1', N'Lê Hải Sơn', CAST(0x00008C8400000000 AS DateTime), N'Nam', N'Đại Học', N'Quản Lý', N'013492957  ', N'Hà Nội')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [TrinhDoHocVan], [ChucVu], [SoCMND], [DiaChi]) VALUES (N'NV2', N'Đinh Xuân Dũng', CAST(0x00008C6D00000000 AS DateTime), N'Nam', N'Đại học', N'Pha Chế', N'012343544  ', N'Quảng Ninh')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [TrinhDoHocVan], [ChucVu], [SoCMND], [DiaChi]) VALUES (N'NV3', N'Phạm Văn Tùng', CAST(0x00008C9600000000 AS DateTime), N'Nam', N'Cấp 3', N'Giữ Xe', N'013492945  ', N'Nam Định')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [TrinhDoHocVan], [ChucVu], [SoCMND], [DiaChi]) VALUES (N'NV4', N'Trần Văn Vận', CAST(0x00008C7200000000 AS DateTime), N'Nam', N'Tiểu Học', N'Tạp Vụ', N'024857463  ', N'Cà Mau')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [TrinhDoHocVan], [ChucVu], [SoCMND], [DiaChi]) VALUES (N'NV5', N'Luci', CAST(0x00008F7700000000 AS DateTime), N'Nữ', N'Cao Đẳng', N'Thu Ngân', N'014536287  ', N'Hà Đông')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [TrinhDoHocVan], [ChucVu], [SoCMND], [DiaChi]) VALUES (N'NV6', N'Lâm Bảo Ngọc', CAST(0x00005BFE00000000 AS DateTime), N'Nữ', N'Tiến sí', N'Quản Lý', N'013454643  ', N'Hà Nội')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [TrinhDoHocVan], [ChucVu], [SoCMND], [DiaChi]) VALUES (N'NV7', N'Trần Bình Trọng', CAST(0x00008D1B00000000 AS DateTime), N'Nam', N'Đại học', N'Pha Chế', N'014325444  ', N'Hà Nam')
/****** Object:  Table [dbo].[tblNguyenLieu]    Script Date: 05/27/2019 22:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNguyenLieu](
	[MaNL] [varchar](5) NOT NULL,
	[TenNL] [nvarchar](50) NOT NULL,
	[DonGia] [money] NOT NULL,
	[DonViTinh] [nvarchar](50) NOT NULL,
	[SoLuongCon] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblHoaDon]    Script Date: 05/27/2019 22:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblHoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaOder] [int] NOT NULL,
	[MaBan] [varchar](3) NOT NULL,
	[Ngay] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCTDoanhThu]    Script Date: 05/27/2019 22:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCTDoanhThu](
	[Ngay] [datetime] NOT NULL,
	[MaMon] [varchar](5) NOT NULL,
	[SoLuongBan] [int] NOT NULL,
	[TongTien] [money] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblChamCongNV]    Script Date: 05/27/2019 22:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblChamCongNV](
	[MaNV] [varchar](5) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[CaLam] [nvarchar](30) NOT NULL,
	[Ngay] [datetime] NOT NULL,
	[SoGioLam] [float] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblChamCongNV] ([MaNV], [TenNV], [CaLam], [Ngay], [SoGioLam]) VALUES (N'NV1', N'Lê Hải Sơn', N'Ca Sáng', CAST(0x0000AA5600000000 AS DateTime), 8)
INSERT [dbo].[tblChamCongNV] ([MaNV], [TenNV], [CaLam], [Ngay], [SoGioLam]) VALUES (N'NV1', N'Lê Hải Sơn', N'Ca Sáng', CAST(0x0000AA5500000000 AS DateTime), 8)
INSERT [dbo].[tblChamCongNV] ([MaNV], [TenNV], [CaLam], [Ngay], [SoGioLam]) VALUES (N'NV1', N'Lê Hải Sơn', N'Ca Sáng', CAST(0x0000AA5400000000 AS DateTime), 8)
INSERT [dbo].[tblChamCongNV] ([MaNV], [TenNV], [CaLam], [Ngay], [SoGioLam]) VALUES (N'NV1', N'Lê Hải Sơn', N'Ca Sáng', CAST(0x0000AA5300000000 AS DateTime), 8)
/****** Object:  Table [dbo].[tblBanSDNhieu]    Script Date: 05/27/2019 22:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBanSDNhieu](
	[MaBan] [varchar](3) NULL,
	[SoBan] [int] NOT NULL,
	[LuotSD] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBangLuong]    Script Date: 05/27/2019 22:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBangLuong](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[Thang] [int] NOT NULL,
	[MaNV] [varchar](5) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[TongGioLam] [float] NOT NULL,
	[MucLuong] [money] NOT NULL,
	[TienLuong] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblBangLuong] ON
INSERT [dbo].[tblBangLuong] ([STT], [Thang], [MaNV], [TenNV], [TongGioLam], [MucLuong], [TienLuong]) VALUES (1, 23, N'NV1', N'Lê Hải Sơn', 41, 12000.0000, 492000.0000)
SET IDENTITY_INSERT [dbo].[tblBangLuong] OFF
/****** Object:  Table [dbo].[tblBanCoKhach]    Script Date: 05/27/2019 22:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBanCoKhach](
	[MaBan] [varchar](3) NULL,
	[SoBan] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblOder]    Script Date: 05/27/2019 22:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOder](
	[MaOder] [int] NOT NULL,
	[MaBan] [varchar](3) NOT NULL,
	[MaNV] [varchar](5) NOT NULL,
	[Ngay] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaOder] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCTXuatNL]    Script Date: 05/27/2019 22:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCTXuatNL](
	[MaPhieuXuat] [int] NOT NULL,
	[MaNL] [varchar](5) NOT NULL,
	[TenNL] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonViTinh] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCTNhapNL]    Script Date: 05/27/2019 22:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCTNhapNL](
	[MaPhieuNhap] [int] NOT NULL,
	[MaNL] [varchar](5) NOT NULL,
	[TenNL] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[DonGia] [money] NOT NULL,
	[ThanhTien] [money] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCTHoaDon]    Script Date: 05/27/2019 22:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCTHoaDon](
	[MaHD] [int] NOT NULL,
	[MaMon] [varchar](5) NOT NULL,
	[TenMon] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [money] NOT NULL,
	[ThanhTien] [money] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCTOder]    Script Date: 05/27/2019 22:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCTOder](
	[MaOder] [int] NULL,
	[MaBan] [varchar](3) NOT NULL,
	[MaMon] [varchar](5) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonViTinh] [nvarchar](30) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK__tblHoaDon__MaBan__1A14E395]    Script Date: 05/27/2019 22:07:55 ******/
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD FOREIGN KEY([MaBan])
REFERENCES [dbo].[tblBan] ([MaBan])
GO
/****** Object:  ForeignKey [FK__tblCTDoan__MaMon__3E52440B]    Script Date: 05/27/2019 22:07:55 ******/
ALTER TABLE [dbo].[tblCTDoanhThu]  WITH CHECK ADD FOREIGN KEY([MaMon])
REFERENCES [dbo].[tblDSMon] ([MaMon])
GO
/****** Object:  ForeignKey [FK__tblCTDoanh__Ngay__3D5E1FD2]    Script Date: 05/27/2019 22:07:55 ******/
ALTER TABLE [dbo].[tblCTDoanhThu]  WITH CHECK ADD FOREIGN KEY([Ngay])
REFERENCES [dbo].[tblDoanhThu] ([Ngay])
GO
/****** Object:  ForeignKey [FK__tblChamCon__MaNV__1FCDBCEB]    Script Date: 05/27/2019 22:07:55 ******/
ALTER TABLE [dbo].[tblChamCongNV]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
/****** Object:  ForeignKey [FK__tblBanSDN__MaBan__37A5467C]    Script Date: 05/27/2019 22:07:55 ******/
ALTER TABLE [dbo].[tblBanSDNhieu]  WITH CHECK ADD FOREIGN KEY([MaBan])
REFERENCES [dbo].[tblBan] ([MaBan])
GO
/****** Object:  ForeignKey [FK__tblBangLuo__MaNV__24927208]    Script Date: 05/27/2019 22:07:55 ******/
ALTER TABLE [dbo].[tblBangLuong]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
/****** Object:  ForeignKey [FK__tblBanCoK__MaBan__35BCFE0A]    Script Date: 05/27/2019 22:07:55 ******/
ALTER TABLE [dbo].[tblBanCoKhach]  WITH CHECK ADD FOREIGN KEY([MaBan])
REFERENCES [dbo].[tblBan] ([MaBan])
GO
/****** Object:  ForeignKey [FK__tblOder__MaBan__300424B4]    Script Date: 05/27/2019 22:07:55 ******/
ALTER TABLE [dbo].[tblOder]  WITH CHECK ADD FOREIGN KEY([MaBan])
REFERENCES [dbo].[tblBan] ([MaBan])
GO
/****** Object:  ForeignKey [FK__tblOder__MaNV__30F848ED]    Script Date: 05/27/2019 22:07:55 ******/
ALTER TABLE [dbo].[tblOder]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
/****** Object:  ForeignKey [FK__tblCTXuat__MaPhi__108B795B]    Script Date: 05/27/2019 22:07:55 ******/
ALTER TABLE [dbo].[tblCTXuatNL]  WITH CHECK ADD FOREIGN KEY([MaPhieuXuat])
REFERENCES [dbo].[tblXuatNL] ([MaPhieuXuat])
GO
/****** Object:  ForeignKey [FK__tblCTXuatN__MaNL__117F9D94]    Script Date: 05/27/2019 22:07:55 ******/
ALTER TABLE [dbo].[tblCTXuatNL]  WITH CHECK ADD FOREIGN KEY([MaNL])
REFERENCES [dbo].[tblNguyenLieu] ([MaNL])
GO
/****** Object:  ForeignKey [FK__tblCTNhap__MaPhi__09DE7BCC]    Script Date: 05/27/2019 22:07:55 ******/
ALTER TABLE [dbo].[tblCTNhapNL]  WITH CHECK ADD FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[tblNhapNL] ([MaPhieuNhap])
GO
/****** Object:  ForeignKey [FK__tblCTNhapN__MaNL__0AD2A005]    Script Date: 05/27/2019 22:07:55 ******/
ALTER TABLE [dbo].[tblCTNhapNL]  WITH CHECK ADD FOREIGN KEY([MaNL])
REFERENCES [dbo].[tblNguyenLieu] ([MaNL])
GO
/****** Object:  ForeignKey [FK__tblCTHoaD__MaMon__2B3F6F97]    Script Date: 05/27/2019 22:07:55 ******/
ALTER TABLE [dbo].[tblCTHoaDon]  WITH CHECK ADD FOREIGN KEY([MaMon])
REFERENCES [dbo].[tblDSMon] ([MaMon])
GO
/****** Object:  ForeignKey [FK__tblCTHoaDo__MaHD__2A4B4B5E]    Script Date: 05/27/2019 22:07:55 ******/
ALTER TABLE [dbo].[tblCTHoaDon]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[tblHoaDon] ([MaHD])
GO
/****** Object:  ForeignKey [FK__tblCTOder__MaBan__33D4B598]    Script Date: 05/27/2019 22:07:55 ******/
ALTER TABLE [dbo].[tblCTOder]  WITH CHECK ADD FOREIGN KEY([MaBan])
REFERENCES [dbo].[tblBan] ([MaBan])
GO
/****** Object:  ForeignKey [FK__tblCTOder__MaOde__32E0915F]    Script Date: 05/27/2019 22:07:55 ******/
ALTER TABLE [dbo].[tblCTOder]  WITH CHECK ADD FOREIGN KEY([MaOder])
REFERENCES [dbo].[tblOder] ([MaOder])
GO
