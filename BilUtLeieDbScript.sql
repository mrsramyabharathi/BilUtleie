USE [BilLeie]
GO
/****** Object:  Table [dbo].[Leietaker]    Script Date: 06/01/2019 21:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Leietaker](
	[LeietakerId] [int] IDENTITY(1,1) NOT NULL,
	[Fornavn] [varchar](20) NOT NULL,
	[Etternavn] [varchar](30) NOT NULL,
	[Adresse1] [varchar](50) NOT NULL,
	[Adresse2] [varchar](50) NULL,
	[Mobil] [varchar](15) NOT NULL,
	[Epost] [varchar](50) NULL,
	[Age] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Leietaker] ON
INSERT [dbo].[Leietaker] ([LeietakerId], [Fornavn], [Etternavn], [Adresse1], [Adresse2], [Mobil], [Epost], [Age]) VALUES (1, N'Mateo', N'Lukas', N'Kongens gate 70', N'Kristiansand', N'47475253', N'Mateo.Lukas@gmail.com', 35)
INSERT [dbo].[Leietaker] ([LeietakerId], [Fornavn], [Etternavn], [Adresse1], [Adresse2], [Mobil], [Epost], [Age]) VALUES (2, N'Sophie', N'William', N'Kronprinsess gate 81', N'Drammen', N'45475352', N'Sophie.William@ymail.com', 19)
INSERT [dbo].[Leietaker] ([LeietakerId], [Fornavn], [Etternavn], [Adresse1], [Adresse2], [Mobil], [Epost], [Age]) VALUES (3, N'Alvin', N'Joseph', N'Kirkegate 12', N'Oslo', N'92989497', N'AlvinJ@gmail.com', 20)
INSERT [dbo].[Leietaker] ([LeietakerId], [Fornavn], [Etternavn], [Adresse1], [Adresse2], [Mobil], [Epost], [Age]) VALUES (4, N'Sebastian', N'David', N'Myntgate 13', N'Kongsberg', N'90908585', N' ', 22)
INSERT [dbo].[Leietaker] ([LeietakerId], [Fornavn], [Etternavn], [Adresse1], [Adresse2], [Mobil], [Epost], [Age]) VALUES (5, N'Tiffany ', N'Blessing', N'Tangen 60', N'Kristiansand', N'45784758', N' ', 70)
SET IDENTITY_INSERT [dbo].[Leietaker] OFF
/****** Object:  Table [dbo].[Leieforhold]    Script Date: 06/01/2019 21:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leieforhold](
	[LeieforholdId] [int] IDENTITY(1,1) NOT NULL,
	[LeietakerId] [int] NOT NULL,
	[BilId] [int] NOT NULL,
	[LeieforholdFra] [datetime] NULL,
	[LeieforholdTil] [datetime] NULL,
	[Pris] [decimal](9, 2) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Leieforhold] ON
INSERT [dbo].[Leieforhold] ([LeieforholdId], [LeietakerId], [BilId], [LeieforholdFra], [LeieforholdTil], [Pris]) VALUES (1, 2, 3, CAST(0x0000A9FB00D9D85C AS DateTime), CAST(0x0000AA5B00C68C2C AS DateTime), CAST(23000.00 AS Decimal(9, 2)))
INSERT [dbo].[Leieforhold] ([LeieforholdId], [LeietakerId], [BilId], [LeieforholdFra], [LeieforholdTil], [Pris]) VALUES (2, 1, 3, CAST(0x0000AA220076F7DC AS DateTime), CAST(0x0000AA2200D9D85C AS DateTime), CAST(400.00 AS Decimal(9, 2)))
INSERT [dbo].[Leieforhold] ([LeieforholdId], [LeietakerId], [BilId], [LeieforholdFra], [LeieforholdTil], [Pris]) VALUES (3, 4, 1, CAST(0x0000AA5A0076F7DC AS DateTime), CAST(0x0000AA3D00D9D85C AS DateTime), CAST(600.00 AS Decimal(9, 2)))
SET IDENTITY_INSERT [dbo].[Leieforhold] OFF
/****** Object:  Table [dbo].[Bil]    Script Date: 06/01/2019 21:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bil](
	[BilId] [int] IDENTITY(1,1) NOT NULL,
	[BilMerke] [varchar](30) NOT NULL,
	[BilModell] [varchar](30) NOT NULL,
	[BilBilde] [image] NULL,
	[BilKlasser] [varchar](15) NULL,
	[AntallSeter] [int] NOT NULL,
	[PrisPåDøgnsLeie] [decimal](9, 0) NULL,
	[PrisPåUkesLeie] [decimal](9, 0) NULL,
	[PrisPåHelgeLeie] [decimal](9, 0) NULL,
	[PrisPåMånedsLeie] [decimal](9, 0) NULL,
	[PrisPåÅrsLeie] [decimal](9, 0) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Bil] ON
INSERT [dbo].[Bil] ([BilId], [BilMerke], [BilModell], [BilBilde], [BilKlasser], [AntallSeter], [PrisPåDøgnsLeie], [PrisPåUkesLeie], [PrisPåHelgeLeie], [PrisPåMånedsLeie], [PrisPåÅrsLeie]) VALUES (1, N'VolksWagon', N'Caddy', NULL, N'B', 2, CAST(200 AS Decimal(9, 0)), CAST(2000 AS Decimal(9, 0)), CAST(1000 AS Decimal(9, 0)), CAST(5000 AS Decimal(9, 0)), CAST(50000 AS Decimal(9, 0)))
INSERT [dbo].[Bil] ([BilId], [BilMerke], [BilModell], [BilBilde], [BilKlasser], [AntallSeter], [PrisPåDøgnsLeie], [PrisPåUkesLeie], [PrisPåHelgeLeie], [PrisPåMånedsLeie], [PrisPåÅrsLeie]) VALUES (2, N'VolksWagon', N'Caddy 4 * 4', NULL, N'C', 2, CAST(201 AS Decimal(9, 0)), CAST(2001 AS Decimal(9, 0)), CAST(1001 AS Decimal(9, 0)), CAST(5001 AS Decimal(9, 0)), CAST(50001 AS Decimal(9, 0)))
INSERT [dbo].[Bil] ([BilId], [BilMerke], [BilModell], [BilBilde], [BilKlasser], [AntallSeter], [PrisPåDøgnsLeie], [PrisPåUkesLeie], [PrisPåHelgeLeie], [PrisPåMånedsLeie], [PrisPåÅrsLeie]) VALUES (3, N'Mercedes', N'Vtio', NULL, N'E', 9, CAST(3000 AS Decimal(9, 0)), CAST(30000 AS Decimal(9, 0)), CAST(15000 AS Decimal(9, 0)), CAST(80000 AS Decimal(9, 0)), CAST(800000 AS Decimal(9, 0)))
INSERT [dbo].[Bil] ([BilId], [BilMerke], [BilModell], [BilBilde], [BilKlasser], [AntallSeter], [PrisPåDøgnsLeie], [PrisPåUkesLeie], [PrisPåHelgeLeie], [PrisPåMånedsLeie], [PrisPåÅrsLeie]) VALUES (4, N'BMW', N'1 series', NULL, NULL, 5, CAST(250 AS Decimal(9, 0)), CAST(2500 AS Decimal(9, 0)), CAST(1500 AS Decimal(9, 0)), CAST(7500 AS Decimal(9, 0)), CAST(70000 AS Decimal(9, 0)))
INSERT [dbo].[Bil] ([BilId], [BilMerke], [BilModell], [BilBilde], [BilKlasser], [AntallSeter], [PrisPåDøgnsLeie], [PrisPåUkesLeie], [PrisPåHelgeLeie], [PrisPåMånedsLeie], [PrisPåÅrsLeie]) VALUES (5, N'Toyato', N'RAV 4 * 4 ', NULL, N'E ', 5, CAST(300 AS Decimal(9, 0)), CAST(3000 AS Decimal(9, 0)), CAST(1500 AS Decimal(9, 0)), CAST(7500 AS Decimal(9, 0)), CAST(70000 AS Decimal(9, 0)))
SET IDENTITY_INSERT [dbo].[Bil] OFF
