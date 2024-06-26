USE [EhodBoutiqueEnLigne]
GO
ALTER TABLE [dbo].[OrderLine] DROP CONSTRAINT [FK_OrderLineEntity_OrderEntity_OrderEntityId]
GO
ALTER TABLE [dbo].[OrderLine] DROP CONSTRAINT [FK__OrderLine__Produ__52593CB8]
GO
/****** Object:  Index [IX_OrderLineEntity_OrderEntityId]    Script Date: 13/03/2024 18:34:59 ******/
DROP INDEX [IX_OrderLineEntity_OrderEntityId] ON [dbo].[OrderLine]
GO
/****** Object:  Index [IX_OrderLine_ProductId]    Script Date: 13/03/2024 18:34:59 ******/
DROP INDEX [IX_OrderLine_ProductId] ON [dbo].[OrderLine]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 13/03/2024 18:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[OrderLine]    Script Date: 13/03/2024 18:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderLine]') AND type in (N'U'))
DROP TABLE [dbo].[OrderLine]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 13/03/2024 18:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND type in (N'U'))
DROP TABLE [dbo].[Order]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 13/03/2024 18:34:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
USE [master]
GO
/****** Object:  Database [EhodBoutiqueEnLigne]    Script Date: 13/03/2024 18:34:59 ******/
DROP DATABASE [EhodBoutiqueEnLigne]
GO
/****** Object:  Database [EhodBoutiqueEnLigne]    Script Date: 13/03/2024 18:34:59 ******/
CREATE DATABASE [EhodBoutiqueEnLigne]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'P3Referential-2f561d3b-493f-46fd-83c9-6e2643e7bd0a', FILENAME = N'C:\Programmes\Microsoft SQL Server\MSSQL16.SERVEURSQL2022\MSSQL\DATA\P3Referential-2f561d3b-493f-46fd-83c9-6e2643e7bd0a.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'P3Referential-2f561d3b-493f-46fd-83c9-6e2643e7bd0a_log', FILENAME = N'C:\Programmes\Microsoft SQL Server\MSSQL16.SERVEURSQL2022\MSSQL\DATA\P3Referential-2f561d3b-493f-46fd-83c9-6e2643e7bd0a_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EhodBoutiqueEnLigne].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET ARITHABORT OFF 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET  MULTI_USER 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET QUERY_STORE = ON
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200)
GO
USE [EhodBoutiqueEnLigne]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 13/03/2024 18:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 13/03/2024 18:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Zip] [nvarchar](max) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderLine]    Script Date: 13/03/2024 18:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLine](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderLine] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 13/03/2024 18:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Details] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190127080942_InitialMigration', N'6.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190128010341_MakeOrderLineForeignKeysCascaseDelete', N'6.0.11')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [Address], [City], [Country], [Date], [Name], [Zip]) VALUES (1, N'Bureau de Poste de Ponty', N'Dakar', N'Sénégal', CAST(N'2023-12-16T08:37:34.4248739' AS DateTime2), N'Elhadji Ousmane Diallo', N'21703')
INSERT [dbo].[Order] ([Id], [Address], [City], [Country], [Date], [Name], [Zip]) VALUES (2, N'jj', N'hh', N's', CAST(N'2024-03-13T13:29:38.5637522' AS DateTime2), N'ehod', N'hh')
INSERT [dbo].[Order] ([Id], [Address], [City], [Country], [Date], [Name], [Zip]) VALUES (3, N'NORD-FOIRE', N'DAKAR', N'Sénégal', CAST(N'2024-03-13T15:58:15.9509979' AS DateTime2), N'EHOD', N'21703')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderLine] ON 

INSERT [dbo].[OrderLine] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (1, 1, 1, 3)
INSERT [dbo].[OrderLine] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (2, 2, 1, 1)
INSERT [dbo].[OrderLine] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (3, 2, 2, 1)
INSERT [dbo].[OrderLine] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (4, 3, 1, 1)
INSERT [dbo].[OrderLine] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (5, 3, 14, 1)
SET IDENTITY_INSERT [dbo].[OrderLine] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Description], [Details], [Name], [Price], [Quantity]) VALUES (1, N'Clé USB - 64GB + Porte-clés - Argent', NULL, N'Clé USB - 64GB Samsung', 3450, 8)
INSERT [dbo].[Product] ([Id], [Description], [Details], [Name], [Price], [Quantity]) VALUES (2, N'Cuisinière à Gaz 4 Feux – RGCN-50- SB– 50x50 cm – 100% Inox', NULL, N'Cuisinière à Gaz 4 Feux ', 115000, 19)
INSERT [dbo].[Product] ([Id], [Description], [Details], [Name], [Price], [Quantity]) VALUES (3, N'Service de couverts 16 pièces en acier inoxydable - Noir - CA822012', NULL, N'Service de couverts 16 pièces', 12000, 30)
INSERT [dbo].[Product] ([Id], [Description], [Details], [Name], [Price], [Quantity]) VALUES (4, N'Hachoir à Viande Electrique - Inox - 2 Litres 250W - Trancheuse Multifonctions', NULL, N'Hachoir à Viande Electrique - Inox - 2 Litres 250W', 25000, 40)
INSERT [dbo].[Product] ([Id], [Description], [Details], [Name], [Price], [Quantity]) VALUES (5, N'it2163 - Dual SIM - 1000mAh - Bluetooth - Noir', NULL, N'it2163 - Dual SIM', 12000, 45)
INSERT [dbo].[Product] ([Id], [Description], [Details], [Name], [Price], [Quantity]) VALUES (12, N'Fontaine à Eau 2 Robinets Chaud/normal - Bdt-hn567 - Blanc', N'tes', N'Fontaine à Eau 2 Robinets ', 35000, 12)
INSERT [dbo].[Product] ([Id], [Description], [Details], [Name], [Price], [Quantity]) VALUES (14, N'Machine à café/ Cafetière avec tasse', NULL, N'Machine à café/ Cafetière', 15000, 39)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
/****** Object:  Index [IX_OrderLine_ProductId]    Script Date: 13/03/2024 18:34:59 ******/
CREATE NONCLUSTERED INDEX [IX_OrderLine_ProductId] ON [dbo].[OrderLine]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderLineEntity_OrderEntityId]    Script Date: 13/03/2024 18:34:59 ******/
CREATE NONCLUSTERED INDEX [IX_OrderLineEntity_OrderEntityId] ON [dbo].[OrderLine]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD  CONSTRAINT [FK__OrderLine__Produ__52593CB8] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderLine] CHECK CONSTRAINT [FK__OrderLine__Produ__52593CB8]
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD  CONSTRAINT [FK_OrderLineEntity_OrderEntity_OrderEntityId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderLine] CHECK CONSTRAINT [FK_OrderLineEntity_OrderEntity_OrderEntityId]
GO
USE [master]
GO
ALTER DATABASE [EhodBoutiqueEnLigne] SET  READ_WRITE 
GO
