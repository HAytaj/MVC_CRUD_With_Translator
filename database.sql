USE [master]
GO
/****** Object:  Database [ProductList]    Script Date: 1/22/2020 12:12:47 PM ******/
CREATE DATABASE [ProductList]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProductList', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\ProductList.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProductList_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\ProductList_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ProductList] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProductList].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProductList] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProductList] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProductList] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProductList] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProductList] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProductList] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProductList] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProductList] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProductList] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProductList] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProductList] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProductList] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProductList] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProductList] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProductList] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProductList] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProductList] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProductList] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProductList] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProductList] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProductList] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProductList] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProductList] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProductList] SET  MULTI_USER 
GO
ALTER DATABASE [ProductList] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProductList] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProductList] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProductList] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProductList] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProductList] SET QUERY_STORE = OFF
GO
USE [ProductList]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ProductList]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/22/2020 12:12:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [ProductList] SET  READ_WRITE 
GO
