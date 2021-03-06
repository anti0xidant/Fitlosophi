USE [master]
GO

DROP DATABASE [HealthBLogDB]
GO

/****** Object:  Database [HealthBLogDB]    Script Date: 12/10/2015 3:57:31 PM ******/
CREATE DATABASE [HealthBLogDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HealthBLogDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2014\MSSQL\DATA\HealthBLogDB.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HealthBLogDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2014\MSSQL\DATA\HealthBLogDB_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HealthBLogDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HealthBLogDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HealthBLogDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HealthBLogDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HealthBLogDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HealthBLogDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HealthBLogDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [HealthBLogDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HealthBLogDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HealthBLogDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HealthBLogDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HealthBLogDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HealthBLogDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HealthBLogDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HealthBLogDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HealthBLogDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HealthBLogDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HealthBLogDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HealthBLogDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HealthBLogDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HealthBLogDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HealthBLogDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HealthBLogDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HealthBLogDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HealthBLogDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HealthBLogDB] SET  MULTI_USER 
GO
ALTER DATABASE [HealthBLogDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HealthBLogDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HealthBLogDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HealthBLogDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HealthBLogDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [HealthBLogDB]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[FirstName] [nvarchar](25) NULL,
	[LastName] [nvarchar](25) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HashTags]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HashTags](
	[TagID] [int] IDENTITY(1,1) NOT NULL,
	[TagName] [nvarchar](1000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Posts]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[CoverImgURL] [nvarchar](2000) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NULL,
	[DatePublished] [datetime] NULL,
	[HasSchedule] [bit] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[IsPublished] [bit] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PostsXHash]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostsXHash](
	[PostsXHashID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NOT NULL,
	[TagID] [int] NOT NULL,
	[ActualHashTag] [nvarchar](1000) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StaticPage]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaticPage](
	[StaticPageID] [int] IDENTITY(1,1) NOT NULL,
	[ButtonName] [nvarchar](50) NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NULL,
	[DatePublished] [datetime] NULL,
	[IsPublished] [bit] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StaticPageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201512021527534_InitialCreate', N'FITlosophiMVC.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE338127D5F60FF41D0D3EC2263E5B2DDE80DEC19649C7836D8CE05ED7463DE1AB4443B444B9446A2320916FB65FB309F34BFB045DD2CDE74B115DB1934D088C8E2A962B148168B45FFF1BFDFC73F3E07BEF584E3848474629F8C8E6D0B5337F4085D4DEC942DBFFF60FFF8C35FFF32BEF28267EB4B4977C6E9A0254D26F62363D1B9E324EE230E50320A881B8749B86423370C1CE485CEE9F1F13F9D93130703840D589635FE945246029C7DC0E734A42E8E588AFC9BD0C37E529443CD3C43B56E51809308B97862CFAE1F7CC08F1EC9CD97E928A7B7AD0B9F2090658EFDA56D214A438618487AFE39C173168774358FA000F90F2F1106BA25F2135CF4E07C4DDEB533C7A7BC33CEBA6109E5A6090B839E80276785761CB9F9463AB62BED81FEAE40CFEC85F73AD3E1C4BEF67056F429F4410132C3F3A91F73E2897D53B1B848A25BCC4665C3510E398B01EEB730FE36AA231E599DDB1D55D6743A3AE6FF8EAC69EAB334C6138A531623FFC8BA4F173E71FF8D5F1EC26F984ECE4E16CBB30FEFDE23EFECFD3FF0D9BB7A4FA1AF40271440D17D1C463806D9F0B2EABF6D39623B476E5835ABB5C9B502B60413C3B66ED0F3474C57EC11A6CCE907DB9A9167EC952585717DA604E6113462710A9FB7A9EFA3858FAB7AA79127FFBF81EBE9BBF78370BD454F64950DBDC41F264E0CF3EA13F6B3DAE49144F9F412C6FB6B41368BC3807F8BF695D77E9D8769ECF2CE8446920714AF3013A51B3B6BE3ED64D21C6A78B32E510FDFB4B9A4AA796B497987369909258B5DCF8652DED7E5DBD9E22EA208062F332DAE912683D36D5723A9FD912550ADCDE7A4ABF950E8D69F7935BC0A10F107580E3B70015F6449E20057BDFC2904E343B4B7CCF728496035F0FE8592C706D1E1CF01449F63378DC148E70C05D1AB73BB7F0C29BE4D8305B7FDDDF11A6C681E7E0B67C865617C4579ABADF13E86EEB7306557D4BB440C7F666E09C83F1F48D01D6010712E5C1727C90C8C197BD3105CED12F09AB2B3D3DE707C89DAB73B32F51109F4FE88B4987E2D49D73E899E42F14B0C643ADFA449D48FE18AD06EA296A46651738A56510BB2BEA272B06E92169466413382563973AAC1BCBD6C848677F732D8C3F7F7B6DBBC4D6B414D8D735821F1CF98E2189631EF1E318663BA1E812EEBC63E9C856CF838D357DF9B324E5F909F0ECD6AA3D9902D02C3CF860CF6F067432626143F118F7B251D0E412531C077A2D79FAFDAE79C24D9AEA783D0CD5D33DFCD1A609A2E174912BA249B059AF05711BC10E5071FCE6A8F64E4BD91A321D0313074C2B73C2881BED9B251DDD14BEC6386AD0B370F0F4E51E2224F552374C8EB2158B9A36A045B474544E1FEAEF0044BC7316F84F8212881994A2853A705A12E8990DFAA25A965C72D8CF7BDE221D75CE20853CEB055135D98EB83205C808A8F34286D1A1A3B358B6B364483D76A1AF33617763DEE4A6C622736D9E23B1BECB2F0DF5EC5309B35B603E36C564917018C01BD7D18687156E96A00F2C1E5D00C543A31190CB470A97662A0A2C6F660A0A24ADE9C81E647D4AEE32F9D570FCD3CC583F2EEB7F54675EDC136057D1C9869E6BE27B461D002C7AA795E2E78257E669AC319C8599CCF92C2D5954D8483CF311343366B7F57EB873ACD20B2113501AE0DAD05B4B80A54809409D543B83296D7285DE145F4802DE36E8DB0C5DA2FC1D66C40C5AE5F89D608CD17A7B271763A7D543DABAC4131F24E87851A8EC620E4C54BEC7807A598E2B2AA62BAF8C27DBCE15AC78AC16850508BE76A5052D999C1B5549A66BB96740E591F976C2B2D49EE93414B656706D75261A3ED4AD238053DDC82AD54246EE1034DB632D251ED3655DDD8C973A58A82B16348AA1ADFA0282274554BB22A4AAC799E6135FD7EDE3FF128C8311C37D1E41F55D2569C5818A315966A8135483A2371C22E11430BC4E33C532F50C8B47BAB61F92F59D6B74F7510CB7DA0A4E67FE72DB417F8C26EABBA2305CA0CFA18709F260BA46B2C40DFDCE2696FC847B126763F0DFD34A06617CBDC3ABFC1ABB7CF4B5484B123C9AFB8508ABE144757547EA7A151A7C560C354F9309B0F9519C2A4F0D203ADABDCE4959A51CA20551DC514B8DADBD0999C999EC3257B8AFD47AB15E175E656919E5207288A7A62D4321C14B05A5D77543109A58E29D6744794324DEA9052550F29EBF9248290F58A8DF00C1AD55374E7A06690D4D1D5DAEEC89A5C923AB4A67A036C8DCC725D77544DBA491D5853DD1D7B9D7B222FA307BC7B19CF2F5B6C5FF92177BBFDCB80F13A6BE230DB5FED2EBF0E542BEE8955DCD62B6045F941DA93F1A4B7853DE5D18DEDECC980615E7D847B7071F169BCBC37630A97DBC202DF74B96FC6EB67B5AF6A1BCA514F26A9B857473EE968372E8E59ED8F6A9473574E625BA51A61737F49180E469C6034FFD59FFA04F3A5BC24B841942C71C2F2840EFBF4F8E4547A9573382F649C24F17CCD31D5F44C461CB31DE466D12714BB8F28563325B67845B2065582D0D7D4C3CF13FB3F59ABF32C9EC1FFCA8A8FACEBE43325BFA650F110A7D8FAAF9AF9394C567DF351EB40DF4074D7EAF52F5FF3A647D65D0C33E6DC3A9674B9C9088B2F237A499337DD429A8DDF4BBCDD09253C44D0A24A1362F377070BC2067973504AF95D809EFFD65734EDBB82AD10356F0786C21B4485A6B7019B6019DF0578F0C9B27701FD3AAB7F27B08968C6370284F607935F08745F86CA967BDC6A34A7A25D2C49999E5B33ACB74AB7DCF7DEA424626F35D1D564EB1E705B24546F60196F2C1779B0DD51936A3C18F63E4DFBD5F38B0F25A5789DECB1DF4CE25D260F375C0EFDA972860F20CB4D93B5B3FFCCE05DDB9A29927BE0E995FDF27F0FCCD88A5CAEFD67F9EEDAD84C61DE0337B65EB9BC07666BFBDA3FF76C699DB7D0BD67E6AA4946861B195D2CB82DF3360F9CC3097F118211E41E65FE60529FEAD594A6DAC2704D62666ACE3193192B1347E1AB5034B3EDD7D762C36FEC6C41D3CCD69099D9C4BB58FF1B791734CDBC0DF98EFBC819D6661CEAF2B85BD6B1A654A8B794232CF4A42525BDCD676DBC5E7F4B29C1832845983D863BE2B793013C884A869C3A3D327ED5EB5ED83B6BBFB408FB7742566B08FEBB8B14BBC2AE59D15CD365586EDE9244258914A1B9C10C79B0A55EC48C2C91CBA09AC798B317DF59DC8EDF742CB0774DEF5216A50CBA8C83852F04BCB813D0C43F4B6B16651EDF45D98F970CD1051093F0D8FC1DFD2925BE57C93DD3C4840C10DCBB2822BA7C2C198FECAE5E2AA4DB9076042AD45739450F38887C004BEEE81C3DE14D6403F3FB8857C87D5947004D20ED0321AA7D7C49D02A46415260ACDBC327D8B0173CFFF07F290DAFB970540000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201512021617131_profile', N'FITlosophiMVC.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C596FE436127E0F90FF20E86913382D1F3B8359A33B81D376678DF8C2B467B06F03B6C46E1323518A44393682FCB23CEC4FDABFB0A4441DBC7474AB0F07018269B2F855B15845164B45FFEFAFFF8E7F7A097CEB19C6090AF1C43E191DDB16C46EE821BC9AD82959FEF0C1FEE9C76FBF195F79C18BF5B9A03B637474244E26F61321D1B9E324EE130C40320A901B8749B82423370C1CE085CEE9F1F1BF9C93130752089B6259D6F8638A090A60F683FE9C86D8851149817F1B7AD04F783BED9967A8D61D08601201174EECD9F5A34FF1A32774FB793ACAE96DEBC24780CA3287FED2B600C62101844A7AFE298173128778358F6803F01F5F2348E996C04F209FC17945DE7532C7A76C324E35B08072D38484414FC09333AE1D471EBE968EED527B547F5754CFE495CD3AD3E1C4BEF660D6F431F4A9026486E7533F66C413FBB66471914477908C8A81A31C721653B8DFC3F8EBA88E7864751E77545AD3E9E898FD77644D539FA4319C60989218F847D643BAF091FB2B7C7D0CBF423C393B592CCF3EBC7B0FBCB3F7FF8467EFEA33A573A57442036D7A88C308C65436B82CE76F5B8E38CE910796C36A6372AD505BA28E615BB7E0E506E21579A22E73FAC1B666E8057A450B37AE4F18513FA283489CD29F77A9EF83850FCB7EA79127FB7F03D7D377EF07E17A079ED12A5B7A893F759C98FAD547E867BDC9138A72F712D6FB0B279BC561C07E8BF695F77E998769ECB2C98446924710AF2011A51B3B95F17632690635BC5917A8876FDA4C52D5BCB5A46C42EB7842C162D7DE50C8BB5DBE9D2DEE228AE8E265A6C534D26470BAE36A248D3FB204AACA7C4EBA9A0FA6D3FA3BEF86331427A4654BA4FFECC4BA99D30DD811A3AB00207F801DBE03171A5E2D511CC072E17E0EA93F01DC7B191E4092D00DCEFB37489EB6AEA03974D398FADD9C8020DA3AB787A710C3BB34583077DE1DAFC196E6F1F770065C12C657988DDA18EF2674BF8629B9C2DE2520F013710B40F6F31105DD010611E7C2756192CCA831436F1AD2DB4301788DC9D9696F38B6EBEE3BC29AFA0005FA104B3A1FBE14A45598A5A750422D03992EDC6A12F5265C21DC4DD482D42C6A4ED12A2A27EB2B2A03EB2629A7340B9A11B4CA99530D16C0662B347C049BC11E7E08BB593C62DA0B6A6A9CD31D12FE02318CE936E63D0042608CAB15E8B26FEC23FEC9968F31DDFAD99471FA0CFC7468566B7943B6090CEF0D19ECE17B4326266D7E461E8B4A3ADCEB0A620ADF895E7F656CF73949B25DBB8330CD5D33DFCD1E6072978B24095D94798126A3C7F331A2FC3486B3DA9333F96CE4040F9D183574C48E3CDA42E766CB46758F2FA10F09B42EDC3CE33905890B3C558D74425E0FC18A1355235895E81185FB5EE1492D1DC66C106097A0847A2AC244750B845D1401BF554BD2C88E47189B7BC943EEB98411C48C61AB26BA30D7E7759800251F6951DA3434766A16D76C8886A8D5B4E66D216CB5EE4ABA652736D9123B1BEC92C76F5B31CC668DEDC0389B55D24500638E721F06CAEF2A5D0D40BEB81C9A814A37268381F2906A27062A6A6C0F062AAAE4CD19687E45EDBAFED27DF5D0CC53BC28EFFE586F54D71E6C53D0C78199661E7BD231848E80B16A9E970BD6095F88E67246E5E4F7B38487BAB28930F0392462CAA68A77B571A8D30C221B51136065682DA0FCEBA602A438540FE18A5C5EA3743C8AE8015BE4DD1A61F9DE2FC1D66C40C5AE7FE5AD119ABF05CBC6D9E9F651CEACB406C5C83B5D166A381A8390372F71E21D9462CACBAA8AE9120BF789866B13E38BD1A0A096C8D5A0A46232836BA930CD762DE902B23E21D9465A92C22783968AC90CAE256EA3ED4AD204053DC2828D54241EE103395B91E9284F9BB26FECE4E55FBC61EC18EAC4C6B7208A105ED5EAC6788B35CF8BC6A63FCCFBD752053986E3269A92AA52DA92130963B082522F654D25CD3E5F5F02021680E579A65EA09069CF56C3F65FB0AC1F9FEA2216E74041CDFECDBFA6EB6A1284D3560D4738CA8CCE3160314D9648D758807EB8C52AF9800F624DEE7E1AFA6980CD21967974FE05AF3E3E6F5111C68E24BF124229FA52025D51F99D9646758BC196A98C61D65F2A338449E145045A57B9292A35A31449AA3A8A2971B5B7A53305333D974B8E14FBAF562BC2767CAB56715307A93577C7AA6A6AEA50556B77245E345387E14D3D316A75170A58ADAF3BAA581A53C7147BBA234AF52F7548A9AB8794F52A1741C87AC75A78068DEA29BA7350EB5AEAE86A6F0FAB542B5C04F354BBD7C0D6C82CF77547D514C1D48135DDDDB1AB8A1879733FE033D578ABDAE050CDAFDE9B9DAA068CEDECD4C31CCAB50A833A50ADB92716AF2150C078FB41DA93F1FEB9813DE53997CDECC98061DE7D84AFF3E2E6D3585260C6143EB90B1B7C53C98119AF9FD56ED536940BA84C52722F2FA2D28573CC2F7FEDAF9794DB604E625B851AE9E1FE9A10188C18C168FE9B3FF511645B7941700B305AC284E46526F6E9F1C9A9F4FCE9709E223949E2F99ACBB3E93D92B8663BA818C3CF20769F40ACD66F6CF05CA7025552E3D7D8832F13FB8F6CD479966561FFCA9A8FACEBE41346BFA5B4E3314EA1F5A75A8F3ACCF385E60BE0813E36E9AED5EBFF7CC9871E59F731F59873EB58D2E53A2B2C3E41E9254D3E740369D67E98F2761D4A79F15120FF23002FDFD5E1D679D5B11198F072433B61C957D77FA8B1406490471A1BCD57FB10632344CD638BA1F00651A1E931C53A58C687141EFD49B287143D6D59FBB0621DD18C8F2A10EE0F263FA9E8BE431623F7780A6A2E6CBBD82D333DB796A46F549FBAEF6353A95CDFC8D1D5EAF41E701B54A0AF61196FAC787BB0835B539B3D18F63E4D7BEB05D98752835D55C7ECB7F47A97D5D60D5FD3FE5645D6075016A82973DA7F29F5AE6DCD94643EF07AD47E05D307666CBCF86DFF65D1BB36365306FAC08DAD57F1F381D9DABECECF3D5B5AE72374EFA5CC6A5596E163912E4DDD56AA9CE7F4E90D7F115223C823CAFC85A9BE36AEA9AEB785614562666A2ECA93192B8EA3F055289AD9F69B2B3FF01B27CB699AD91A4A599B78F3FDBF9137A769E66D2810DD4791B5B6445357F8DEB28F35D58EBDA5A26A61262D35FC6D316BE397FFB754433D885204EF317CBE7E3B25D383A86448D7E95122AD7E89A66767EDAF6DD2F33B41AB0A82FDED4D0C5DE1D42C69AEF1322C0E6F49A28244CAD0DC42023C7AA45EC4042D814B6837CB31674FE4B3BC1DFBD2B180DE35BE4F4994123A65182C7C21E1C5828026FE591DB828F3F83ECAFEDACB1053A06222969BBFC73FA7C8F74AB9679A9C90018245173CA3CBD692B0CCEEEAB544BA0B714720AEBE32287A8441E453B0E41ECFC1335C47366A7E377005DCD72A036802695F0851EDE34B04563108128E518DA73FA90D7BC1CB8FFF074BF9DD7A74560000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'Employee')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b75da91b-e39a-42ce-b2f0-4834eda139e1', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'2')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'user@fitlosophi.com', 0, N'ACCI+9O65R7JuDcFKLwRaw+bb2hhPC5WfV7zzb9+zQpZp3N4RHX/0iQokQMdbXW4/A==', N'7066a7e8-9d8e-41ae-a282-35f3d8d98c1d', NULL, 0, 0, NULL, 1, 0, N'user@fitlosophi.com', N'Mike', N'Drozda')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'b75da91b-e39a-42ce-b2f0-4834eda139e1', N'admin@fitlosophi.com', 0, N'AIDzK1TjauyL9ralaa0YmLOghc3pFXwPdaeUdHOe4dwGH9FxcJGrbD7qpD0kgPJ7sQ==', N'08ed5989-a62e-4ac2-ac34-a92add0e4975', NULL, 0, 0, NULL, 1, 0, N'admin@fitlosophi.com', N'Koshin', N'Abdi')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'Food')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Nutrition')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Health')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (4, N'Fitness')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (5, N'Sports')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (6, N'Wellness')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (7, N'Organic')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (8, N'Nature')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (9, N'Martial Arts')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (10, N'Diet')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[HashTags] ON 

INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (1, N'healthyeating')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (2, N'food')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (3, N'nutrition')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (4, N'healthysnacks')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (5, N'greatfood')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (6, N'golfswing')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (7, N'foodforgolf')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (8, N'improveyourgam')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (9, N'golfwods')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (10, N'golf')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (11, N'Biking')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (12, N'Boxing')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (13, N'Cooking')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (14, N'Chocolate')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (15, N'Eating')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (16, N'Eggs')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (17, N'Kickboxing')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (18, N'Nature')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (19, N'Recipes')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (20, N'Run')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (21, N'Spices')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (22, N'Tasty')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (23, N'Vegetable')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (24, N'Sports')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (25, N'Wellness')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (26, N'Yoga')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (27, N'Weights')
SET IDENTITY_INSERT [dbo].[HashTags] OFF
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (1, 4, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'Golf Swing Workouts', N'http://localhost:54909/Content/img/Golf.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.893' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (2, 2, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'5 Tips for Healthy Eating', N'http://localhost:54909/Content/img/food.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.893' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (3, 5, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'Preparing for a Competition', N'http://localhost:54909/Content/img/CrossFit.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.893' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (4, 1, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'Healthy Eating Habits', N'http://localhost:54909/Content/img/eating.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.893' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (5, 3, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'Benefits of Eating Dark Chocolate', N'http://localhost:54909/Content/img/DarkChocolate.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.897' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (6, 3, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'Benefits of Biking', N'http://localhost:54909/Content/img/Bike.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.897' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (7, 3, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'New Ways Of Staying Fit', N'http://localhost:54909/Content/img/Boxing.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.897' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (8, 2, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'How To Enjoy Cooking', N'http://localhost:54909/Content/img/Cooking.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.897' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (9, 2, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'Eggs Are The Key', N'http://localhost:54909/Content/img/Eggs.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.897' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (10, 6, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'Say No To Junk Food', N'http://localhost:54909/Content/img/Kickbad.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.897' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (11, 4, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'Great Places To Exercises', N'http://localhost:54909/Content/img/NatureKick.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.897' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (12, 1, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'Great Recipes For Healthy Food', N'http://localhost:54909/Content/img/Recipes.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.897' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (13, 5, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'Run And Run Some More', N'http://localhost:54909/Content/img/Run.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.900' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (14, 2, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'Organic Is The Way To Go', N'http://localhost:54909/Content/img/SeeOrganic.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.900' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (15, 2, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'Top 10 Spices For Great Cooking', N'http://localhost:54909/Content/img/Spices.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.900' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (16, 1, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'Mouth Watering Health Meals', N'http://localhost:54909/Content/img/Tasty.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.900' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (17, 3, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'Veggies Are Your Friend', N'http://localhost:54909/Content/img/Vegetable.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.900' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (18, 4, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'Best Ways To Gain Muscle', N'http://localhost:54909/Content/img/Weights.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.900' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (19, 6, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'Keys To Love Meditation', N'http://localhost:54909/Content/img/yoga-pose.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.900' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
INSERT [dbo].[Posts] ([PostID], [CategoryID], [UserID], [Title], [CoverImgURL], [Body], [DateCreated], [DateModified], [DatePublished], [HasSchedule], [StartDate], [EndDate], [IsPublished], [IsActive]) VALUES (20, 5, N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'Practice Your Martial Arts', N'http://localhost:54909/Content/img/Waterfall.jpg', N'<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.900' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 0, NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Posts] OFF
SET IDENTITY_INSERT [dbo].[PostsXHash] ON 

INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (83, 1, 1, N'HealthyEating')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (84, 1, 2, N'Food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (85, 1, 3, N'Nutrition')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (86, 1, 4, N'HealthySnacks')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (87, 1, 5, N'GreatFood')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (88, 2, 1, N'HealthyEating')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (89, 2, 6, N'GolfSwing')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (90, 2, 7, N'FoodForGolf')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (91, 2, 8, N'ImproveYourGam')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (92, 2, 9, N'Golfwods')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (93, 3, 1, N'HealthyEating')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (94, 3, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (95, 3, 3, N'Nutrition')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (96, 3, 4, N'healthysnacks')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (97, 4, 6, N'golfswing')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (98, 4, 10, N'Golf')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (99, 4, 8, N'ImproveYourGam')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (100, 4, 9, N'GolfWODs')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (101, 5, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (102, 5, 25, N'Wellness')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (103, 5, 22, N'Tasty')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (104, 6, 24, N'Sports')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (105, 6, 11, N'Biking')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (106, 7, 17, N'Kickboxing')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (107, 7, 12, N'Boxing')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (108, 7, 24, N'Sports')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (109, 8, 21, N'Spices')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (110, 8, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (111, 8, 4, N'healthysnacks')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (112, 9, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (113, 9, 3, N'nutrition')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (114, 9, 16, N'Eggs')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (115, 10, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (116, 10, 15, N'Eating')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (117, 10, 5, N'greatfood')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (118, 11, 18, N'Nature')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (119, 11, 24, N'Sports')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (120, 11, 26, N'Yoga')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (121, 12, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (122, 12, 3, N'Nutrition')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (123, 12, 23, N'Vegetable')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (124, 13, 20, N'Run')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (125, 13, 24, N'Sports')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (126, 14, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (127, 14, 23, N'Vegetable')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (128, 14, 5, N'greatfood')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (129, 15, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (130, 15, 15, N'Eating')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (131, 15, 19, N'Recipes')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (132, 16, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (133, 16, 13, N'Cooking')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (134, 16, 22, N'Tasty')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (135, 17, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (136, 17, 23, N'Vegetable')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (137, 17, 19, N'Recipes')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (138, 18, 20, N'Run')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (139, 18, 27, N'Weights')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (140, 18, 24, N'Sports')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (141, 19, 26, N'Yoga')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (142, 19, 18, N'Nature')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (143, 20, 17, N'Kickboxing')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (144, 20, 24, N'Sports')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (145, 20, 18, N'Nature')
SET IDENTITY_INSERT [dbo].[PostsXHash] OFF
SET IDENTITY_INSERT [dbo].[StaticPage] ON 

INSERT [dbo].[StaticPage] ([StaticPageID], [ButtonName], [UserID], [Body], [DateCreated], [DateModified], [DatePublished], [IsPublished], [IsActive]) VALUES (1, N'Disclaimer', N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'<h2>Disclaimer</h2><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.860' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 1, 1)
INSERT [dbo].[StaticPage] ([StaticPageID], [ButtonName], [UserID], [Body], [DateCreated], [DateModified], [DatePublished], [IsPublished], [IsActive]) VALUES (2, N'Weekly Meals', N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'<h2>Weekly Meals</h2><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.860' AS DateTime), NULL, CAST(N'2015-12-10 15:56:20.927' AS DateTime), 1, 1)
INSERT [dbo].[StaticPage] ([StaticPageID], [ButtonName], [UserID], [Body], [DateCreated], [DateModified], [DatePublished], [IsPublished], [IsActive]) VALUES (3, N'Author Bios', N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'<h2>Author Bios</h2><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.860' AS DateTime), NULL, NULL, 0, 1)
INSERT [dbo].[StaticPage] ([StaticPageID], [ButtonName], [UserID], [Body], [DateCreated], [DateModified], [DatePublished], [IsPublished], [IsActive]) VALUES (4, N'Fitness Websites', N'6dc67935-e819-445e-94cc-cb85d97bd56c', N'<h2>Fitness Websites</h2><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>', CAST(N'2015-12-10 15:56:20.860' AS DateTime), NULL, NULL, 0, 1)
SET IDENTITY_INSERT [dbo].[StaticPage] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/10/2015 3:57:31 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 12/10/2015 3:57:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 12/10/2015 3:57:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 12/10/2015 3:57:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 12/10/2015 3:57:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/10/2015 3:57:31 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_CategoryID]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_UserID]
GO
ALTER TABLE [dbo].[PostsXHash]  WITH CHECK ADD  CONSTRAINT [FK_PostID] FOREIGN KEY([PostID])
REFERENCES [dbo].[Posts] ([PostID])
GO
ALTER TABLE [dbo].[PostsXHash] CHECK CONSTRAINT [FK_PostID]
GO
ALTER TABLE [dbo].[PostsXHash]  WITH CHECK ADD  CONSTRAINT [FK_TagID] FOREIGN KEY([TagID])
REFERENCES [dbo].[HashTags] ([TagID])
GO
ALTER TABLE [dbo].[PostsXHash] CHECK CONSTRAINT [FK_TagID]
GO
ALTER TABLE [dbo].[StaticPage]  WITH CHECK ADD  CONSTRAINT [FK_UserIDStatic] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[StaticPage] CHECK CONSTRAINT [FK_UserIDStatic]
GO
/****** Object:  StoredProcedure [dbo].[AddNewCategory]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------------------------------------------------------

CREATE PROCEDURE [dbo].[AddNewCategory]
(
	@CategoryName nvarchar(100)
)

AS BEGIN

INSERT INTO Categories 
(
	CategoryName
)
VALUES
(
	@CategoryName
)

END

GO
/****** Object:  StoredProcedure [dbo].[AddPost]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------


CREATE PROCEDURE [dbo].[AddPost]
(
	@CategoryID		int,
	@UserID			nvarchar(128),
	@Title			nvarchar(200),
	@CoverImgURL	nvarchar(2000),
	@Body			nvarchar(MAX),	

	@PostID			int output
)

AS BEGIN

INSERT INTO Posts
(
	CategoryID,
	UserID,
	Title,
	CoverImgURL,
	Body,
	DateCreated,
	HasSchedule,
	IsPublished,	
	IsActive
)
VALUES
(
	@CategoryID,
	@UserID,
	@Title,
	@CoverImgURL,
	@Body,
	GETDATE(),
	0,
	0,
	1
)

SET @PostID = SCOPE_IDENTITY();

END 

GO
/****** Object:  StoredProcedure [dbo].[AddStaticPage]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------------------------------------------------------

CREATE PROCEDURE [dbo].[AddStaticPage]
(
	@ButtonName		nvarchar(50),
	@UserID			nvarchar(128),
	@Body			nvarchar(MAX),
		
	@StaticPageID	int output
)

AS BEGIN

INSERT INTO StaticPage
(
	ButtonName,
	UserId,
	Body,
	DateCreated,
	IsPublished,
	IsActive
)
VALUES
(
	@ButtonName,
	@UserID,
	@Body,
	GetDate(),
	0,
	1
)

SET @StaticPageID = SCOPE_IDENTITY()

END

GO
/****** Object:  StoredProcedure [dbo].[AddTag]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------------------------------------------------------

CREATE PROCEDURE [dbo].[AddTag]
(
	@PostID			int,
	@ActualHashTag	nvarchar(1000)
)

AS BEGIN

DECLARE	 @TagID AS INT

SELECT	 @TagID = ht.TagID FROM HashTags ht WHERE LOWER(ht.TagName) = LOWER(@ActualHashTag)

IF @TagID IS NULL

   BEGIN

       INSERT INTO HashTags (TagName)
	   
	   VALUES (LOWER(@ActualHashTag))
       
	   SELECT @TagID = SCOPE_IDENTITY()

   END

INSERT INTO PostsXHash	(PostID, TagID, ActualHashTag)

VALUES					(@PostID, @TagID, @ActualHashTag)

END

GO
/****** Object:  StoredProcedure [dbo].[DeleteAllTagsByPostID]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------------------------

CREATE PROCEDURE [dbo].[DeleteAllTagsByPostID]
(
	@PostID		int
)

AS BEGIN

DELETE FROM PostsXHash 

WHERE		PostID	 =	 @PostID

END

GO
/****** Object:  StoredProcedure [dbo].[DeletePage]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------------------------

CREATE PROCEDURE [dbo].[DeletePage]
(
	@StaticPageID		int
)

AS BEGIN

UPDATE	 StaticPage 

SET		 IsActive			=	 0, 
		 IsPublished		=	 0
				
WHERE    StaticPageID		=	 @StaticPageID

END 

GO
/****** Object:  StoredProcedure [dbo].[DeletePost]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------

CREATE PROCEDURE [dbo].[DeletePost]
(
	@PostID			int
)

AS BEGIN

UPDATE	Posts 

SET		IsActive		=	 0, 
		IsPublished		=	 0

WHERE   PostID			=	 @PostID

END 

GO
/****** Object:  StoredProcedure [dbo].[EditPage]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------------------------------------------------------

CREATE PROCEDURE [dbo].[EditPage]
(
	@StaticPageID	int,

	@ButtonName		nvarchar(50),
	@UserID			nvarchar(128),
	@Body			nvarchar(MAX)
)

AS BEGIN

UPDATE	StaticPage

SET		ButtonName		=	@ButtonName,
		UserID			=	@UserID,
		Body			=	@Body,
		DateModified	=	GetDate()

WHERE	StaticPageID	=	@StaticPageID

END 

GO
/****** Object:  StoredProcedure [dbo].[EditPost]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------


CREATE PROCEDURE [dbo].[EditPost]
(
	@PostID			int,

	@CategoryID		int,
	@UserID			nvarchar(128),
	@Title			nvarchar(200),
	@CoverImgURL	nvarchar(2000),
	@Body			nvarchar(MAX),
	@HasSchedule	bit,
	@StartDate		datetime,
	@EndDate		datetime
)

AS BEGIN

UPDATE	Posts
	
SET	    CategoryID	    =	@CategoryID,
		UserID		    =	@UserID,
		Title		    =	@Title,
		CoverImgURL		=	@CoverImgURL,
		Body		    =	@Body,
		HasSchedule		=	@HasSchedule,
		StartDate		=	@StartDate,
		EndDate			=	@EndDate,
		DateModified    =   GetDate()

WHERE	PostID			=	@PostID

END 

GO
/****** Object:  StoredProcedure [dbo].[GetAllCategories]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------

CREATE PROCEDURE [dbo].[GetAllCategories] 

AS BEGIN

SELECT	CategoryID, 
		CateGoryName

FROM Categories 

END 

GO
/****** Object:  StoredProcedure [dbo].[GetAllPageSummaries]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------------------------
CREATE PROCEDURE [dbo].[GetAllPageSummaries] 

AS BEGIN 

SELECT	s.StaticPageID, 
		s.ButtonName, 
		s.DateCreated, 
		s.DatePublished, 
		s.IsActive, 
		s.IsPublished, 
		u.FirstName + ' ' + u.LAStName AS WriterName

FROM StaticPage s
	INNER JOIN	ASpNetUsers u 
		ON s.UserID = u.Id

END

GO
/****** Object:  StoredProcedure [dbo].[GetAllPostsByCategory]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------------------------

CREATE PROCEDURE [dbo].[GetAllPostsByCategory] 
(
	@CategoryID		int
)

AS BEGIN

SELECT	p.PostID, 
		p.Title, 
		p.Body, 
		p.CoverImgURL, 
		p.DatePublished, 
		p.HasSchedule, 
		p.StartDate, 
		p.EndDate, 
		u.FirstName + ' ' + u.LAStName AS WriterName, 
		c.CateGoryID, 
		c.CateGoryName

FROM Posts p
	INNER JOIN ASpNetUsers u
		ON p.UserID		= u.Id
	INNER JOIN CateGories c
		ON p.CateGoryID = c.CateGoryID

WHERE	c.CateGoryID	=	@CateGoryID		and 
		p.IsActive		=	1				and 
		p.IsPublished   =	1

END

GO
/****** Object:  StoredProcedure [dbo].[GetAllPostSummaries]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------------------------
--For Management View
CREATE PROCEDURE [dbo].[GetAllPostSummaries]

AS BEGIN

SELECT	p.PostID, 
		p.Title, 
		p.DateCreated, 
		p.DatePublished, 
		p.IsActive, 
		p.IsPublished,	
		u.FirstName+' '+u.LastName AS WriterName, 
		c.CateGoryID, 
		c.CateGoryName

FROM Posts AS p
	INNER JOIN Categories c
		ON p.CategoryID	 =	 c.CategoryID
	INNER JOIN ASpNetUsers u
		ON p.UserID		 =	 u.Id

END 

GO
/****** Object:  StoredProcedure [dbo].[GetAllTags]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------------------------

CREATE PROCEDURE [dbo].[GetAllTags] 

AS BEGIN

SELECT	TagID, 
		TagName

FROM HashTags 

END

GO
/****** Object:  StoredProcedure [dbo].[GetPageByID]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------------------------

CREATE PROCEDURE [dbo].[GetPageByID] 
(
	@StaticPageID	int
)

AS BEGIN 

SELECT	s.StaticPageID, 
		s.ButtonName, 
		s.Body, 
		s.DateCreated, 
		s.DatePublished, 
		u.FirstName + ' ' + u.LastName AS WriterName

FROM StaticPage s
	INNER JOIN ASpNetUsers u
		ON s.UserID = u.Id

WHERE s.StaticPageID = @StaticPageID

END 

GO
/****** Object:  StoredProcedure [dbo].[GetPostByID]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------------------------

CREATE PROCEDURE [dbo].[GetPostByID] 
(
	@PostID		int
)

AS BEGIN 

SELECT	p.PostID, 
		p.Title, 
		p.CoverImgURL, 
		p.Body, 
		p.DateCreated, 
		p.DatePublished, 
		p.HasSchedule, 
		p.StartDate, 
		p.EndDate, 
		p.IsActive, 
		u.FirstName + ' ' + u.LastName AS WriterName, 
		c.CategoryID, 
		c.CategoryName

FROM Posts p
	INNER JOIN ASpNetUsers u
		ON p.UserID		=	u.id
	INNER JOIN CateGories c
		ON p.CategoryID	=	c.CategoryID

WHERE p.PostID = @PostID

END 

GO
/****** Object:  StoredProcedure [dbo].[GetPostsByAmount]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------------------------

CREATE PROCEDURE [dbo].[GetPostsByAmount] 
(
	@Amount	 int
) 

AS BEGIN

SELECT TOP(@Amount) 
		p.PostID, 
		p.Title, 
		p.Body, 
		p.CoverImgURL, 
		p.DatePublished, 
		p.HasSchedule, 
		p.StartDate, 
		p.EndDate, 
		u.FirstName + ' ' + u.LastName AS WriterName, 
		c.CateGoryID, 
		c.CateGoryName

FROM Posts p
	INNER JOIN ASpNetUsers u
		ON p.UserID			=	u.Id
	INNER JOIN CateGories c
		ON p.CateGoryID		=	c.CateGoryID

WHERE		p.IsActive		=	1	and 
			p.IsPublished	=	1

ORDER BY	p.DatePublished		DESC

END

GO
/****** Object:  StoredProcedure [dbo].[GetPostsByTagID]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------------------------

CREATE PROCEDURE [dbo].[GetPostsByTagID] 
(
	@TagID		int
) 

AS BEGIN

SELECT	p.PostID, 
		p.Title, 
		p.Body, 
		p.CoverImgURL, 
		p.DatePublished, 
		p.HasSchedule, 
		p.StartDate, 
		p.EndDate, 
		u.FirstName + ' ' + u.LastName AS WriterName, 
		c.CateGoryID, 
		c.CateGoryName

FROM Posts p
	INNER JOIN ASpNetUsers u
		ON p.UserID			=	u.Id
	INNER JOIN CateGories c
		ON p.CateGoryID		=	c.CateGoryID
	INNER JOIN PostsXHash ph
		ON p.PostID			=	ph.PostID

WHERE	ph.TagID		=		@TagID		and 
		p.IsActive		=		1			and 
		p.IsPublished	=		1

END

GO
/****** Object:  StoredProcedure [dbo].[GetTagsByPostID]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------------------------

CREATE PROCEDURE [dbo].[GetTagsByPostID]
(
	@PostID		int
) 

AS BEGIN

SELECT	TagID, 
		ActualHashTag

FROM PostsXHASh ph

WHERE PostID = @PostID

END

GO
/****** Object:  StoredProcedure [dbo].[PublishPage]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------------------------------------------------------

CREATE PROCEDURE [dbo].[PublishPage]
(
	@StaticPageID	int
)

AS BEGIN
	
UPDATE	StaticPage

SET		DatePublished	=	 GetDate(),
		IsPublished     =    1

WHERE	StaticPageID	=	 @StaticPageID

END

GO
/****** Object:  StoredProcedure [dbo].[PublishPost]    Script Date: 12/10/2015 3:57:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------------------------------------------------------

CREATE PROCEDURE [dbo].[PublishPost]
(
	@PostID			int,

	@HasSchedule	bit,
	@StartDate		datetime,
	@EndDate		datetime
)

AS BEGIN

UPDATE	Posts

SET		DatePublished	 =		GetDate(), 
		HasSchedule		 =		@HasSchedule, 
		StartDate		 =		@StartDate, 
		EndDate			 =		@EndDate,
		IsPublished      =      1

WHERE	PostID			 =	    @PostID

END 

GO
USE [master]
GO
ALTER DATABASE [HealthBLogDB] SET  READ_WRITE 
GO
