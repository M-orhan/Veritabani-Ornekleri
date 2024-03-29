USE [master]
GO
/****** Object:  Database [OgrenciDB]    Script Date: 12.01.2024 18:04:49 ******/
CREATE DATABASE [OgrenciDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OgrenciDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\OgrenciDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OgrenciDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\OgrenciDB_log.ldf' , SIZE = 10240KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [OgrenciDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OgrenciDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OgrenciDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OgrenciDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OgrenciDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OgrenciDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OgrenciDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [OgrenciDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OgrenciDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OgrenciDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OgrenciDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OgrenciDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OgrenciDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OgrenciDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OgrenciDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OgrenciDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OgrenciDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OgrenciDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OgrenciDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OgrenciDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OgrenciDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OgrenciDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OgrenciDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OgrenciDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OgrenciDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OgrenciDB] SET  MULTI_USER 
GO
ALTER DATABASE [OgrenciDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OgrenciDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OgrenciDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OgrenciDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OgrenciDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OgrenciDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OgrenciDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [OgrenciDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [OgrenciDB]
GO
/****** Object:  Table [dbo].[TblBolum]    Script Date: 12.01.2024 18:04:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblBolum](
	[BolumID] [int] IDENTITY(1,1) NOT NULL,
	[BolumAd] [nchar](30) NOT NULL,
 CONSTRAINT [PK_TblBolum] PRIMARY KEY CLUSTERED 
(
	[BolumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblDers]    Script Date: 12.01.2024 18:04:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDers](
	[DersID] [int] IDENTITY(100,1) NOT NULL,
	[DersAdi] [nchar](30) NOT NULL,
	[DersKredi] [tinyint] NOT NULL,
 CONSTRAINT [PK_TblDers] PRIMARY KEY CLUSTERED 
(
	[DersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tblil]    Script Date: 12.01.2024 18:04:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tblil](
	[ilID] [int] NOT NULL,
	[ilAd] [nchar](30) NULL,
 CONSTRAINT [PK_Tblil] PRIMARY KEY CLUSTERED 
(
	[ilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblNot]    Script Date: 12.01.2024 18:04:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblNot](
	[OgrID] [int] NOT NULL,
	[DersID] [int] NOT NULL,
	[VizeNotu] [tinyint] NULL,
	[FinalNotu] [tinyint] NULL,
 CONSTRAINT [PK_TblNot] PRIMARY KEY CLUSTERED 
(
	[OgrID] ASC,
	[DersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOgrenci]    Script Date: 12.01.2024 18:04:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOgrenci](
	[OgrID] [int] IDENTITY(1000,1) NOT NULL,
	[Ad] [nchar](50) NOT NULL,
	[Soyad] [nchar](50) NOT NULL,
	[Tel] [nvarchar](12) NOT NULL,
	[ilID] [int] NOT NULL,
	[BolumID] [int] NOT NULL,
	[Sinif] [tinyint] NOT NULL,
 CONSTRAINT [PK_TblOgrenci] PRIMARY KEY CLUSTERED 
(
	[OgrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOgretmen]    Script Date: 12.01.2024 18:04:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOgretmen](
	[OgretmenID] [int] IDENTITY(200,1) NOT NULL,
	[OgretmenAd] [nchar](30) NOT NULL,
	[OgretmenSoyad] [nchar](30) NOT NULL,
	[OgretmenTel] [nvarchar](12) NOT NULL,
	[DersID] [int] NOT NULL,
 CONSTRAINT [PK_TblOgretmen] PRIMARY KEY CLUSTERED 
(
	[OgretmenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblBolum] ON 

INSERT [dbo].[TblBolum] ([BolumID], [BolumAd]) VALUES (1, N'Bilg. Muh.                    ')
INSERT [dbo].[TblBolum] ([BolumID], [BolumAd]) VALUES (2, N'Yazılım Muh.                  ')
INSERT [dbo].[TblBolum] ([BolumID], [BolumAd]) VALUES (3, N'Elektrik-Elektronik Muh.      ')
SET IDENTITY_INSERT [dbo].[TblBolum] OFF
GO
SET IDENTITY_INSERT [dbo].[TblDers] ON 

INSERT [dbo].[TblDers] ([DersID], [DersAdi], [DersKredi]) VALUES (100, N'Bilg. Prog-1
                ', 4)
INSERT [dbo].[TblDers] ([DersID], [DersAdi], [DersKredi]) VALUES (101, N'Mat-1
                       ', 2)
INSERT [dbo].[TblDers] ([DersID], [DersAdi], [DersKredi]) VALUES (102, N'Fizik-1
                     ', 2)
INSERT [dbo].[TblDers] ([DersID], [DersAdi], [DersKredi]) VALUES (103, N'Algoritma                     ', 2)
INSERT [dbo].[TblDers] ([DersID], [DersAdi], [DersKredi]) VALUES (104, N'VeriTabanıSis.                ', 4)
INSERT [dbo].[TblDers] ([DersID], [DersAdi], [DersKredi]) VALUES (105, N'YapayZeka                     ', 3)
INSERT [dbo].[TblDers] ([DersID], [DersAdi], [DersKredi]) VALUES (106, N'Mikroİşlemci                  ', 3)
SET IDENTITY_INSERT [dbo].[TblDers] OFF
GO
INSERT [dbo].[Tblil] ([ilID], [ilAd]) VALUES (6, N'Ankara                        ')
INSERT [dbo].[Tblil] ([ilID], [ilAd]) VALUES (34, N'Istanbul                      ')
GO
SET IDENTITY_INSERT [dbo].[TblOgrenci] ON 

INSERT [dbo].[TblOgrenci] ([OgrID], [Ad], [Soyad], [Tel], [ilID], [BolumID], [Sinif]) VALUES (1000, N'Celal                                             ', N'Gündoğdu                                          ', N'5554441215
', 6, 1, 1)
INSERT [dbo].[TblOgrenci] ([OgrID], [Ad], [Soyad], [Tel], [ilID], [BolumID], [Sinif]) VALUES (1001, N'Özlem                                             ', N'Yılmaz                                            ', N'5556668899
', 6, 1, 1)
INSERT [dbo].[TblOgrenci] ([OgrID], [Ad], [Soyad], [Tel], [ilID], [BolumID], [Sinif]) VALUES (1002, N'Ali                                               ', N'Toprak                                            ', N'5551112233
', 34, 1, 2)
INSERT [dbo].[TblOgrenci] ([OgrID], [Ad], [Soyad], [Tel], [ilID], [BolumID], [Sinif]) VALUES (1003, N'Zeynep                                            ', N'Ay                                                ', N'5552221133
', 6, 1, 3)
INSERT [dbo].[TblOgrenci] ([OgrID], [Ad], [Soyad], [Tel], [ilID], [BolumID], [Sinif]) VALUES (1004, N'Mustafa                                           ', N'Sağlam                                            ', N'5559991122
', 6, 2, 2)
INSERT [dbo].[TblOgrenci] ([OgrID], [Ad], [Soyad], [Tel], [ilID], [BolumID], [Sinif]) VALUES (1005, N'Murat                                             ', N'Koç                                               ', N'5327778899
', 6, 3, 2)
SET IDENTITY_INSERT [dbo].[TblOgrenci] OFF
GO
SET IDENTITY_INSERT [dbo].[TblOgretmen] ON 

INSERT [dbo].[TblOgretmen] ([OgretmenID], [OgretmenAd], [OgretmenSoyad], [OgretmenTel], [DersID]) VALUES (206, N'Ali                           ', N'Güneş                         ', N'5554443322
', 100)
INSERT [dbo].[TblOgretmen] ([OgretmenID], [OgretmenAd], [OgretmenSoyad], [OgretmenTel], [DersID]) VALUES (207, N'Murat                         ', N'Yıldırım                      ', N'5558887799
', 101)
INSERT [dbo].[TblOgretmen] ([OgretmenID], [OgretmenAd], [OgretmenSoyad], [OgretmenTel], [DersID]) VALUES (208, N'Hilal                         ', N'Can                           ', N'5556651230
', 102)
INSERT [dbo].[TblOgretmen] ([OgretmenID], [OgretmenAd], [OgretmenSoyad], [OgretmenTel], [DersID]) VALUES (209, N'Halil                         ', N'Kaya                          ', N'5554447711
', 103)
INSERT [dbo].[TblOgretmen] ([OgretmenID], [OgretmenAd], [OgretmenSoyad], [OgretmenTel], [DersID]) VALUES (210, N'Celal                         ', N'Gün                           ', N'5556668855
', 104)
INSERT [dbo].[TblOgretmen] ([OgretmenID], [OgretmenAd], [OgretmenSoyad], [OgretmenTel], [DersID]) VALUES (211, N'Ayşe                          ', N'Kılıç                         ', N'5552223311
', 105)
INSERT [dbo].[TblOgretmen] ([OgretmenID], [OgretmenAd], [OgretmenSoyad], [OgretmenTel], [DersID]) VALUES (212, N'Özlem                         ', N'Kale                          ', N'5431112332
', 106)
SET IDENTITY_INSERT [dbo].[TblOgretmen] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unq_Telefon]    Script Date: 12.01.2024 18:04:49 ******/
ALTER TABLE [dbo].[TblOgrenci] ADD  CONSTRAINT [Unq_Telefon] UNIQUE NONCLUSTERED 
(
	[Tel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Unq_OgretmenTel]    Script Date: 12.01.2024 18:04:49 ******/
ALTER TABLE [dbo].[TblOgretmen] ADD  CONSTRAINT [Unq_OgretmenTel] UNIQUE NONCLUSTERED 
(
	[OgretmenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TblNot]  WITH CHECK ADD  CONSTRAINT [FK_TblNot_TblDers] FOREIGN KEY([DersID])
REFERENCES [dbo].[TblDers] ([DersID])
GO
ALTER TABLE [dbo].[TblNot] CHECK CONSTRAINT [FK_TblNot_TblDers]
GO
ALTER TABLE [dbo].[TblNot]  WITH CHECK ADD  CONSTRAINT [FK_TblNot_TblOgrenci] FOREIGN KEY([OgrID])
REFERENCES [dbo].[TblOgrenci] ([OgrID])
GO
ALTER TABLE [dbo].[TblNot] CHECK CONSTRAINT [FK_TblNot_TblOgrenci]
GO
ALTER TABLE [dbo].[TblOgrenci]  WITH CHECK ADD  CONSTRAINT [FK_TblOgrenci_TblBolum] FOREIGN KEY([BolumID])
REFERENCES [dbo].[TblBolum] ([BolumID])
GO
ALTER TABLE [dbo].[TblOgrenci] CHECK CONSTRAINT [FK_TblOgrenci_TblBolum]
GO
ALTER TABLE [dbo].[TblOgrenci]  WITH CHECK ADD  CONSTRAINT [FK_TblOgrenci_Tblil] FOREIGN KEY([ilID])
REFERENCES [dbo].[Tblil] ([ilID])
GO
ALTER TABLE [dbo].[TblOgrenci] CHECK CONSTRAINT [FK_TblOgrenci_Tblil]
GO
ALTER TABLE [dbo].[TblOgretmen]  WITH CHECK ADD  CONSTRAINT [FK_TblOgretmen_TblDers] FOREIGN KEY([DersID])
REFERENCES [dbo].[TblDers] ([DersID])
GO
ALTER TABLE [dbo].[TblOgretmen] CHECK CONSTRAINT [FK_TblOgretmen_TblDers]
GO
ALTER TABLE [dbo].[TblNot]  WITH CHECK ADD  CONSTRAINT [CK_TblNot] CHECK  (([VizeNotu]<(101)))
GO
ALTER TABLE [dbo].[TblNot] CHECK CONSTRAINT [CK_TblNot]
GO
ALTER TABLE [dbo].[TblNot]  WITH CHECK ADD  CONSTRAINT [CK_TblNot_1] CHECK  (([FinalNotu]<(101)))
GO
ALTER TABLE [dbo].[TblNot] CHECK CONSTRAINT [CK_TblNot_1]
GO
ALTER TABLE [dbo].[TblOgrenci]  WITH CHECK ADD  CONSTRAINT [CK_TblOgrenci] CHECK  (([Sinif]<(7)))
GO
ALTER TABLE [dbo].[TblOgrenci] CHECK CONSTRAINT [CK_TblOgrenci]
GO
USE [master]
GO
ALTER DATABASE [OgrenciDB] SET  READ_WRITE 
GO
