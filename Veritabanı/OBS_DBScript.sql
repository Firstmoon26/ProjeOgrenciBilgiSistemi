USE [master]
GO
/****** Object:  Database [DBProjeOBS]    Script Date: 09.06.2021 10:17:08 ******/
CREATE DATABASE [DBProjeOBS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBProjeOBS', FILENAME = N'C:\Users\igdogan\DBProjeOBS.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBProjeOBS_log', FILENAME = N'C:\Users\igdogan\DBProjeOBS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBProjeOBS] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBProjeOBS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBProjeOBS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBProjeOBS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBProjeOBS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBProjeOBS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBProjeOBS] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBProjeOBS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBProjeOBS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBProjeOBS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBProjeOBS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBProjeOBS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBProjeOBS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBProjeOBS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBProjeOBS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBProjeOBS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBProjeOBS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBProjeOBS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBProjeOBS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBProjeOBS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBProjeOBS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBProjeOBS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBProjeOBS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBProjeOBS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBProjeOBS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBProjeOBS] SET  MULTI_USER 
GO
ALTER DATABASE [DBProjeOBS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBProjeOBS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBProjeOBS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBProjeOBS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DBProjeOBS]
GO
/****** Object:  Table [dbo].[TBL_DERSLER]    Script Date: 09.06.2021 10:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_DERSLER](
	[DERSID] [int] IDENTITY(1,1) NOT NULL,
	[DERSAD] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_DERSLER] PRIMARY KEY CLUSTERED 
(
	[DERSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_DUYURULAR]    Script Date: 09.06.2021 10:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_DUYURULAR](
	[DUYURUID] [int] IDENTITY(1,1) NOT NULL,
	[DUYURUBASLIK] [varchar](50) NULL,
	[DUYURUICERIK] [varchar](250) NULL,
	[DUYURUOGRT] [int] NULL,
 CONSTRAINT [PK_TBL_DUYURULAR] PRIMARY KEY CLUSTERED 
(
	[DUYURUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_MESAJLAR]    Script Date: 09.06.2021 10:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_MESAJLAR](
	[MESAJID] [int] IDENTITY(1,1) NOT NULL,
	[GONDEREN] [varchar](5) NULL,
	[ALICI] [varchar](5) NULL,
	[BASLIK] [varchar](50) NULL,
	[ICERIK] [varchar](250) NULL,
	[TARIH] [smalldatetime] NULL,
 CONSTRAINT [PK_TBL_MESAJLAR] PRIMARY KEY CLUSTERED 
(
	[MESAJID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_NOTLAR]    Script Date: 09.06.2021 10:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_NOTLAR](
	[NOTID] [int] IDENTITY(1,1) NOT NULL,
	[OGRENCINID] [int] NOT NULL,
	[DERSNID] [int] NOT NULL,
	[SINAV1] [tinyint] NULL,
	[SINAV2] [tinyint] NULL,
	[SINAV3] [tinyint] NULL,
	[ORTALAMA] [decimal](18, 2) NULL,
	[DURUM] [varchar](10) NULL,
 CONSTRAINT [PK_TBL_NOTLAR_1] PRIMARY KEY CLUSTERED 
(
	[OGRENCINID] ASC,
	[DERSNID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_OGRENCI]    Script Date: 09.06.2021 10:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_OGRENCI](
	[OGRID] [int] IDENTITY(1,1) NOT NULL,
	[OGRNO] [varchar](5) NOT NULL,
	[OGRAD] [varchar](30) NULL,
	[OGRSOYAD] [varchar](50) NULL,
	[OGRFOTO] [varchar](100) NULL,
	[OGRTELEFON] [varchar](20) NULL,
	[OGRMAIL] [varchar](50) NULL,
	[OGRSIFRE] [varchar](50) NULL,
	[OGRSINIF] [varchar](15) NULL,
 CONSTRAINT [PK_TBL_OGRENCI_1] PRIMARY KEY CLUSTERED 
(
	[OGRID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_OGRETMEN]    Script Date: 09.06.2021 10:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_OGRETMEN](
	[OGRTID] [int] IDENTITY(1,1) NOT NULL,
	[OGRTNO] [varchar](5) NULL,
	[OGRTADSOYAD] [varchar](50) NULL,
	[OGRTFOTO] [varchar](100) NULL,
	[OGRTBRANS] [int] NULL,
	[OGRTSIFRE] [varchar](10) NULL,
 CONSTRAINT [PK_TBL_OGRETMEN] PRIMARY KEY CLUSTERED 
(
	[OGRTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TBL_DERSLER] ON 

INSERT [dbo].[TBL_DERSLER] ([DERSID], [DERSAD]) VALUES (1, N'AYRIK MATEMATIK')
INSERT [dbo].[TBL_DERSLER] ([DERSID], [DERSAD]) VALUES (2, N'BILGISAYAR AGLARI')
INSERT [dbo].[TBL_DERSLER] ([DERSID], [DERSAD]) VALUES (3, N'SAYISAL TASARIM')
INSERT [dbo].[TBL_DERSLER] ([DERSID], [DERSAD]) VALUES (4, N'C PROGRAMLAMA')
INSERT [dbo].[TBL_DERSLER] ([DERSID], [DERSAD]) VALUES (5, N'PROJE YONETIMI')
INSERT [dbo].[TBL_DERSLER] ([DERSID], [DERSAD]) VALUES (6, N'YAZILIM MUHENDISLIGI')
INSERT [dbo].[TBL_DERSLER] ([DERSID], [DERSAD]) VALUES (7, N'NESNE YONELIMLI PROGRAMLAMA')
INSERT [dbo].[TBL_DERSLER] ([DERSID], [DERSAD]) VALUES (8, N'VERITABANI YONETIM SISTEMLERI')
INSERT [dbo].[TBL_DERSLER] ([DERSID], [DERSAD]) VALUES (9, N'VERI YAPILARI')
INSERT [dbo].[TBL_DERSLER] ([DERSID], [DERSAD]) VALUES (10, N'ALGORITMA ANALIZI')
INSERT [dbo].[TBL_DERSLER] ([DERSID], [DERSAD]) VALUES (11, N'YAPAY ZEKA')
INSERT [dbo].[TBL_DERSLER] ([DERSID], [DERSAD]) VALUES (12, N'ISLETIM SISTEMLERI')
INSERT [dbo].[TBL_DERSLER] ([DERSID], [DERSAD]) VALUES (13, N'WEB PROGRAMLAMA')
SET IDENTITY_INSERT [dbo].[TBL_DERSLER] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_DUYURULAR] ON 

INSERT [dbo].[TBL_DUYURULAR] ([DUYURUID], [DUYURUBASLIK], [DUYURUICERIK], [DUYURUOGRT]) VALUES (1, N'Ders Notlari', N'Bugün yapilan ders notlarini maillerinize gönderdim. Iyi çalismalar...', 1)
INSERT [dbo].[TBL_DUYURULAR] ([DUYURUID], [DUYURUBASLIK], [DUYURUICERIK], [DUYURUOGRT]) VALUES (2, N'Sinav!!!', N'Arkadaslar ara sinavlar 2 hafta ertelendi...', 2)
INSERT [dbo].[TBL_DUYURULAR] ([DUYURUID], [DUYURUBASLIK], [DUYURUICERIK], [DUYURUOGRT]) VALUES (4, N'ONEMLI', N'Arkadaslar sistemdeki bilgilerinizi guncelleyiniz.', 12)
INSERT [dbo].[TBL_DUYURULAR] ([DUYURUID], [DUYURUBASLIK], [DUYURUICERIK], [DUYURUOGRT]) VALUES (5, N'PROJE TESLIM', N'Son güne birakmayin', 5)
INSERT [dbo].[TBL_DUYURULAR] ([DUYURUID], [DUYURUBASLIK], [DUYURUICERIK], [DUYURUOGRT]) VALUES (6, N'FINAL SINAVLARI', N'Finaller haziranda icra edilecektir', 6)
SET IDENTITY_INSERT [dbo].[TBL_DUYURULAR] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_MESAJLAR] ON 

INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (1, N'5001', N'5002', N'ODEV', N'Yarin için odev var mi?', CAST(N'2021-05-07T22:22:00' AS SmallDateTime))
INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (2, N'5002', N'5001', N'ODEV', N'Hayir yok.', CAST(N'2021-05-07T22:23:00' AS SmallDateTime))
INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (3, N'5001', N'1001', N'DERS NOTLARI', N'Hocam ders notlari icin tesekkür ederiz.', CAST(N'2021-05-07T22:24:00' AS SmallDateTime))
INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (4, N'5002', N'1001', N'DERS NOTLARI', N'Hocam ders notlarini alamadim.', CAST(N'2021-05-07T22:25:00' AS SmallDateTime))
INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (5, N'1001', N'5003', N'SINAV', N'Sinav sonuclarina sistemden bakabilirsin.', CAST(N'2021-05-07T22:26:00' AS SmallDateTime))
INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (6, N'1001', N'5003', N'SINAV', N'Kontrol edip bana donus yaparsan sevinirim.', CAST(N'2021-05-07T22:27:00' AS SmallDateTime))
INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (7, N'1001', N'5001', N'DERS NOTLARI', N'Rica ederim.', CAST(N'2021-05-07T13:18:00' AS SmallDateTime))
INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (8, N'5001', N'5002', N'SINAV', N'Sinavin nasil geçti?', CAST(N'2021-05-25T15:07:00' AS SmallDateTime))
INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (9, N'5002', N'5001', N'SINAV', N'Sorular biraz zordu ama iyi gecti.', CAST(N'2021-05-25T15:08:00' AS SmallDateTime))
INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (10, N'1002', N'1001', N'MEHAZ', N'Hocam mehazlari paylasabilir misiniz?', CAST(N'2021-05-26T10:34:00' AS SmallDateTime))
INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (11, N'1001', N'1002', N'MEHAZ', N'Tabi.', CAST(N'2021-05-26T10:35:00' AS SmallDateTime))
INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (12, N'5003', N'5001', N'SINAV', N'Tabi hocam hemen bakiyorum.', CAST(N'2021-05-26T12:16:00' AS SmallDateTime))
INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (13, N'1001', N'1003', N'LISTE', N'Ogrenci listelerini ogrenci islerinden alabilirsiniz.', CAST(N'2021-05-26T14:50:00' AS SmallDateTime))
INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (1013, N'5005', N'5001', N'MAKALE', N'Makalenin linkini e-postadan gönderdim.', CAST(N'2021-06-02T10:46:00' AS SmallDateTime))
INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (1014, N'5001', N'1001', N'MAKALE', N'Hocam makaleleri nereden bulabiliriz?', CAST(N'2021-06-02T10:48:00' AS SmallDateTime))
INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (1015, N'1001', N'5001', N'MAKALE', N'Linkini paylastim.', CAST(N'2021-06-02T10:48:00' AS SmallDateTime))
INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (1016, N'5001', N'1001', N'MAKALE', N'Tesekkür ederim hocam', CAST(N'2021-06-02T11:39:00' AS SmallDateTime))
INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (1017, N'5001', N'5005', N'MAKALE', N'Tesekkür ederim', CAST(N'2021-06-02T11:41:00' AS SmallDateTime))
INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (1018, N'5001', N'1003', N'DENEME SINAVI', N'Ortak klasördeki deneme sinavlarinin cevap anahtari var mi hocam?', CAST(N'2021-06-02T12:56:00' AS SmallDateTime))
INSERT [dbo].[TBL_MESAJLAR] ([MESAJID], [GONDEREN], [ALICI], [BASLIK], [ICERIK], [TARIH]) VALUES (1019, N'1003', N'5001', N'DENEME SINAVI', N'Suan hazirliyorum. Bitince paylasacagim.', CAST(N'2021-06-02T12:57:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[TBL_MESAJLAR] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_NOTLAR] ON 

INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (1, 1, 1, 99, 85, 90, CAST(91.33 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (2, 1, 2, 77, 88, 50, CAST(71.67 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (37, 1, 3, 65, 76, 85, CAST(75.33 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (38, 1, 4, 70, 80, 90, CAST(80.00 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (39, 1, 5, 60, 70, 85, CAST(71.67 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (40, 1, 6, 87, 76, 85, CAST(82.67 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (41, 1, 7, 92, 77, 82, CAST(83.67 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (42, 1, 8, 67, 75, 77, CAST(73.00 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (43, 1, 9, 56, 65, 72, CAST(64.33 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (3, 1, 10, 67, 78, 88, CAST(77.67 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (44, 1, 11, 87, 74, 67, CAST(76.00 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (45, 1, 12, 56, 87, 76, CAST(73.00 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (46, 1, 13, 90, 90, 70, CAST(83.33 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (4, 2, 3, 50, 60, 70, CAST(60.00 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (5, 2, 8, 60, 67, 88, CAST(71.67 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (6, 2, 9, 78, 100, 80, CAST(86.00 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (7, 3, 1, 65, 70, 80, CAST(71.67 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (8, 3, 4, 85, 90, 90, CAST(88.33 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (9, 4, 4, 34, 88, 78, CAST(66.67 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (33, 4, 6, 77, 88, 44, CAST(69.67 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (10, 4, 7, 80, 90, 85, CAST(85.00 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (11, 5, 5, 89, 77, 66, CAST(77.33 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (12, 5, 6, 70, 80, 90, CAST(80.00 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (34, 5, 7, 55, 66, 77, CAST(66.00 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (13, 5, 11, 44, 55, 66, CAST(55.00 AS Decimal(18, 2)), N'Kaldi')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (14, 6, 1, 45, 67, 67, CAST(59.67 AS Decimal(18, 2)), N'Kaldi')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (15, 6, 5, 80, 90, 100, CAST(90.00 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (36, 6, 7, 66, 77, 88, CAST(77.00 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (16, 7, 3, 89, 67, 87, CAST(81.00 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (17, 7, 5, 55, 65, 75, CAST(65.00 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (35, 7, 6, 66, 77, 88, CAST(77.00 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (18, 8, 1, 40, 50, 55, CAST(48.33 AS Decimal(18, 2)), N'Kaldi')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (19, 8, 6, 54, 67, 87, CAST(69.33 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (20, 8, 12, 56, 67, 87, CAST(70.00 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (21, 9, 3, 75, 65, 55, CAST(65.00 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (22, 9, 6, 44, 55, 77, CAST(58.67 AS Decimal(18, 2)), N'Kaldi')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (23, 10, 1, 45, 55, 65, CAST(55.00 AS Decimal(18, 2)), N'Kaldi')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (24, 10, 6, 54, 65, 87, CAST(68.67 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (25, 11, 1, 66, 76, 46, CAST(62.67 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (26, 11, 6, 32, 54, 76, CAST(54.00 AS Decimal(18, 2)), N'Kaldi')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (27, 11, 13, 68, 87, 78, CAST(77.67 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (28, 12, 1, 44, 85, 67, CAST(65.33 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (29, 12, 7, 43, 76, 98, CAST(72.33 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (30, 12, 12, 55, 66, 88, CAST(69.67 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (31, 13, 3, 66, 77, 88, CAST(77.00 AS Decimal(18, 2)), N'Geçti')
INSERT [dbo].[TBL_NOTLAR] ([NOTID], [OGRENCINID], [DERSNID], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (32, 13, 8, 54, 87, 85, CAST(75.33 AS Decimal(18, 2)), N'Geçti')
SET IDENTITY_INSERT [dbo].[TBL_NOTLAR] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_OGRENCI] ON 

INSERT [dbo].[TBL_OGRENCI] ([OGRID], [OGRNO], [OGRAD], [OGRSOYAD], [OGRFOTO], [OGRTELEFON], [OGRMAIL], [OGRSIFRE], [OGRSINIF]) VALUES (1, N'5001', N'ILKAY GURKAN', N'DOGAN', N'Link giriniz', N'05455454544', N'igdogan@kho.edu.tr', N'5001', N'MUHABERE')
INSERT [dbo].[TBL_OGRENCI] ([OGRID], [OGRNO], [OGRAD], [OGRSOYAD], [OGRFOTO], [OGRTELEFON], [OGRMAIL], [OGRSIFRE], [OGRSINIF]) VALUES (2, N'5002', N'BULUT', N'YAGMUR', N'Link giriniz', N'05452222222', N'byagmur@kho.edu.tr', N'5002', N'PIYADE')
INSERT [dbo].[TBL_OGRENCI] ([OGRID], [OGRNO], [OGRAD], [OGRSOYAD], [OGRFOTO], [OGRTELEFON], [OGRMAIL], [OGRSIFRE], [OGRSINIF]) VALUES (3, N'5003', N'EMRAH', N'ITISGEN', N'Link giriniz', N'05453333333', N'eitisgen@hotmail.com', N'5003', N'PIYADE')
INSERT [dbo].[TBL_OGRENCI] ([OGRID], [OGRNO], [OGRAD], [OGRSOYAD], [OGRFOTO], [OGRTELEFON], [OGRMAIL], [OGRSIFRE], [OGRSINIF]) VALUES (4, N'5004', N'NECATI', N'ERKAL', N'Link giriniz', N'05454444444', N'nerkal@hotmail.com', N'5004', N'PIYADE')
INSERT [dbo].[TBL_OGRENCI] ([OGRID], [OGRNO], [OGRAD], [OGRSOYAD], [OGRFOTO], [OGRTELEFON], [OGRMAIL], [OGRSIFRE], [OGRSINIF]) VALUES (5, N'5005', N'HUSEYIN', N'SAYIOGLU', N'Link giriniz', N'05455555555', N'hsayioglu@hotmail.com', N'5005', N'HV SVN')
INSERT [dbo].[TBL_OGRENCI] ([OGRID], [OGRNO], [OGRAD], [OGRSOYAD], [OGRFOTO], [OGRTELEFON], [OGRMAIL], [OGRSIFRE], [OGRSINIF]) VALUES (6, N'5006', N'ABDULLAH UGUR', N'MAT', N'Link giriniz', N'05456666666', N'aumat@hotmail.com', N'5006', N'TOPCU')
INSERT [dbo].[TBL_OGRENCI] ([OGRID], [OGRNO], [OGRAD], [OGRSOYAD], [OGRFOTO], [OGRTELEFON], [OGRMAIL], [OGRSIFRE], [OGRSINIF]) VALUES (7, N'5007', N'ADEM', N'TIRASOGLU', N'Link giriniz', N'05457777777', N'atrasoglu@hotmail.com', N'5007', N'HV SVN')
INSERT [dbo].[TBL_OGRENCI] ([OGRID], [OGRNO], [OGRAD], [OGRSOYAD], [OGRFOTO], [OGRTELEFON], [OGRMAIL], [OGRSIFRE], [OGRSINIF]) VALUES (8, N'5008', N'SINAN', N'TASDEMIR', N'Link giriniz', N'05458888888', N'stasdemir@hotmail.com', N'5008', N'HV SVN')
INSERT [dbo].[TBL_OGRENCI] ([OGRID], [OGRNO], [OGRAD], [OGRSOYAD], [OGRFOTO], [OGRTELEFON], [OGRMAIL], [OGRSIFRE], [OGRSINIF]) VALUES (9, N'5009', N'IZZET TUNA', N'OZTURK', N'Link giriniz', N'05459999999', N'itozturk@hotmail.com', N'5009', N'ISTIHKAM')
INSERT [dbo].[TBL_OGRENCI] ([OGRID], [OGRNO], [OGRAD], [OGRSOYAD], [OGRFOTO], [OGRTELEFON], [OGRMAIL], [OGRSIFRE], [OGRSINIF]) VALUES (10, N'5010', N'OZGUR', N'KURT', N'Link giriniz', N'05430000000', N'okurt@hotmail.com', N'5010', N'MUHABERE')
INSERT [dbo].[TBL_OGRENCI] ([OGRID], [OGRNO], [OGRAD], [OGRSOYAD], [OGRFOTO], [OGRTELEFON], [OGRMAIL], [OGRSIFRE], [OGRSINIF]) VALUES (11, N'5011', N'EMRE', N'POLAT', N'Link giriniz', N'05431111111', N'epolat@hotmail.com', N'5011', N'HV SVN')
INSERT [dbo].[TBL_OGRENCI] ([OGRID], [OGRNO], [OGRAD], [OGRSOYAD], [OGRFOTO], [OGRTELEFON], [OGRMAIL], [OGRSIFRE], [OGRSINIF]) VALUES (12, N'5012', N'ERKAN', N'BASCI', N'Link giriniz', N'05432222222', N'ebasci@hotmail.com', N'5012', N'TOPCU')
INSERT [dbo].[TBL_OGRENCI] ([OGRID], [OGRNO], [OGRAD], [OGRSOYAD], [OGRFOTO], [OGRTELEFON], [OGRMAIL], [OGRSIFRE], [OGRSINIF]) VALUES (13, N'5013', N'ABBAS', N'TURKOGLU', N'Link giriniz', N'05433333333', N'aturkoglu@hotmail.com', N'5013', N'TOPCU')
SET IDENTITY_INSERT [dbo].[TBL_OGRENCI] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_OGRETMEN] ON 

INSERT [dbo].[TBL_OGRETMEN] ([OGRTID], [OGRTNO], [OGRTADSOYAD], [OGRTFOTO], [OGRTBRANS], [OGRTSIFRE]) VALUES (1, N'1001', N'AHMET BEHCET', NULL, 1, N'1001')
INSERT [dbo].[TBL_OGRETMEN] ([OGRTID], [OGRTNO], [OGRTADSOYAD], [OGRTFOTO], [OGRTBRANS], [OGRTSIFRE]) VALUES (2, N'1002', N'CEMAL CETIN', NULL, 2, N'1002')
INSERT [dbo].[TBL_OGRETMEN] ([OGRTID], [OGRTNO], [OGRTADSOYAD], [OGRTFOTO], [OGRTBRANS], [OGRTSIFRE]) VALUES (3, N'1003', N'DAVUT EKREM', NULL, 3, N'1003')
INSERT [dbo].[TBL_OGRETMEN] ([OGRTID], [OGRTNO], [OGRTADSOYAD], [OGRTFOTO], [OGRTBRANS], [OGRTSIFRE]) VALUES (4, N'1004', N'FATIH GALIP', NULL, 4, N'1004')
INSERT [dbo].[TBL_OGRETMEN] ([OGRTID], [OGRTNO], [OGRTADSOYAD], [OGRTFOTO], [OGRTBRANS], [OGRTSIFRE]) VALUES (5, N'1005', N'HASAN IRMAK', NULL, 5, N'1005')
INSERT [dbo].[TBL_OGRETMEN] ([OGRTID], [OGRTNO], [OGRTADSOYAD], [OGRTFOTO], [OGRTBRANS], [OGRTSIFRE]) VALUES (6, N'1006', N'KEMAL LOKUM', NULL, 6, N'1006')
INSERT [dbo].[TBL_OGRETMEN] ([OGRTID], [OGRTNO], [OGRTADSOYAD], [OGRTFOTO], [OGRTBRANS], [OGRTSIFRE]) VALUES (7, N'1007', N'MEHMET NIZAM', NULL, 7, N'1007')
INSERT [dbo].[TBL_OGRETMEN] ([OGRTID], [OGRTNO], [OGRTADSOYAD], [OGRTFOTO], [OGRTBRANS], [OGRTSIFRE]) VALUES (8, N'1008', N'OSMAN OMER', NULL, 8, N'1008')
INSERT [dbo].[TBL_OGRETMEN] ([OGRTID], [OGRTNO], [OGRTADSOYAD], [OGRTFOTO], [OGRTBRANS], [OGRTSIFRE]) VALUES (9, N'1009', N'POYRAZ RASIM', NULL, 9, N'1009')
INSERT [dbo].[TBL_OGRETMEN] ([OGRTID], [OGRTNO], [OGRTADSOYAD], [OGRTFOTO], [OGRTBRANS], [OGRTSIFRE]) VALUES (10, N'1010', N'SERHAT SABAN', NULL, 10, N'1010')
INSERT [dbo].[TBL_OGRETMEN] ([OGRTID], [OGRTNO], [OGRTADSOYAD], [OGRTFOTO], [OGRTBRANS], [OGRTSIFRE]) VALUES (11, N'1011', N'TEMEL UFUK', NULL, 11, N'1011')
INSERT [dbo].[TBL_OGRETMEN] ([OGRTID], [OGRTNO], [OGRTADSOYAD], [OGRTFOTO], [OGRTBRANS], [OGRTSIFRE]) VALUES (12, N'1012', N'UMIT VEHBI', NULL, 12, N'1012')
INSERT [dbo].[TBL_OGRETMEN] ([OGRTID], [OGRTNO], [OGRTADSOYAD], [OGRTFOTO], [OGRTBRANS], [OGRTSIFRE]) VALUES (13, N'1013', N'YAHYA ZUHTU', NULL, 13, N'1013')
SET IDENTITY_INSERT [dbo].[TBL_OGRETMEN] OFF
GO
ALTER TABLE [dbo].[TBL_MESAJLAR] ADD  CONSTRAINT [DF_TBL_MESAJLAR_TARIH]  DEFAULT (getdate()) FOR [TARIH]
GO
ALTER TABLE [dbo].[TBL_NOTLAR] ADD  CONSTRAINT [DF_TBL_NOTLAR_SINAV1]  DEFAULT ((0)) FOR [SINAV1]
GO
ALTER TABLE [dbo].[TBL_NOTLAR] ADD  CONSTRAINT [DF_TBL_NOTLAR_SINAV2]  DEFAULT ((0)) FOR [SINAV2]
GO
ALTER TABLE [dbo].[TBL_NOTLAR] ADD  CONSTRAINT [DF_TBL_NOTLAR_SINAV3]  DEFAULT ((0)) FOR [SINAV3]
GO
ALTER TABLE [dbo].[TBL_NOTLAR] ADD  CONSTRAINT [DF_TBL_NOTLAR_ORTALAMA]  DEFAULT ((0)) FOR [ORTALAMA]
GO
ALTER TABLE [dbo].[TBL_NOTLAR] ADD  CONSTRAINT [DF_TBL_NOTLAR_DURUM]  DEFAULT ((0)) FOR [DURUM]
GO
ALTER TABLE [dbo].[TBL_DUYURULAR]  WITH CHECK ADD  CONSTRAINT [FK_TBL_DUYURULAR_TBL_OGRETMEN] FOREIGN KEY([DUYURUOGRT])
REFERENCES [dbo].[TBL_OGRETMEN] ([OGRTID])
GO
ALTER TABLE [dbo].[TBL_DUYURULAR] CHECK CONSTRAINT [FK_TBL_DUYURULAR_TBL_OGRETMEN]
GO
ALTER TABLE [dbo].[TBL_NOTLAR]  WITH CHECK ADD  CONSTRAINT [FK_TBL_NOTLAR_TBL_DERSLER] FOREIGN KEY([DERSNID])
REFERENCES [dbo].[TBL_DERSLER] ([DERSID])
GO
ALTER TABLE [dbo].[TBL_NOTLAR] CHECK CONSTRAINT [FK_TBL_NOTLAR_TBL_DERSLER]
GO
ALTER TABLE [dbo].[TBL_NOTLAR]  WITH CHECK ADD  CONSTRAINT [FK_TBL_NOTLAR_TBL_OGRENCI] FOREIGN KEY([OGRENCINID])
REFERENCES [dbo].[TBL_OGRENCI] ([OGRID])
GO
ALTER TABLE [dbo].[TBL_NOTLAR] CHECK CONSTRAINT [FK_TBL_NOTLAR_TBL_OGRENCI]
GO
ALTER TABLE [dbo].[TBL_OGRETMEN]  WITH CHECK ADD  CONSTRAINT [FK_TBL_OGRETMEN_TBL_DERSLER] FOREIGN KEY([OGRTBRANS])
REFERENCES [dbo].[TBL_DERSLER] ([DERSID])
GO
ALTER TABLE [dbo].[TBL_OGRETMEN] CHECK CONSTRAINT [FK_TBL_OGRETMEN_TBL_DERSLER]
GO
/****** Object:  StoredProcedure [dbo].[DuyuruSayisi]    Script Date: 09.06.2021 10:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DuyuruSayisi]
AS
	SET NOCOUNT ON;
SELECT        COUNT(*)
FROM            TBL_DUYURULAR
GO
/****** Object:  StoredProcedure [dbo].[GRAF1]    Script Date: 09.06.2021 10:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GRAF1]
AS
SELECT TOP 5 TBL_DERSLER.DERSAD, COUNT(*) AS SAYI FROM TBL_NOTLAR
INNER JOIN TBL_DERSLER ON TBL_DERSLER.DERSID=TBL_NOTLAR.DERSNID
GROUP BY TBL_DERSLER.DERSAD
ORDER BY SAYI DESC
GO
/****** Object:  StoredProcedure [dbo].[GRAF2]    Script Date: 09.06.2021 10:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GRAF2]
AS
SELECT OGRSINIF, COUNT(*) FROM TBL_OGRENCI
GROUP BY OGRSINIF
GO
/****** Object:  StoredProcedure [dbo].[GRAF3]    Script Date: 09.06.2021 10:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GRAF3]
AS
SELECT TOP 5 (TBL_OGRENCI.OGRAD + ' ' + TBL_OGRENCI.OGRSOYAD) AS OGRENCI, ORTALAMA 
FROM TBL_NOTLAR 
INNER JOIN TBL_OGRENCI ON
TBL_NOTLAR.OGRENCINID=TBL_OGRENCI.OGRID
ORDER BY ORTALAMA DESC
GO
/****** Object:  StoredProcedure [dbo].[GRAF4]    Script Date: 09.06.2021 10:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GRAF4]
AS
SELECT TOP 5 (TBL_OGRENCI.OGRAD + ' ' + TBL_OGRENCI.OGRSOYAD) AS OGRENCI, ORTALAMA 
FROM TBL_NOTLAR 
INNER JOIN TBL_OGRENCI ON
TBL_NOTLAR.OGRENCINID=TBL_OGRENCI.OGRID
ORDER BY ORTALAMA ASC
GO
/****** Object:  StoredProcedure [dbo].[OgrNotlar]    Script Date: 09.06.2021 10:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OgrNotlar]
AS
SELECT NOTID, OGRENCINID, (OGRAD + ' ' + OGRSOYAD) AS 'OGRENCIADSOYAD', OGRNO, DERSAD, SINAV1, SINAV2, SINAV3, ORTALAMA, DURUM 
FROM TBL_NOTLAR 
INNER JOIN TBL_OGRENCI ON
TBL_OGRENCI.OGRID=TBL_NOTLAR.OGRENCINID
INNER JOIN TBL_DERSLER ON
TBL_DERSLER.DERSID=TBL_NOTLAR.DERSNID
GO
USE [master]
GO
ALTER DATABASE [DBProjeOBS] SET  READ_WRITE 
GO
