USE [master]
GO

USE [photo]
GO
/****** Object:  Table [dbo].[photo]    Script Date: 2018-05-06 20:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[photo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[type] [int] NULL,
	[puid] [nvarchar](50) NULL,
	[photo] [image] NULL,
	[memo] [nvarchar](max) NULL,
 CONSTRAINT [PK_photo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StorageChecking]    Script Date: 2018-05-06 20:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StorageChecking](
	[id] [int] NOT NULL,
	[ProductGeneralName] [nvarchar](max) NULL,
	[DictionarySpecificationCode] [nvarchar](max) NULL,
	[DictionaryMeasurementUnitCode] [nvarchar](max) NULL,
	[LicensePermissionNumber] [nvarchar](max) NULL,
	[FactoryName] [nvarchar](max) NULL,
	[Origin] [nvarchar](50) NULL,
	[BatchNumber] [nvarchar](max) NULL,
	[PruductDate] [datetime] NULL,
	[OutValidDate] [datetime] NULL,
	[PurchasePrice] [decimal](18, 4) NULL,
	[CanSaleNum] [decimal](14, 4) NULL,
	[CurrentInventoryCount] [decimal](14, 4) NULL,
	[PriceCount] [decimal](14, 4) NULL,
	[RealAmount] [decimal](14, 4) NULL,
	[DismantingAmount] [decimal](14, 4) NULL,
	[operationTime] [datetime] NULL,
	[DocumentNum] [nvarchar](50) NULL,
	[operationUser] [nvarchar](50) NULL,
	[WarehouseZoneName] [nvarchar](50) NULL,
 CONSTRAINT [PK_StorageChecking] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
