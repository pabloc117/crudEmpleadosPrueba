USE [master]
GO

/****** Object:  Database [Empresa]    Script Date: 08-Oct-21 3:37:26 PM ******/
CREATE DATABASE [Empresa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Empresa', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Empresa.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Empresa_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Empresa_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Empresa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Empresa] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Empresa] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Empresa] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Empresa] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Empresa] SET ARITHABORT OFF 
GO

ALTER DATABASE [Empresa] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Empresa] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Empresa] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Empresa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Empresa] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Empresa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Empresa] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Empresa] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Empresa] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Empresa] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Empresa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Empresa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Empresa] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Empresa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Empresa] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Empresa] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Empresa] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Empresa] SET RECOVERY FULL 
GO

ALTER DATABASE [Empresa] SET  MULTI_USER 
GO

ALTER DATABASE [Empresa] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Empresa] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Empresa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Empresa] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Empresa] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Empresa] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [Empresa] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Empresa] SET  READ_WRITE 
GO

