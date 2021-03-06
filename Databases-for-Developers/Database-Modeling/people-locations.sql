USE [master]
GO
/****** Object:  Database [PeopleLocations]    Script Date: 23-Aug-14 4:20:50 PM ******/
CREATE DATABASE [PeopleLocations]
GO
ALTER DATABASE [PeopleLocations] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PeopleLocations].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PeopleLocations] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PeopleLocations] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PeopleLocations] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PeopleLocations] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PeopleLocations] SET ARITHABORT OFF 
GO
ALTER DATABASE [PeopleLocations] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PeopleLocations] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PeopleLocations] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PeopleLocations] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PeopleLocations] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PeopleLocations] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PeopleLocations] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PeopleLocations] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PeopleLocations] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PeopleLocations] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PeopleLocations] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PeopleLocations] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PeopleLocations] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PeopleLocations] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PeopleLocations] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PeopleLocations] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PeopleLocations] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PeopleLocations] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PeopleLocations] SET  MULTI_USER 
GO
ALTER DATABASE [PeopleLocations] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PeopleLocations] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PeopleLocations] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PeopleLocations] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PeopleLocations] SET DELAYED_DURABILITY = DISABLED 
GO
USE [PeopleLocations]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 23-Aug-14 4:20:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[AddressText] [nvarchar](100) NOT NULL,
	[TownID] [int] NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Continents]    Script Date: 23-Aug-14 4:20:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Continents](
	[ContinentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Continents] PRIMARY KEY CLUSTERED 
(
	[ContinentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countries]    Script Date: 23-Aug-14 4:20:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ContinentID] [int] NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[People]    Script Date: 23-Aug-14 4:20:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[AddressID] [int] NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Towns]    Script Date: 23-Aug-14 4:20:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Towns](
	[TownID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CountryID] [int] NULL,
 CONSTRAINT [PK_Towns] PRIMARY KEY CLUSTERED 
(
	[TownID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Addresses] ON 

GO
INSERT [dbo].[Addresses] ([AddressID], [AddressText], [TownID]) VALUES (1, N'Stranna ulica', 1)
GO
INSERT [dbo].[Addresses] ([AddressID], [AddressText], [TownID]) VALUES (2, N'Ulica sezam', 1)
GO
SET IDENTITY_INSERT [dbo].[Addresses] OFF
GO
SET IDENTITY_INSERT [dbo].[Continents] ON 

GO
INSERT [dbo].[Continents] ([ContinentID], [Name]) VALUES (1, N'Europe')
GO
INSERT [dbo].[Continents] ([ContinentID], [Name]) VALUES (2, N'Africa')
GO
INSERT [dbo].[Continents] ([ContinentID], [Name]) VALUES (3, N'North America')
GO
INSERT [dbo].[Continents] ([ContinentID], [Name]) VALUES (4, N'Asia')
GO
SET IDENTITY_INSERT [dbo].[Continents] OFF
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 

GO
INSERT [dbo].[Countries] ([CountryID], [Name], [ContinentID]) VALUES (1, N'Bulgaria', 1)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [ContinentID]) VALUES (2, N'France', 1)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [ContinentID]) VALUES (3, N'Italy', 1)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [ContinentID]) VALUES (4, N'Canada', 3)
GO
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
SET IDENTITY_INSERT [dbo].[People] ON 

GO
INSERT [dbo].[People] ([PersonID], [FirstName], [LastName], [AddressID]) VALUES (1, N'Pesho', N'Petrov', 1)
GO
INSERT [dbo].[People] ([PersonID], [FirstName], [LastName], [AddressID]) VALUES (2, N'Gosho', N'Gergiev', 2)
GO
SET IDENTITY_INSERT [dbo].[People] OFF
GO
SET IDENTITY_INSERT [dbo].[Towns] ON 

GO
INSERT [dbo].[Towns] ([TownID], [Name], [CountryID]) VALUES (1, N'Sofia', 1)
GO
INSERT [dbo].[Towns] ([TownID], [Name], [CountryID]) VALUES (2, N'Gabrovo', 1)
GO
INSERT [dbo].[Towns] ([TownID], [Name], [CountryID]) VALUES (3, N'Varna', 1)
GO
INSERT [dbo].[Towns] ([TownID], [Name], [CountryID]) VALUES (4, N'Paris', 2)
GO
SET IDENTITY_INSERT [dbo].[Towns] OFF
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_Towns] FOREIGN KEY([TownID])
REFERENCES [dbo].[Towns] ([TownID])
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_Towns]
GO
ALTER TABLE [dbo].[Countries]  WITH CHECK ADD  CONSTRAINT [FK_Countries_Continents] FOREIGN KEY([ContinentID])
REFERENCES [dbo].[Continents] ([ContinentID])
GO
ALTER TABLE [dbo].[Countries] CHECK CONSTRAINT [FK_Countries_Continents]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [FK_People_Addresses] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Addresses] ([AddressID])
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [FK_People_Addresses]
GO
ALTER TABLE [dbo].[Towns]  WITH CHECK ADD  CONSTRAINT [FK_Towns_Countries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Countries] ([CountryID])
GO
ALTER TABLE [dbo].[Towns] CHECK CONSTRAINT [FK_Towns_Countries]
GO
USE [master]
GO
ALTER DATABASE [PeopleLocations] SET  READ_WRITE 
GO
