USE [master]
GO
/****** Object:  Database [WCCIOct30-2017CarDealership]    Script Date: 10/30/2017 6:45:04 PM ******/
CREATE DATABASE [WCCIOct30-2017CarDealership]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WCCIOct30-2017CarDealership', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WCCIOct30-2017CarDealership.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WCCIOct30-2017CarDealership_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WCCIOct30-2017CarDealership_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WCCIOct30-2017CarDealership].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET ARITHABORT OFF 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET  MULTI_USER 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WCCIOct30-2017CarDealership]
GO
/****** Object:  Table [dbo].[Buyer]    Script Date: 10/30/2017 6:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Buyer](
	[BuyerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NULL,
	[LicenseNumber] [varchar](10) NULL,
	[PhoneNumber] [int] NULL,
 CONSTRAINT [PK_Buyer] PRIMARY KEY CLUSTERED 
(
	[BuyerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Car]    Script Date: 10/30/2017 6:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[CarID] [int] IDENTITY(1,1) NOT NULL,
	[VIN] [nvarchar](50) NOT NULL,
	[Make] [nvarchar](50) NULL,
	[Model] [nvarchar](50) NULL,
	[Year] [int] NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Car_Buyer]    Script Date: 10/30/2017 6:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car_Buyer](
	[Car_BuyerID] [int] IDENTITY(1,1) NOT NULL,
	[BuyerID] [int] NULL,
	[CarID] [int] NOT NULL,
 CONSTRAINT [PK_Car_Buyer] PRIMARY KEY CLUSTERED 
(
	[Car_BuyerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Car] ON 

INSERT [dbo].[Car] ([CarID], [VIN], [Make], [Model], [Year]) VALUES (1, N'123WED234', N'Saturn', N'Vue', 2006)
INSERT [dbo].[Car] ([CarID], [VIN], [Make], [Model], [Year]) VALUES (2, N'234REW321', N'Honda', N'Accord', 2010)
SET IDENTITY_INSERT [dbo].[Car] OFF
ALTER TABLE [dbo].[Car_Buyer]  WITH CHECK ADD  CONSTRAINT [FK_Car_Buyer_Buyer1] FOREIGN KEY([BuyerID])
REFERENCES [dbo].[Buyer] ([BuyerID])
GO
ALTER TABLE [dbo].[Car_Buyer] CHECK CONSTRAINT [FK_Car_Buyer_Buyer1]
GO
ALTER TABLE [dbo].[Car_Buyer]  WITH CHECK ADD  CONSTRAINT [FK_Car_Buyer_Car] FOREIGN KEY([CarID])
REFERENCES [dbo].[Car] ([CarID])
GO
ALTER TABLE [dbo].[Car_Buyer] CHECK CONSTRAINT [FK_Car_Buyer_Car]
GO
USE [master]
GO
ALTER DATABASE [WCCIOct30-2017CarDealership] SET  READ_WRITE 
GO
