USE [master]
GO
/****** Object:  Database [CarRentalProje]    Script Date: 11.01.2024 20:40:39 ******/
CREATE DATABASE [CarRentalProje]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CarRentalProje', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CarRentalProje.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CarRentalProje_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CarRentalProje_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [CarRentalProje] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CarRentalProje].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CarRentalProje] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CarRentalProje] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CarRentalProje] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CarRentalProje] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CarRentalProje] SET ARITHABORT OFF 
GO
ALTER DATABASE [CarRentalProje] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CarRentalProje] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CarRentalProje] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CarRentalProje] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CarRentalProje] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CarRentalProje] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CarRentalProje] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CarRentalProje] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CarRentalProje] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CarRentalProje] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CarRentalProje] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CarRentalProje] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CarRentalProje] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CarRentalProje] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CarRentalProje] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CarRentalProje] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CarRentalProje] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CarRentalProje] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CarRentalProje] SET  MULTI_USER 
GO
ALTER DATABASE [CarRentalProje] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CarRentalProje] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CarRentalProje] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CarRentalProje] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CarRentalProje] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CarRentalProje] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CarRentalProje] SET QUERY_STORE = ON
GO
ALTER DATABASE [CarRentalProje] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CarRentalProje]
GO
/****** Object:  Table [dbo].[Araclar]    Script Date: 11.01.2024 20:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Araclar](
	[AracID] [int] IDENTITY(1,1) NOT NULL,
	[Model] [nchar](50) NOT NULL,
	[VitesTuru] [nchar](12) NOT NULL,
	[Plaka] [nchar](11) NOT NULL,
	[YakitTuru] [nchar](10) NOT NULL,
	[OfisID] [int] NOT NULL,
 CONSTRAINT [PK_Araclar_1] PRIMARY KEY CLUSTERED 
(
	[AracID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Islemler]    Script Date: 11.01.2024 20:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Islemler](
	[IslemID] [int] IDENTITY(1,1) NOT NULL,
	[IslemTarihi] [date] NOT NULL,
	[KiralikID] [int] NOT NULL,
	[AracID] [int] NOT NULL,
	[YoneticiID] [int] NOT NULL,
	[MusteriID] [int] NOT NULL,
 CONSTRAINT [PK_Islemler] PRIMARY KEY CLUSTERED 
(
	[IslemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[İslemler]    Script Date: 11.01.2024 20:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[İslemler](
	[IS] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kiralama]    Script Date: 11.01.2024 20:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kiralama](
	[KiralikID] [int] IDENTITY(1,1) NOT NULL,
	[KiralıkNo] [int] NOT NULL,
	[Odeme] [nchar](12) NOT NULL,
	[BaslangicTarih] [date] NOT NULL,
	[BitisTarih] [date] NOT NULL,
 CONSTRAINT [PK_Kiralama] PRIMARY KEY CLUSTERED 
(
	[KiralikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteri]    Script Date: 11.01.2024 20:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri](
	[MusteriID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nchar](50) NOT NULL,
	[Soyad] [nchar](50) NOT NULL,
	[Telefon] [nchar](11) NOT NULL,
	[Adres] [nchar](50) NOT NULL,
	[SurucuBelgesi] [nchar](2) NOT NULL,
 CONSTRAINT [PK_Musteri] PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ofisler]    Script Date: 11.01.2024 20:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ofisler](
	[OfisID] [int] IDENTITY(1,1) NOT NULL,
	[Ofis_adres] [nchar](250) NULL,
	[Ofis_sehir] [nchar](20) NULL,
	[Ofis_telefon] [nchar](12) NULL,
 CONSTRAINT [PK_Ofisler] PRIMARY KEY CLUSTERED 
(
	[OfisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raporlar]    Script Date: 11.01.2024 20:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raporlar](
	[ReportID] [int] IDENTITY(1,1) NOT NULL,
	[IslemID] [int] NOT NULL,
	[KiralikID] [int] NOT NULL,
	[RaporTarihi] [date] NOT NULL,
 CONSTRAINT [PK_Raporlar] PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yonetici]    Script Date: 11.01.2024 20:40:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yonetici](
	[YoneticiID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nchar](50) NOT NULL,
	[Soyad] [nchar](50) NOT NULL,
	[YoneticiMail] [nchar](50) NOT NULL,
	[YoneticiSifre] [nchar](12) NOT NULL,
 CONSTRAINT [PK_Yonetici] PRIMARY KEY CLUSTERED 
(
	[YoneticiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Araclar] ON 

INSERT [dbo].[Araclar] ([AracID], [Model], [VitesTuru], [Plaka], [YakitTuru], [OfisID]) VALUES (1, N'2020                                              ', N'Otomatik    ', N'34ABC123   ', N'Dizel     ', 1)
INSERT [dbo].[Araclar] ([AracID], [Model], [VitesTuru], [Plaka], [YakitTuru], [OfisID]) VALUES (2, N'2023                                              ', N'Manuel      ', N'06BB233    ', N'Dizel     ', 2)
INSERT [dbo].[Araclar] ([AracID], [Model], [VitesTuru], [Plaka], [YakitTuru], [OfisID]) VALUES (3, N'2022                                              ', N'Otomatik    ', N'34AB1903   ', N'Dizel     ', 1)
INSERT [dbo].[Araclar] ([AracID], [Model], [VitesTuru], [Plaka], [YakitTuru], [OfisID]) VALUES (4, N'2022                                              ', N'Manuel      ', N'06D1884    ', N'Dizel     ', 2)
SET IDENTITY_INSERT [dbo].[Araclar] OFF
GO
SET IDENTITY_INSERT [dbo].[Islemler] ON 

INSERT [dbo].[Islemler] ([IslemID], [IslemTarihi], [KiralikID], [AracID], [YoneticiID], [MusteriID]) VALUES (2, CAST(N'2024-01-11' AS Date), 1, 1, 1, 1)
INSERT [dbo].[Islemler] ([IslemID], [IslemTarihi], [KiralikID], [AracID], [YoneticiID], [MusteriID]) VALUES (3, CAST(N'2024-01-11' AS Date), 2, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Islemler] OFF
GO
SET IDENTITY_INSERT [dbo].[Kiralama] ON 

INSERT [dbo].[Kiralama] ([KiralikID], [KiralıkNo], [Odeme], [BaslangicTarih], [BitisTarih]) VALUES (1, 2, N'KrediKartı  ', CAST(N'2024-01-23' AS Date), CAST(N'2024-01-31' AS Date))
INSERT [dbo].[Kiralama] ([KiralikID], [KiralıkNo], [Odeme], [BaslangicTarih], [BitisTarih]) VALUES (2, 1, N'Nakit       ', CAST(N'2024-01-11' AS Date), CAST(N'2024-01-19' AS Date))
SET IDENTITY_INSERT [dbo].[Kiralama] OFF
GO
SET IDENTITY_INSERT [dbo].[Musteri] ON 

INSERT [dbo].[Musteri] ([MusteriID], [Ad], [Soyad], [Telefon], [Adres], [SurucuBelgesi]) VALUES (1, N'Veli                                              ', N'Kaya                                              ', N'532053565  ', N'Ankara                                            ', N'B ')
INSERT [dbo].[Musteri] ([MusteriID], [Ad], [Soyad], [Telefon], [Adres], [SurucuBelgesi]) VALUES (2, N'Mehmet                                            ', N'Demir                                             ', N'5328955523 ', N'Düzce                                             ', N'B ')
INSERT [dbo].[Musteri] ([MusteriID], [Ad], [Soyad], [Telefon], [Adres], [SurucuBelgesi]) VALUES (3, N'Ali                                               ', N'Veli                                              ', N'5446623200 ', N'Istanbul                                          ', N'B ')
SET IDENTITY_INSERT [dbo].[Musteri] OFF
GO
SET IDENTITY_INSERT [dbo].[Ofisler] ON 

INSERT [dbo].[Ofisler] ([OfisID], [Ofis_adres], [Ofis_sehir], [Ofis_telefon]) VALUES (1, N'Maltepe                                                                                                                                                                                                                                                   ', N'İstanbul            ', N'02163300011 ')
INSERT [dbo].[Ofisler] ([OfisID], [Ofis_adres], [Ofis_sehir], [Ofis_telefon]) VALUES (2, N'Kızılay                                                                                                                                                                                                                                                   ', N'Ankara              ', N'03123300011 ')
INSERT [dbo].[Ofisler] ([OfisID], [Ofis_adres], [Ofis_sehir], [Ofis_telefon]) VALUES (3, N'Merkez                                                                                                                                                                                                                                                    ', N'Düzce               ', N'03804110011 ')
SET IDENTITY_INSERT [dbo].[Ofisler] OFF
GO
SET IDENTITY_INSERT [dbo].[Raporlar] ON 

INSERT [dbo].[Raporlar] ([ReportID], [IslemID], [KiralikID], [RaporTarihi]) VALUES (1, 1, 1, CAST(N'2024-01-23' AS Date))
SET IDENTITY_INSERT [dbo].[Raporlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Yonetici] ON 

INSERT [dbo].[Yonetici] ([YoneticiID], [Ad], [Soyad], [YoneticiMail], [YoneticiSifre]) VALUES (1, N'Ahmet                                             ', N'Can                                               ', N'ahmet@gmail.com                                   ', N'ABC123      ')
SET IDENTITY_INSERT [dbo].[Yonetici] OFF
GO
ALTER TABLE [dbo].[Araclar]  WITH CHECK ADD  CONSTRAINT [FK_Araclar_Ofisler] FOREIGN KEY([OfisID])
REFERENCES [dbo].[Ofisler] ([OfisID])
GO
ALTER TABLE [dbo].[Araclar] CHECK CONSTRAINT [FK_Araclar_Ofisler]
GO
ALTER TABLE [dbo].[Islemler]  WITH CHECK ADD  CONSTRAINT [FK_Islemler_Araclar] FOREIGN KEY([AracID])
REFERENCES [dbo].[Araclar] ([AracID])
GO
ALTER TABLE [dbo].[Islemler] CHECK CONSTRAINT [FK_Islemler_Araclar]
GO
ALTER TABLE [dbo].[Islemler]  WITH CHECK ADD  CONSTRAINT [FK_Islemler_Kiralama] FOREIGN KEY([KiralikID])
REFERENCES [dbo].[Kiralama] ([KiralikID])
GO
ALTER TABLE [dbo].[Islemler] CHECK CONSTRAINT [FK_Islemler_Kiralama]
GO
ALTER TABLE [dbo].[Islemler]  WITH CHECK ADD  CONSTRAINT [FK_Islemler_Musteri] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteri] ([MusteriID])
GO
ALTER TABLE [dbo].[Islemler] CHECK CONSTRAINT [FK_Islemler_Musteri]
GO
ALTER TABLE [dbo].[Islemler]  WITH CHECK ADD  CONSTRAINT [FK_Islemler_Yonetici] FOREIGN KEY([YoneticiID])
REFERENCES [dbo].[Yonetici] ([YoneticiID])
GO
ALTER TABLE [dbo].[Islemler] CHECK CONSTRAINT [FK_Islemler_Yonetici]
GO
USE [master]
GO
ALTER DATABASE [CarRentalProje] SET  READ_WRITE 
GO
