drop database EShop2
go
create database EShop2
go
USE EShop2
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 2/22/2022 4:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](200) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Activated] [bit] NOT NULL,
	[Mobile] [nvarchar](20) NOT NULL,
	[Address] [nvarchar](200) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 2/22/2022 4:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](20) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Authorities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/22/2022 4:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1000,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[NameVn] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2/22/2022 4:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Discount] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2/22/2022 4:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[Recipient] [nvarchar](50) NOT NULL,
	[Mobile] [nvarchar](20) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Amount] [float] NOT NULL,
	[StatusId] [int] NOT NULL,
	[Notes] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2/22/2022 4:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Discount] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProductDate] [date] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Special] [bit] NOT NULL,
	[LikeCount] [int] NOT NULL,
	[Available] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2/22/2022 4:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'22', N'22', N'22', N'nghiemn@fpt.edu.vn', N'new.png', 1, N'0913745789', N'4/32 Lưu Chí Hiếu')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'trung01', N'trung01', N'Nguyen Nguyen Trung', N'trungcaphe258@gmail.com', N'ea942c13.jpg', 1, N'0337752650', N'123 Lê Văn Thọ')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'trung02', N'123a', N'Phạm Thành Trung', N'trungpham159@gmail.com', N'cea01b2c.jpg', 1, N'0367460153', N'112 Hai Bà Trưng')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'trung03', N'123a', N'Trần Thành Trung', N'trungthanhtran15@gmail.com', N'4cbbc42c.jpg', 1, N'0713745789', N'116 Thống Nhất')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'thinh01', N'thinhdeptrai', N'Nguyễn Đức Thịnh', N'dt131020@gmail.com', N'20ba07e4.jpg', 1, N'0313745789', N'12 Đinh Tiên Hoàng')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'huy01', N'huy123', N'Nguyễn Quốc Huy', N'huynq125@gmail.com', N'user.png', 1, N'0713745789', N'159 Lê Văn Sỹ')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'vandeptrai', N'van123', N'Phạm Đình Văn', N'vandt123@gmail.com', N'user.png', 1, N'0313745789', N'90 Lê Văn Sỹ')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'phu03', N'phu159', N'Lê Thành Phú', N'phule112@gmail.com', N'user.png', 1, N'0913745789', N'12 Hai Bà Trưng')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'user13', N'123a', N'Nguyễn Văn User13', N'user13@gmail.com', N'user.png', 1, N'0913745769', N'45 Hàng Mã')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'QNT13', N'QNT1', N'Trịnh Ngọc Quang ', N'QNT13@gmail.com', N'user.png', 1, N'0913745889', N'50 Nam Kì Khởi Nghĩa')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'Bongminz', N'1111', N'Bông Văn Mai ', N'bongmai111@gmail.com', N'user.png', 1, N'0313745789', N'59 Lê Văn Khương')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'BSBEV', N'bsbev', N'Victoria Ashworth', N'bsbev@gmail.com', N'user.png', 1, N'913745789', N'999 Hoàng Văn Thụ')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'CACTU', N'cactu', N'Patricio Simpson', N'cactu@gmail.com', N'user.png', 1, N'913745789', N'12 Quang Trung')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'CENTC', N'centc', N'Francisco Chang', N'centc@gmail.com', N'user.png', 1, N'913745789', N'438 Cây Trâm')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'CHOPS', N'chops', N'Yang Wang', N'chops@gmail.com', N'user.png', 1, N'913745789', N'144 Phạm Văn Đồng')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'COMMI', N'commi', N'Pedro Afonso', N'commi@gmail.com', N'user.png', 1, N'913745789', N'123 Bạch Đằng')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'CONSH', N'consh', N'Elizabeth Brown', N'consh@gmail.com', N'user.png', 1, N'913745789', N'456 Nguyễn Thái Học')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'DRACD', N'dracd', N'Sven Ottlieb', N'dracd@gmail.com', N'user.png', 1, N'913745789', N'789 D2 Bình Thạnh')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'DUMON', N'dumon', N'Janine Labrune', N'dumon@gmail.com', N'user.png', 1, N'913745789', N'111 Phan Bội Châu')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'EASTC', N'eastc', N'Ann Devon', N'eastc@gmail.com', N'user.png', 1, N'913745789', N'123 Phạm Ngọc Chi')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'ERNSH', N'ernsh', N'Roland Mendel', N'ernsh@gmail.com', N'user.png',1,N'913745789', N'8 Hàn Thuyên')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'FAMIA', N'famia', N'Aria Cruz', N'famia@gmail.com', N'user.png',1,N'913745789', N'10 Nguyễn Huệ')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'FISSA', N'fissa', N'Diego Roel', N'fissa@gmail.com', N'user.png',1,N'913745789', N'159 Tân Thới Nhất')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'FOLIG', N'folig', N'Martine Rancé', N'folig@gmail.com', N'user.png',1,N'913745789', N'357 Tân Thới Nhì')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'FOLKO', N'folko', N'Maria Larsson', N'folko@gmail.com', N'user.png',1,N'913745789', N'10 Lê Văn Tám')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'FRANK', N'frank', N'Peter Franken', N'frank@gmail.com', N'user.png',1,N'913745789', N'147 Hoàng Hoa Thám')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'FRANR', N'franr', N'Carine Schmitt', N'franr@gmail.com', N'user.png',1,N'913745789', N'160 Hoàng Hoa Thám')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'FRANS', N'frans', N'Paolo Accorti', N'frans@gmail.com', N'user.png',1,N'913745789', N'190 Hàn Thuyên')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'FURIB', N'furib', N'Lino Rodriguez', N'furib@gmail.com', N'user.png',1,N'913745789', N'466 Trường Chinh')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'GALED', N'galed', N'Eduardo Saavedra', N'galed@gmail.com', N'user.png',1,N'913745789', N'666 Nguyễn Văn Quá')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'GODOS', N'godos', N'José Pedro Freyre', N'godos@gmail.com', N'user.png',1,N'913745789', N'111 Tô Ký')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'GOURL', N'gourl', N'André Fonseca', N'gourl@gmail.com', N'user.png',1,N'913745789', N'177 Tô Ký')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'GREAL', N'greal', N'Howard Snyder', N'greal@gmail.com', N'38a50f82.jpg',1,N'913745789', N'199 Tô Ký')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'GROSR', N'grosr', N'Manuel Pereira', N'grosr@gmail.com', N'user.png',1,N'913745789', N'123 Song Hành')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'HANAR', N'hanar', N'Mario Pontes', N'hanar@gmail.com', N'user.png',1,N'913745789', N'888 Quang Trung')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'HILAA', N'hilaa', N'Carlos Hernández', N'hilaa@gmail.com', N'user.png',1,N'913745789', N'777 Tân Kỳ Tân Quý')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'HUNGC', N'hungc', N'Yoshi Latimer', N'hungc@gmail.com', N'user.png',1,N'913745789', N'789 Luỹ Bán Bích')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'HUNGO', N'hungo', N'Patricia McKenna', N'hungo@gmail.com', N'f194ae24.jpg', 1, N'913745789', N'155 Âu Cơ')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'ISLAT', N'islat', N'Helen Bennett', N'islat@gmail.com', N'user.png',1,N'913745789', N'156 Lạc Long Quân')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'KOENE', N'koene', N'Philip Cramer', N'koene@gmail.com', N'user.png',1,N'913745789', N'167 Âu CƠ')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'LACOR', N'lacor', N'Daniel Tonini', N'lacor@gmail.com', N'user.png',1,N'913745789', N'3 Điên Biên Phủ')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'LAMAI', N'lamai', N'Annette Roulet', N'lamai@gmail.com', N'user.png',1,N'913745789', N'112 Điện Biên Phủ')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'LAUGB', N'laugb', N'Yoshi Tannamuri', N'laugb@gmail.com', N'user.png',1,N'913745789', N'456 Điện Biên Phủ')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'LAZYK', N'lazyk', N'John Steel', N'lazyk@gmail.com', N'user.png',1,N'913745789', N'444 Lạc Long Quân')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'LEHMS', N'lehms', N'Renate Messner', N'lehms@gmail.com', N'user.png',1,N'913745789',N'112 QL22')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'LETSS', N'letss', N'Jaime Yorres', N'letss@gmail.com', N'user.png',1,N'913745789',N'159 QL 1A')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'LILAS', N'lilas', N'Carlos González', N'lilas@gmail.com', N'user.png',1,N'913745789',N'184 QL 1A')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'LINOD', N'linod', N'Felipe Izquierdo', N'linod@gmail.com', N'user.png',1,N'913745789',N'12 Lê Thị Hà')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'LONEP', N'lonep', N'Fran Wilson', N'lonep@gmail.com', N'user.png',1,N'913745789',N'16 Nguyễn Văn Bứa')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'MAGAA', N'magaa', N'Giovanni Rovelli', N'magaa@gmail.com', N'user.png',1,N'913745789',N'18 Võ Thị Hồi')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'MAISD', N'maisd', N'Catherine Dewey', N'maisd@gmail.com', N'user.png',1,N'913745789',N'123 Phan Văn Hớn')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'MEREP', N'merep', N'Jean Fresnière', N'merep@gmail.com', N'user.png',1,N'913745789',N'133 Trần Văn Mười')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'MORGK', N'morgk', N'Alexander Feuer', N'morgk@gmail.com', N'user.png',1,N'913745789',N'48/5 Nguyễn Thái Học')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'NghiemN', N'solo', N'Nguyễn Nghiệm', N'nghiemn@fpt.edu.vn', N'18ea88b8.jpg', 1, N'913745789', N'78/3 Võ Thị Sáu')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'NORTS', N'norts', N'Simon Crowther', N'norts@gmail.com', N'user.png',1,N'913745789',N'11/3 Trần Văn Mười')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'OCEAN', N'ocean', N'Yvonne Moncada', N'ocean@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'OLDWO', N'oldwo', N'Rene Phillips', N'oldwo@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'OTTIK', N'ottik', N'Henriette Pfalzheim', N'ottik@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'PARIS', N'paris', N'Marie Bertrand', N'paris@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'PERIC', N'peric', N'Guillermo Fernández', N'peric@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'PICCO', N'picco', N'Georg Pipps', N'picco@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'PRINI', N'prini', N'Isabel de Castro', N'prini@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'QUEDE', N'quede', N'Bernardo Batista', N'quede@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'QUEEN', N'queen', N'Lúcia Carvalho', N'queen@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'QUICK', N'quick', N'Horst Kloss', N'quick@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'RANCH', N'ranch', N'Sergio Gutiérrez', N'ranch@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'RATTC', N'rattc', N'Paula Wilson', N'rattc@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'REGGC', N'reggc', N'Maurizio Moroni', N'reggc@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'RICAR', N'ricar', N'Janete Limeira', N'ricar@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'RICSU', N'ricsu', N'Michael Holz', N'ricsu@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'ROMEY', N'romey', N'Alejandra Camino', N'romey@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'SANTG', N'santg', N'Jonas Bergulfsen', N'santg@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'SauVT', N'sauvt', N'Võ Thị Sáu', N'sauvt@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'SAVEA', N'savea', N'Jose Pavarotti', N'savea@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'SEVES', N'seves', N'Hari Kumar', N'seves@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'SIMOB', N'simob', N'Jytte Petersen', N'simob@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'SPECD', N'specd', N'Dominique Perrier', N'specd@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'SPLIR', N'splir', N'Art Braunschweiger', N'splir@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'SUPRD', N'suprd', N'Pascale Cartrain', N'suprd@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'THEBI', N'thebi', N'Liz Nixon', N'thebi@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'THECR', N'thecr', N'Liu Wong', N'thecr@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'TOMSP', N'tomsp', N'Karin Josephs', N'tomsp@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'TORTU', N'tortu', N'Miguel Angel Paolino', N'tortu@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'TRADH', N'tradh', N'Anabela Domingues', N'tradh@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'TRAIH', N'traih', N'Helvetius Nagy', N'traih@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'user1', N'$2a$10$WK563AeN9nNcqPWy1Rv3mOxT1YtamvdCwddda2WbfxjwhFjTs/wlm', N'Nguyễn Văn User 1', N'nghiemn@fpt.edu.vn', N'8b97eed1.jpg', 1, N'913745789', N'4/32 Lưu Chí Hiếu')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'user10', N'123', N'Nguyễn Nghiệm', N'nghiemn@fpt.edu.vn', N'new.png', 0, N'0913745789', N'4/32 Lưu Chí Hiếu')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'user11', N'123', N'Nguyễn Đình Nghiệm', N'nghiemn@fpt.edu.vn', N'new.png', 1, N'0913745789', N'4/32 Lưu Chí Hiếu')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'user2', N'$2a$10$WK563AeN9nNcqPWy1Rv3mOxT1YtamvdCwddda2WbfxjwhFjTs/wlm', N'Đoàn Tuấn User 2', N'nghiemn@fpt.edu.vn', N'ac6286d5.jpg', 1, N'913745789', N'4/32 Lưu Chí Hiếu')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'user3', N'$2a$10$2VFNx5WG7yvmnRA8BLk3Cu6U0kOCN/Aar7IRFoMHQojazNkRPH2MW', N'Hồ Thị Thu User 3', N'nghiemn@fpt.edu.vn', N'b4f4aec8.jpg', 1, N'913745789', N'4/32 Lưu Chí Hiếu')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'user4', N'$2a$10$jZoqy4tegvKYFw2aOuFHKOds7swIbrDa/IxVOH2yKBd5RPcXRZngS', N'Phạm Thị Mỹ User 4', N'nghiemn@fpt.edu.vn', N'7abe2ee.jpg', 1, N'0913745789', N'4/32 Lưu Chí Hiếu')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'user5', N'$2a$10$qGU6NrGhpktxgK7IIeF/MuVwjrqURTT3k1sUGK7jUa8bhn/AqSWpi', N'Đoàn User 5', N'', N'26543fe8.jpg', 1, N'', N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'VAFFE', N'vaffe', N'Palle Ibsen', N'vaffe@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'VICTE', N'victe', N'Mary Saveley', N'victe@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'VINET', N'vinet', N'Paul Henriot', N'vinet@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'WANDK', N'wandk', N'Rita Müller', N'wandk@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'WARTH', N'warth', N'Pirkko Koskitalo', N'warth@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'WELLI', N'welli', N'Paula Parente', N'welli@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'WHITC', N'whitc', N'Karl Jablonski', N'whitc@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'WILMK', N'wilmk', N'Matti Karttunen', N'wilmk@gmail.com', N'user.png',1,N'913745789',N'')
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Mobile], [Address]) VALUES (N'WOLZA', N'wolza', N'Zbyszek Piestrzeniewicz', N'wolza@gmail.com', N'user.png',1,N'913745789',N'')
GO
SET IDENTITY_INSERT [dbo].[Authorities] ON 
GO
INSERT [dbo].[Authorities] ([Id], [RoleId], [Username]) VALUES (1028, N'STAFF', N'user2')
GO
INSERT [dbo].[Authorities] ([Id], [RoleId], [Username]) VALUES (1029, N'SUPER', N'user2')
GO
INSERT [dbo].[Authorities] ([Id], [RoleId], [Username]) VALUES (1031, N'ADMIN', N'trung01')
GO
INSERT [dbo].[Authorities] ([Id], [RoleId], [Username]) VALUES (1032, N'SUPER', N'user1')
GO
INSERT [dbo].[Authorities] ([Id], [RoleId], [Username]) VALUES (1036, N'ADMIN', N'huy01')
GO
INSERT [dbo].[Authorities] ([Id], [RoleId], [Username]) VALUES (1037, N'ADMIN', N'vandeptrai')
GO
INSERT [dbo].[Authorities] ([Id], [RoleId], [Username]) VALUES (1038, N'SUPER', N'ALFKI')
GO
INSERT [dbo].[Authorities] ([Id], [RoleId], [Username]) VALUES (1039, N'STAFF', N'user3')
GO
INSERT [dbo].[Authorities] ([Id], [RoleId], [Username]) VALUES (1040, N'SUPER', N'user3')
GO
INSERT [dbo].[Authorities] ([Id], [RoleId], [Username]) VALUES (1041, N'SUPER', N'22')
GO
SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([Id], [Name], [NameVn]) VALUES (1000, N'Acer', N'Acer')
GO
INSERT [dbo].[Categories] ([Id], [Name], [NameVn]) VALUES (1001, N'Asus', N'Asus')
GO
INSERT [dbo].[Categories] ([Id], [Name], [NameVn]) VALUES (1002, N'HP', N'HP')
GO
INSERT [dbo].[Categories] ([Id], [Name], [NameVn]) VALUES (1003, N'Dell', N'Dell')
GO
INSERT [dbo].[Categories] ([Id], [Name], [NameVn]) VALUES (1004, N'MACBook', N'MAC')
GO
INSERT [dbo].[Categories] ([Id], [Name], [NameVn]) VALUES (1005, N'LG', N'LG')
GO
INSERT [dbo].[Categories] ([Id], [Name], [NameVn]) VALUES (1006, N'MSI', N'MSI')
GO
INSERT [dbo].[Categories] ([Id], [Name], [NameVn]) VALUES (1007, N'Lenovo', N'Lenovo')
GO
INSERT [dbo].[Categories] ([Id], [Name], [NameVn]) VALUES (1019, N'Gigabyte', N'Gigabyte')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100005, 10249, 1051, 42.4, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100006, 10250, 1041, 7.7, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100007, 10250, 1051, 42.4, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100008, 10250, 1065, 16.8, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100009, 10251, 1022, 16.8, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100010, 10251, 1057, 15.6, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100011, 10251, 1065, 16.8, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100012, 10252, 1020, 64.8, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100013, 10252, 1033, 2, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100014, 10252, 1060, 27.2, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100015, 10253, 1031, 10, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100016, 10253, 1039, 14.4, 42, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100017, 10253, 1049, 16, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100018, 10254, 1024, 3.6, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100019, 10254, 1055, 19.2, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100020, 10254, 1074, 800, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100021, 10255, 1002, 1520, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100022, 10255, 1016, 1390, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100023, 10255, 1036, 1520, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100024, 10255, 1059, 4400, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100025, 10256, 1053, 2620, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100026, 10256, 1077, 1040, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100027, 10257, 1027, 3510, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100028, 10257, 1039, 1440, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100029, 10257, 1077, 1040, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100030, 10258, 1002, 1520, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100032, 10258, 1032, 2560, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100033, 10259, 1021, 899, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100034, 10259, 1037, 2080, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100035, 10260, 1041, 770, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100036, 10260, 1057, 1560, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100037, 10260, 1062, 3940, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100038, 10260, 1070, 1200, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100039, 10261, 1021, 800, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100040, 10261, 1035, 1440, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100042, 10262, 1007, 2400, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100043, 10262, 1056, 3040, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100044, 10263, 1016, 1390, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100045, 10263, 1024, 3600, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100046, 10263, 1030, 2070, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100047, 10263, 1074, 800, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100048, 10264, 1002, 1520, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100049, 10264, 1041, 7499, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100050, 10265, 1017, 3120, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100051, 10265, 1070, 1200, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100052, 10266, 1012, 3040, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100053, 10267, 1040, 1470, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100054, 10267, 1059, 4400, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100055, 10267, 1076, 1440, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100056, 10268, 1029, 990, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100058, 10269, 1033, 2000, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100060, 10270, 1036, 1520, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100061, 10270, 1043, 3680, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100062, 10271, 1033, 2000, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100063, 10272, 1020, 6480, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100064, 10272, 1031, 1000, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100066, 10273, 1010, 2480, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100067, 10273, 1031, 1000, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100068, 10273, 1033, 2000, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100069, 10273, 1040, 1470, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100070, 10273, 1076, 1440, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100071, 10274, 1071, 1720, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100073, 10275, 1024, 3600, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100074, 10275, 1059, 4400, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100075, 10276, 1010, 2480, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100076, 10276, 1013, 4800, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100077, 10277, 1028, 3640, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100078, 10277, 1062, 3940, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100079, 10278, 1044, 1550, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100080, 10278, 1059, 4400, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100081, 10278, 1063, 3510, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100082, 10278, 1073, 12000, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100083, 10279, 1017, 3120, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100084, 10280, 1024, 3600, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100085, 10280, 1055, 1920, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100086, 10280, 1075, 6200, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100087, 10281, 1019, 7300, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100088, 10281, 1024, 3600, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100089, 10281, 1035, 1440, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100090, 10282, 1030, 2070, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100091, 10282, 1057, 1560, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100092, 10283, 1015, 1240, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100093, 10283, 1019, 7300, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100094, 10283, 1060, 27200, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100096, 10284, 1027, 35100, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100097, 10284, 1044, 1550, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100098, 10284, 1060, 27200, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100099, 10284, 1067, 1120, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100100, 10285, 1001, 1440, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100101, 10285, 1040, 1470, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100102, 10285, 1053, 26200, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100103, 10286, 1035, 1440, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100104, 10286, 1062, 3940, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100105, 10287, 1016, 1390, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100106, 10287, 1034, 1120, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100107, 10287, 1046, 9600, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100108, 10288, 1054, 5900, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100109, 10288, 1068, 10000, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100110, 10289, 1003, 80000, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100111, 10289, 1064, 26600, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100113, 10290, 1029, 9900, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100114, 10290, 1049, 1600, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100115, 10290, 1077, 10400, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100116, 10291, 1013, 4800, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100117, 10291, 1044, 1550, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100118, 10291, 1051, 4240, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100119, 10292, 1020, 64800, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100120, 10293, 1018, 50000, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100121, 10293, 1024, 36000, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100122, 10293, 1063, 35100, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100123, 10293, 1075, 62000, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100124, 10294, 1001, 14400, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100125, 10294, 1017, 31200, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100126, 10294, 1043, 36800, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100127, 10294, 1060, 27200, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100128, 10294, 1075, 6200, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100129, 10295, 1056, 3040, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100131, 10296, 1016, 1390, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100132, 10296, 1069, 2880, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100133, 10297, 1039, 1440, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100135, 10298, 1002, 1520, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100136, 10298, 1036, 1520, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100137, 10298, 1059, 4400, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100138, 10298, 1062, 3940, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100139, 10299, 1019, 7300, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100140, 10299, 1070, 1200, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100141, 10300, 1066, 1360, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100142, 10300, 1068, 1000, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100143, 10301, 1040, 1470, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100144, 10301, 1056, 3040, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100145, 10302, 1017, 3120, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100146, 10302, 1028, 3640, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100147, 10302, 1043, 3680, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100148, 10303, 1040, 1470, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100149, 10303, 1065, 1680, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100150, 10303, 1068, 1000, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100151, 10304, 1049, 1600, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100152, 10304, 1059, 4400, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100153, 10304, 1071, 1720, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100154, 10305, 1018, 5000, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100155, 10305, 1029, 9900, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100156, 10305, 1039, 1440, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100157, 10306, 1030, 20700, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100158, 10306, 1053, 26200, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100159, 10306, 1054, 5900, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100160, 10307, 1062, 39400, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100161, 10307, 1068, 10000, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100162, 10308, 1069, 2880, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100163, 10308, 1070, 12000, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100164, 10309, 1004, 17600, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100165, 10309, 1006, 2000, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100167, 10309, 1043, 36800, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100168, 10309, 1071, 17200, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100169, 10310, 1016, 13900, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100170, 10310, 1062, 39400, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100172, 10311, 1069, 2880, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100173, 10312, 1028, 3640, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100174, 10312, 1043, 3680, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100175, 10312, 1053, 2620, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100176, 10312, 1075, 6200, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100177, 10313, 1036, 1520, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100178, 10314, 1032, 2560, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100179, 10314, 1058, 1060, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100180, 10314, 1062, 3940, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100181, 10315, 1034, 1120, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100182, 10315, 1070, 1200, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100183, 10316, 1041, 7700, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100184, 10316, 1062, 39400, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100185, 10317, 1001, 14400, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100186, 10318, 1041, 77000, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100187, 10318, 1076, 14400, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100188, 10319, 1017, 31200, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100189, 10319, 1028, 36400, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100190, 10319, 1076, 14400, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100191, 10320, 1071, 17200, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100192, 10321, 1035, 1440, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100193, 10322, 1052, 5600, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100194, 10323, 1015, 12400, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100195, 10323, 1025, 11200, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100196, 10323, 1039, 14400, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100197, 10324, 1016, 13900, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100198, 10324, 1035, 14400, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100199, 10324, 1046, 9600, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100200, 10324, 1059, 4400, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100201, 10324, 1063, 35100, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100202, 10325, 1006, 20000, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100203, 10325, 1013, 4800, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100204, 10325, 1014, 18600, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100205, 10325, 1031, 10000, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100207, 10326, 1004, 17600, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100208, 10326, 1057, 15600, 2 , 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100209, 10326, 1075, 6.2, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100210, 10327, 1002, 15.2, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100212, 10327, 1030, 20.7, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100213, 10327, 1058, 10.6, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100214, 10328, 1059, 44, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100215, 10328, 1065, 16.8, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100216, 10328, 1068, 10, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100217, 10329, 1019, 7.3, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100218, 10329, 1030, 20.7, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100219, 10329, 1038, 210.8, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100220, 10329, 1056, 30.4, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100221, 10330, 1026, 24.9, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100223, 10331, 1054, 5.9, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100224, 10332, 1018, 50, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100226, 10332, 1047, 7.6, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100227, 10333, 1014, 18.6, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100228, 10333, 1021, 8, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100229, 10333, 1071, 17.2, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100230, 10334, 1052, 5.6, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100231, 10334, 1068, 10, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100232, 10335, 1002, 15.2, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100233, 10335, 1031, 10, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100234, 10335, 1032, 25.6, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100235, 10335, 1051, 42.4, 48, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100236, 10336, 1004, 17.6, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100237, 10337, 1023, 7.2, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100238, 10337, 1026, 24.9, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100239, 10337, 1036, 15.2, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100240, 10337, 1037, 20.8, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100242, 10338, 1017, 31.2, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100243, 10338, 1030, 20.7, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100244, 10339, 1004, 17.6, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100245, 10339, 1017, 31.2, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100246, 10339, 1062, 39.4, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100247, 10340, 1018, 50, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100248, 10340, 1041, 7.7, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100249, 10340, 1043, 36.8, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100250, 10341, 1033, 2, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100251, 10341, 1059, 44, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100252, 10342, 1002, 15.2, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100253, 10342, 1031, 10, 56, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100254, 10342, 1036, 15.2, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100255, 10342, 1055, 19.2, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100256, 10343, 1064, 26.6, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100257, 10343, 1068, 10, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100258, 10343, 1076, 14.4, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100259, 10344, 1004, 17.6, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100260, 10344, 1008, 32, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100261, 10345, 1008, 32, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100262, 10345, 1019, 7.3, 80, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100264, 10346, 1017, 31.2, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100265, 10346, 1056, 30.4, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100266, 10347, 1025, 11.2, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100267, 10347, 1039, 14.4, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100268, 10347, 1040, 14.7, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100269, 10347, 1075, 6.2, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100270, 10348, 1001, 14.4, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100271, 10348, 1023, 7.2, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100272, 10349, 1054, 5.9, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100273, 10350, 1050, 13, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100274, 10350, 1069, 28.8, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100275, 10351, 1038, 210.8, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100276, 10351, 1041, 7.7, 13, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100277, 10351, 1044, 15.5, 77, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100278, 10351, 1065, 16.8, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100279, 10352, 1024, 3.6, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100280, 10352, 1054, 5.9, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100282, 10353, 1038, 210.8, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100283, 10354, 1001, 14.4, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100284, 10354, 1029, 99, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100285, 10355, 1024, 3.6, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100286, 10355, 1057, 15.6, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100287, 10356, 1031, 10, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100288, 10356, 1055, 19.2, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100289, 10356, 1069, 28.8, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100290, 10357, 1010, 24.8, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100291, 10357, 1026, 24.9, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100292, 10357, 1060, 27.2, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100293, 10358, 1024, 3.6, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100294, 10358, 1034, 11.2, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100295, 10358, 1036, 15.2, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100296, 10359, 1016, 13.9, 56, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100297, 10359, 1031, 10, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100298, 10359, 1060, 27.2, 80, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100299, 10360, 1028, 36.4, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100300, 10360, 1029, 99, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100301, 10360, 1038, 210.8, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100302, 10360, 1049, 16, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100303, 10360, 1054, 5.9, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100304, 10361, 1039, 14.4, 54, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100305, 10361, 1060, 27.2, 55, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100306, 10362, 1025, 11.2, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100307, 10362, 1051, 42.4, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100308, 10362, 1054, 5.9, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100309, 10363, 1031, 10, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100310, 10363, 1075, 6.2, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100311, 10363, 1076, 14.4, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100312, 10364, 1069, 28.8, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100313, 10364, 1071, 17.2, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100315, 10366, 1065, 16.8, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100316, 10366, 1077, 10.4, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100317, 10367, 1034, 11.2, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100318, 10367, 1054, 5.9, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100319, 10367, 1065, 16.8, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100320, 10367, 1077, 10.4, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100321, 10368, 1021, 8, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100322, 10368, 1028, 36.4, 13, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100323, 10368, 1057, 15.6, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100324, 10368, 1064, 26.6, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100325, 10369, 1029, 99, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100326, 10369, 1056, 30.4, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100327, 10370, 1001, 14.4, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100328, 10370, 1064, 26.6, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100329, 10370, 1074, 8, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100330, 10371, 1036, 15.2, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100331, 10372, 1020, 64.8, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100332, 10372, 1038, 210.8, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100333, 10372, 1060, 27.2, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100335, 10373, 1058, 10.6, 80, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100336, 10373, 1071, 17.2, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100337, 10374, 1031, 10, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100338, 10374, 1058, 10.6, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100339, 10375, 1014, 18.6, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100340, 10375, 1054, 5.9, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100341, 10376, 1031, 10, 42, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100342, 10377, 1028, 36.4, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100343, 10377, 1039, 14.4, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100344, 10378, 1071, 17.2, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100345, 10379, 1041, 7.7, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100346, 10379, 1063, 35.1, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100347, 10379, 1065, 16.8, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100348, 10380, 1030, 20.7, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100349, 10380, 1053, 26.2, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100350, 10380, 1060, 27.2, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100351, 10380, 1070, 12, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100352, 10381, 1074, 8, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100354, 10382, 1018, 50, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100355, 10382, 1029, 99, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100356, 10382, 1033, 2, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100357, 10382, 1074, 8, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100358, 10383, 1013, 4.8, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100359, 10383, 1050, 13, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100360, 10383, 1056, 30.4, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100361, 10384, 1020, 64.8, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100362, 10384, 1060, 27.2, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100363, 10385, 1007, 24, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100364, 10385, 1060, 27.2, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100365, 10385, 1068, 10, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100366, 10386, 1024, 3.6, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100367, 10386, 1034, 11.2, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100368, 10387, 1024, 3.6, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100369, 10387, 1028, 36.4, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100370, 10387, 1059, 44, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100371, 10387, 1071, 17.2, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100372, 10388, 1045, 7.6, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100373, 10388, 1052, 5.6, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100374, 10388, 1053, 26.2, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100375, 10389, 1010, 24.8, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100376, 10389, 1055, 19.2, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100377, 10389, 1062, 39.4, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100378, 10389, 1070, 12, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100379, 10390, 1031, 10, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100380, 10390, 1035, 14.4, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100381, 10390, 1046, 9.6, 45, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100383, 10391, 1013, 4.8, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100384, 10392, 1069, 28.8, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100385, 10393, 1002, 15.2, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100386, 10393, 1014, 18.6, 42, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100387, 10393, 1025, 11.2, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100388, 10393, 1026, 24.9, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100389, 10393, 1031, 10, 32, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100390, 10394, 1013, 4.8, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100391, 10394, 1062, 39.4, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100392, 10395, 1046, 9.6, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100393, 10395, 1053, 26.2, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100394, 10395, 1069, 28.8, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100395, 10396, 1023, 7.2, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100396, 10396, 1071, 17.2, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100398, 10397, 1021, 8, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100399, 10397, 1051, 42.4, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100400, 10398, 1035, 14.4, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100401, 10398, 1055, 19.2, 120, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100402, 10399, 1068, 10, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100403, 10399, 1071, 17.2, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100404, 10399, 1076, 14.4, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100405, 10399, 1077, 10.4, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100406, 10400, 1029, 99, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100407, 10400, 1035, 14.4, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100408, 10400, 1049, 16, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100409, 10401, 1030, 20.7, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100410, 10401, 1056, 30.4, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100411, 10401, 1065, 16.8, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100412, 10401, 1071, 17.2, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100413, 10402, 1023, 7.2, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100414, 10402, 1063, 35.1, 65, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100415, 10403, 1016, 13.9, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100416, 10403, 1048, 10.2, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100417, 10404, 1026, 24.9, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100419, 10404, 1049, 16, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100420, 10405, 1003, 8, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100421, 10406, 1001, 14.4, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100422, 10406, 1021, 8, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100423, 10406, 1028, 36.4, 42, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100424, 10406, 1036, 15.2, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100425, 10406, 1040, 14.7, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100427, 10407, 1069, 28.8, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100428, 10407, 1071, 17.2, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100429, 10408, 1037, 20.8, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100430, 10408, 1054, 5.9, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100431, 10408, 1062, 39.4, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100432, 10409, 1014, 18.6, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100433, 10409, 1021, 8, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100434, 10410, 1033, 2, 49, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100435, 10410, 1059, 44, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100436, 10411, 1041, 7.7, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100437, 10411, 1044, 15.5, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100438, 10411, 1059, 44, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100439, 10412, 1014, 18.6, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100440, 10413, 1001, 14.4, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100441, 10413, 1062, 39.4, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100442, 10413, 1076, 14.4, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100443, 10414, 1019, 7.3, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100444, 10414, 1033, 2, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100445, 10415, 1017, 31.2, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100446, 10415, 1033, 2, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100447, 10416, 1019, 7.3, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100448, 10416, 1053, 26.2, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100449, 10416, 1057, 15.6, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100450, 10417, 1038, 210.8, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100451, 10417, 1046, 9.6, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100452, 10417, 1068, 10, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100453, 10417, 1077, 10.4, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100454, 10418, 1002, 15.2, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100455, 10418, 1047, 7.6, 55, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100456, 10418, 1061, 22.8, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100457, 10418, 1074, 8, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100458, 10419, 1060, 27.2, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100459, 10419, 1069, 28.8, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100460, 10420, 1009, 150, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100461, 10420, 1013, 4.8, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100462, 10420, 1070, 12, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100463, 10420, 1073, 12, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100464, 10421, 1019, 7.3, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100465, 10421, 1026, 24.9, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100466, 10421, 1053, 26.2, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100467, 10421, 1077, 10.4, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100468, 10422, 1026, 24.9, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100469, 10423, 1031, 10, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100470, 10423, 1059, 44, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100471, 10424, 1035, 14.4, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100472, 10424, 1038, 210.8, 49, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100473, 10424, 1068, 10, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100474, 10425, 1055, 19.2, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100475, 10425, 1076, 14.4, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100476, 10426, 1056, 30.4, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100477, 10426, 1064, 26.6, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100478, 10427, 1014, 18.6, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100479, 10428, 1046, 9.6, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100480, 10429, 1050, 13, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100481, 10429, 1063, 35.1, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100482, 10430, 1017, 31.2, 45, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100483, 10430, 1021, 8, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100484, 10430, 1056, 30.4, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100485, 10430, 1059, 44, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100486, 10431, 1017, 31.2, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100487, 10431, 1040, 14.7, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100488, 10431, 1047, 7.6, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100489, 10432, 1026, 24.9, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100490, 10432, 1054, 5.9, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100491, 10433, 1056, 30.4, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100493, 10434, 1076, 14.4, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100494, 10435, 1002, 15.2, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100495, 10435, 1022, 16.8, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100497, 10436, 1046, 9.6, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100498, 10436, 1056, 30.4, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100499, 10436, 1064, 26.6, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100500, 10436, 1075, 6.2, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100501, 10437, 1053, 26.2, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100502, 10438, 1019, 7.3, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100503, 10438, 1034, 11.2, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100504, 10438, 1057, 15.6, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100505, 10439, 1012, 30.4, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100506, 10439, 1016, 13.9, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100507, 10439, 1064, 26.6, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100508, 10439, 1074, 8, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100509, 10440, 1002, 15.2, 45, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100510, 10440, 1016, 13.9, 49, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100511, 10440, 1029, 99, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100512, 10440, 1061, 22.8, 90, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100513, 10441, 1027, 35.1, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100515, 10442, 1054, 5.9, 80, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100516, 10442, 1066, 13.6, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100518, 10443, 1028, 36.4, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100519, 10444, 1017, 31.2, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100520, 10444, 1026, 24.9, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100521, 10444, 1035, 14.4, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100522, 10444, 1041, 7.7, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100523, 10445, 1039, 14.4, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100524, 10445, 1054, 5.9, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100525, 10446, 1019, 7.3, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100526, 10446, 1024, 3.6, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100527, 10446, 1031, 10, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100528, 10446, 1052, 5.6, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100529, 10447, 1019, 7.3, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100530, 10447, 1065, 16.8, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100531, 10447, 1071, 17.2, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100532, 10448, 1026, 24.9, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100533, 10448, 1040, 14.7, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100534, 10449, 1010, 24.8, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100535, 10449, 1052, 5.6, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100536, 10449, 1062, 39.4, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100537, 10450, 1010, 24.8, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100538, 10450, 1054, 5.9, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100539, 10451, 1055, 19.2, 120, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100540, 10451, 1064, 26.6, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100541, 10451, 1065, 16.8, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100542, 10451, 1077, 10.4, 55, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100543, 10452, 1028, 36.4, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100544, 10452, 1044, 15.5, 100, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100545, 10453, 1048, 10.2, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100546, 10453, 1070, 12, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100547, 10454, 1016, 13.9, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100548, 10454, 1033, 2, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100549, 10454, 1046, 9.6, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100550, 10455, 1039, 14.4, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100551, 10455, 1053, 26.2, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100552, 10455, 1061, 22.8, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100553, 10455, 1071, 17.2, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100554, 10456, 1021, 8, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100555, 10456, 1049, 16, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100556, 10457, 1059, 44, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100557, 10458, 1026, 24.9, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100558, 10458, 1028, 36.4, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100559, 10458, 1043, 36.8, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100560, 10458, 1056, 30.4, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100561, 10458, 1071, 17.2, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100562, 10459, 1007, 24, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100563, 10459, 1046, 9.6, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100565, 10460, 1068, 10, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100566, 10460, 1075, 6.2, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100567, 10461, 1021, 8, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100568, 10461, 1030, 20.7, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100569, 10461, 1055, 19.2, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100570, 10462, 1013, 4.8, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100571, 10462, 1023, 7.2, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100572, 10463, 1019, 7.3, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100574, 10464, 1004, 17.6, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100575, 10464, 1043, 36.8, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100576, 10464, 1056, 30.4, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100577, 10464, 1060, 27.2, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100578, 10465, 1024, 3.6, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100579, 10465, 1029, 99, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100580, 10465, 1040, 14.7, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100581, 10465, 1045, 7.6, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100582, 10465, 1050, 13, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100584, 10466, 1046, 9.6, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100585, 10467, 1024, 3.6, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100586, 10467, 1025, 11.2, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100587, 10468, 1030, 20.7, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100588, 10468, 1043, 36.8, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100589, 10469, 1002, 15.2, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100590, 10469, 1016, 13.9, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100591, 10469, 1044, 15.5, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100592, 10470, 1018, 50, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100593, 10470, 1023, 7.2, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100594, 10470, 1064, 26.6, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100595, 10471, 1007, 24, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100596, 10471, 1056, 30.4, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100597, 10472, 1024, 3.6, 80, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100598, 10472, 1051, 42.4, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100599, 10473, 1033, 2, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100600, 10473, 1071, 17.2, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100601, 10474, 1014, 18.6, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100602, 10474, 1028, 36.4, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100603, 10474, 1040, 14.7, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100604, 10474, 1075, 6.2, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100605, 10475, 1031, 10, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100606, 10475, 1066, 13.6, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100607, 10475, 1076, 14.4, 42, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100608, 10476, 1055, 19.2, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100609, 10476, 1070, 12, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100610, 10477, 1001, 14.4, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100611, 10477, 1021, 8, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100612, 10477, 1039, 14.4, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100613, 10478, 1010, 24.8, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100614, 10479, 1038, 210.8, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100615, 10479, 1053, 26.2, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100616, 10479, 1059, 44, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100617, 10479, 1064, 26.6, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100618, 10480, 1047, 7.6, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100619, 10480, 1059, 44, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100620, 10481, 1049, 16, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100621, 10481, 1060, 27.2, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100622, 10482, 1040, 14.7, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100623, 10483, 1034, 11.2, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100624, 10483, 1077, 10.4, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100625, 10484, 1021, 8, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100626, 10484, 1040, 14.7, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100627, 10484, 1051, 42.4, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100628, 10485, 1002, 15.2, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100629, 10485, 1003, 8, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100630, 10485, 1055, 19.2, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100631, 10485, 1070, 12, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100633, 10486, 1051, 42.4, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100634, 10486, 1074, 8, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100635, 10487, 1019, 7.3, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100636, 10487, 1026, 24.9, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100637, 10487, 1054, 5.9, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100638, 10488, 1059, 44, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100639, 10488, 1073, 12, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100641, 10489, 1016, 13.9, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100642, 10490, 1059, 44, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100643, 10490, 1068, 10, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100644, 10490, 1075, 6.2, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100645, 10491, 1044, 15.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100646, 10491, 1077, 10.4, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100647, 10492, 1025, 11.2, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100649, 10493, 1065, 16.8, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100650, 10493, 1066, 13.6, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100651, 10493, 1069, 28.8, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100652, 10494, 1056, 30.4, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100653, 10495, 1023, 7.2, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100654, 10495, 1041, 7.7, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100655, 10495, 1077, 10.4, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100656, 10496, 1031, 10, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100657, 10497, 1056, 30.4, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100659, 10497, 1077, 10.4, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100660, 10498, 1024, 4.5, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100661, 10498, 1040, 18.4, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100663, 10499, 1028, 45.6, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100664, 10499, 1049, 20, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100665, 10500, 1015, 15.5, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100666, 10500, 1028, 45.6, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100667, 10501, 1054, 7.45, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100668, 10502, 1045, 9.5, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100669, 10502, 1053, 32.8, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100670, 10502, 1067, 14, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100671, 10503, 1014, 23.25, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100672, 10503, 1065, 21.05, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100673, 10504, 1002, 19, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100674, 10504, 1021, 10, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100675, 10504, 1053, 32.8, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100676, 10504, 1061, 28.5, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100677, 10505, 1062, 49.3, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100678, 10506, 1025, 14, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100679, 10506, 1070, 15, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100680, 10507, 1043, 46, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100681, 10507, 1048, 12.75, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100682, 10508, 1013, 6, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100683, 10508, 1039, 18, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100684, 10509, 1028, 45.6, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100685, 10510, 1029, 123.79, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100686, 10510, 1075, 7.75, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100687, 10511, 1004, 22, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100688, 10511, 1007, 30, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100689, 10511, 1008, 40, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100690, 10512, 1024, 4.5, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100691, 10512, 1046, 12, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100692, 10512, 1047, 9.5, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100693, 10512, 1060, 34, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100694, 10513, 1021, 10, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100695, 10513, 1032, 32, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100696, 10513, 1061, 28.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100697, 10514, 1020, 81, 39, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100698, 10514, 1028, 45.6, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100699, 10514, 1056, 38, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100700, 10514, 1065, 21.05, 39, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100701, 10514, 1075, 7.75, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100702, 10515, 1009, 150, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100703, 10515, 1016, 17.45, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100704, 10515, 1027, 43.9, 120, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100705, 10515, 1033, 2.5, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100706, 10515, 1060, 34, 84, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100707, 10516, 1018, 62.5, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100708, 10516, 1041, 9.65, 80, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100710, 10517, 1052, 7, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100711, 10517, 1059, 55, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100712, 10517, 1070, 15, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100713, 10518, 1024, 4.5, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100714, 10518, 1038, 263.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100715, 10518, 1044, 19.45, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100716, 10519, 1010, 31, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100717, 10519, 1056, 38, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100718, 10519, 1060, 34, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100719, 10520, 1024, 4.5, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100720, 10520, 1053, 32.8, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100721, 10521, 1035, 18, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100722, 10521, 1041, 9.65, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100723, 10521, 1068, 12.5, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100724, 10522, 1001, 18, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100725, 10522, 1008, 40, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100726, 10522, 1030, 25.89, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100727, 10522, 1040, 18.4, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100728, 10523, 1017, 39, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100729, 10523, 1020, 81, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100730, 10523, 1037, 26, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100731, 10523, 1041, 9.65, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100732, 10524, 1010, 31, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100733, 10524, 1030, 25.89, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100734, 10524, 1043, 46, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100735, 10524, 1054, 7.45, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100736, 10525, 1036, 19, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100737, 10525, 1040, 18.4, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100738, 10526, 1001, 18, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100739, 10526, 1013, 6, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100740, 10526, 1056, 38, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100741, 10527, 1004, 22, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100742, 10527, 1036, 19, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100744, 10528, 1033, 2.5, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100746, 10529, 1055, 24, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100747, 10529, 1068, 12.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100748, 10529, 1069, 36, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100749, 10530, 1017, 39, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100750, 10530, 1043, 46, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100751, 10530, 1061, 28.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100752, 10530, 1076, 18, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100753, 10531, 1059, 55, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100754, 10532, 1030, 25.89, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100755, 10532, 1066, 17, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100756, 10533, 1004, 22, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100758, 10533, 1073, 15, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100759, 10534, 1030, 25.89, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100760, 10534, 1040, 18.4, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100761, 10534, 1054, 7.45, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100763, 10535, 1040, 18.4, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100764, 10535, 1057, 19.5, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100765, 10535, 1059, 55, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100766, 10536, 1012, 38, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100767, 10536, 1031, 12.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100768, 10536, 1033, 2.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100769, 10536, 1060, 34, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100770, 10537, 1031, 12.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100771, 10537, 1051, 53, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100772, 10537, 1058, 13.25, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100774, 10537, 1073, 15, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100775, 10538, 1070, 15, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100777, 10539, 1013, 6, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100778, 10539, 1021, 10, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100779, 10539, 1033, 2.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100780, 10539, 1049, 20, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100781, 10540, 1003, 10, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100782, 10540, 1026, 31.23, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100783, 10540, 1038, 263.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100784, 10540, 1068, 12.5, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100785, 10541, 1024, 4.5, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100786, 10541, 1038, 263.5, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100787, 10541, 1065, 21.05, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100788, 10541, 1071, 21.5, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100790, 10542, 1054, 7.45, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100791, 10543, 1012, 38, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100792, 10543, 1023, 9, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100793, 10544, 1028, 45.6, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100794, 10544, 1067, 14, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100796, 10546, 1007, 30, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100797, 10546, 1035, 18, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100798, 10546, 1062, 49.3, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100799, 10547, 1032, 32, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100800, 10547, 1036, 19, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100801, 10548, 1034, 14, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100802, 10548, 1041, 9.65, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100803, 10549, 1031, 12.5, 55, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100804, 10549, 1045, 9.5, 100, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100805, 10549, 1051, 53, 48, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100806, 10550, 1017, 39, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100807, 10550, 1019, 9.2, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100808, 10550, 1021, 10, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100809, 10550, 1061, 28.5, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100810, 10551, 1016, 17.45, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100811, 10551, 1035, 18, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100812, 10551, 1044, 19.45, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100813, 10552, 1069, 36, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100814, 10552, 1075, 7.75, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100816, 10553, 1016, 17.45, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100817, 10553, 1022, 21, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100818, 10553, 1031, 12.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100819, 10553, 1035, 18, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100820, 10554, 1016, 17.45, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100821, 10554, 1023, 9, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100822, 10554, 1062, 49.3, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100823, 10554, 1077, 13, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100824, 10555, 1014, 23.25, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100825, 10555, 1019, 9.2, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100826, 10555, 1024, 4.5, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100827, 10555, 1051, 53, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100828, 10555, 1056, 38, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100830, 10557, 1064, 33.25, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100831, 10557, 1075, 7.75, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100832, 10558, 1047, 9.5, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100833, 10558, 1051, 53, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100834, 10558, 1052, 7, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100835, 10558, 1053, 32.8, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100836, 10558, 1073, 15, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100837, 10559, 1041, 9.65, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100838, 10559, 1055, 24, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100839, 10560, 1030, 25.89, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100840, 10560, 1062, 49.3, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100841, 10561, 1044, 19.45, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100842, 10561, 1051, 53, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100843, 10562, 1033, 2.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100844, 10562, 1062, 49.3, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100845, 10563, 1036, 19, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100846, 10563, 1052, 7, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100847, 10564, 1017, 39, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100848, 10564, 1031, 12.5, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100849, 10564, 1055, 24, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100850, 10565, 1024, 4.5, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100851, 10565, 1064, 33.25, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100853, 10566, 1018, 62.5, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100854, 10566, 1076, 18, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100855, 10567, 1031, 12.5, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100856, 10567, 1051, 53, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100857, 10567, 1059, 55, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100858, 10568, 1010, 31, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100859, 10569, 1031, 12.5, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100860, 10569, 1076, 18, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100862, 10570, 1056, 38, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100863, 10571, 1014, 23.25, 11, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100865, 10572, 1016, 17.45, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100866, 10572, 1032, 32, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100867, 10572, 1040, 18.4, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100868, 10572, 1075, 7.75, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100869, 10573, 1017, 39, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100870, 10573, 1034, 14, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100871, 10573, 1053, 32.8, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100872, 10574, 1033, 2.5, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100873, 10574, 1040, 18.4, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100874, 10574, 1062, 49.3, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100875, 10574, 1064, 33.25, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100876, 10575, 1059, 55, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100877, 10575, 1063, 43.9, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100879, 10575, 1076, 18, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100880, 10576, 1001, 18, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100881, 10576, 1031, 12.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100882, 10576, 1044, 19.45, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100883, 10577, 1039, 18, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100884, 10577, 1075, 7.75, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100885, 10577, 1077, 13, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100886, 10578, 1035, 18, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100887, 10578, 1057, 19.5, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100888, 10579, 1015, 15.5, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100889, 10579, 1075, 7.75, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100890, 10580, 1014, 23.25, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100891, 10580, 1041, 9.65, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100892, 10580, 1065, 21.05, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100893, 10581, 1075, 7.75, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100894, 10582, 1057, 19.5, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100895, 10582, 1076, 18, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100896, 10583, 1029, 123.79, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100897, 10583, 1060, 34, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100898, 10583, 1069, 36, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100899, 10584, 1031, 12.5, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100900, 10585, 1047, 9.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100901, 10586, 1052, 7, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100902, 10587, 1026, 31.23, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100903, 10587, 1035, 18, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100904, 10587, 1077, 13, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100905, 10588, 1018, 62.5, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100907, 10589, 1035, 18, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100908, 10590, 1001, 18, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100909, 10590, 1077, 13, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100910, 10591, 1003, 10, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100911, 10591, 1007, 30, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100912, 10591, 1054, 7.45, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100913, 10592, 1015, 15.5, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100914, 10592, 1026, 31.23, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100915, 10593, 1020, 81, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100916, 10593, 1069, 36, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100917, 10593, 1076, 18, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100918, 10594, 1052, 7, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100919, 10594, 1058, 13.25, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100920, 10595, 1035, 18, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100921, 10595, 1061, 28.5, 120, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100922, 10595, 1069, 36, 65, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100923, 10596, 1056, 38, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100924, 10596, 1063, 43.9, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100925, 10596, 1075, 7.75, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100926, 10597, 1024, 4.5, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100927, 10597, 1057, 19.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100928, 10597, 1065, 21.05, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100929, 10598, 1027, 43.9, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100930, 10598, 1071, 21.5, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100931, 10599, 1062, 49.3, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100932, 10600, 1054, 7.45, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100933, 10600, 1073, 15, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100934, 10601, 1013, 6, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100935, 10601, 1059, 55, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100936, 10602, 1077, 13, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100937, 10603, 1022, 21, 48, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100938, 10603, 1049, 20, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100939, 10604, 1048, 12.75, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100940, 10604, 1076, 18, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100941, 10605, 1016, 17.45, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100942, 10605, 1059, 55, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100943, 10605, 1060, 34, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100944, 10605, 1071, 21.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100945, 10606, 1004, 22, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100946, 10606, 1055, 24, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100947, 10606, 1062, 49.3, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100948, 10607, 1007, 30, 45, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100949, 10607, 1017, 39, 100, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100950, 10607, 1033, 2.5, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100951, 10607, 1040, 18.4, 42, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100953, 10608, 1056, 38, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100954, 10609, 1001, 18, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100955, 10609, 1010, 31, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100956, 10609, 1021, 10, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100957, 10610, 1036, 19, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100958, 10611, 1001, 18, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100959, 10611, 1002, 19, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100960, 10611, 1060, 34, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100961, 10612, 1010, 31, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100962, 10612, 1036, 19, 55, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100963, 10612, 1049, 20, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100964, 10612, 1060, 34, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100965, 10612, 1076, 18, 80, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100966, 10613, 1013, 6, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100967, 10613, 1075, 7.75, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100969, 10614, 1021, 10, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100970, 10614, 1039, 18, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100971, 10615, 1055, 24, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100972, 10616, 1038, 263.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100973, 10616, 1056, 38, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100974, 10616, 1070, 15, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100975, 10616, 1071, 21.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100976, 10617, 1059, 55, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100977, 10618, 1006, 25, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100978, 10618, 1056, 38, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100979, 10618, 1068, 12.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100980, 10619, 1021, 10, 42, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100981, 10619, 1022, 21, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100982, 10620, 1024, 4.5, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100983, 10620, 1052, 7, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100984, 10621, 1019, 9.2, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100985, 10621, 1023, 9, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100986, 10621, 1070, 15, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100987, 10621, 1071, 21.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100988, 10622, 1002, 19, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100989, 10622, 1068, 12.5, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100990, 10623, 1014, 23.25, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100991, 10623, 1019, 9.2, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100992, 10623, 1021, 10, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100993, 10623, 1024, 4.5, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100994, 10623, 1035, 18, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100995, 10624, 1028, 45.6, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100996, 10624, 1029, 123.79, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100997, 10624, 1044, 19.45, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100998, 10625, 1014, 23.25, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101000, 10625, 1060, 34, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101001, 10626, 1053, 32.8, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101002, 10626, 1060, 34, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101003, 10626, 1071, 21.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101004, 10627, 1062, 49.3, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101005, 10627, 1073, 15, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101006, 10628, 1001, 18, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101007, 10629, 1029, 123.79, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101008, 10629, 1064, 33.25, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101009, 10630, 1055, 24, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101010, 10630, 1076, 18, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101011, 10631, 1075, 7.75, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101012, 10632, 1002, 19, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101013, 10632, 1033, 2.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101014, 10633, 1012, 38, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101015, 10633, 1013, 6, 13, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101016, 10633, 1026, 31.23, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101017, 10633, 1062, 49.3, 80, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101018, 10634, 1007, 30, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101019, 10634, 1018, 62.5, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101020, 10634, 1051, 53, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101021, 10634, 1075, 7.75, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101022, 10635, 1004, 22, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101024, 10635, 1022, 21, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101025, 10636, 1004, 22, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101026, 10636, 1058, 13.25, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101028, 10637, 1050, 16.25, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101029, 10637, 1056, 38, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101030, 10638, 1045, 9.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101031, 10638, 1065, 21.05, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101033, 10639, 1018, 62.5, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101034, 10640, 1069, 36, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101035, 10640, 1070, 15, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101036, 10641, 1002, 19, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101037, 10641, 1040, 18.4, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101038, 10642, 1021, 10, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101039, 10642, 1061, 28.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101040, 10643, 1028, 45.6, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101041, 10643, 1039, 18, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101042, 10643, 1046, 12, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101043, 10644, 1018, 62.5, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101044, 10644, 1043, 46, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101045, 10644, 1046, 12, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101046, 10645, 1018, 62.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101047, 10645, 1036, 19, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101048, 10646, 1001, 18, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101049, 10646, 1010, 31, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101050, 10646, 1071, 21.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101051, 10646, 1077, 13, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101052, 10647, 1019, 9.2, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101053, 10647, 1039, 18, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101054, 10648, 1022, 21, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101055, 10648, 1024, 4.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101056, 10649, 1028, 45.6, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101058, 10650, 1030, 25.89, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101059, 10650, 1053, 32.8, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101060, 10650, 1054, 7.45, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101061, 10651, 1019, 9.2, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101062, 10651, 1022, 21, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101063, 10652, 1030, 25.89, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101065, 10653, 1016, 17.45, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101066, 10653, 1060, 34, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101067, 10654, 1004, 22, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101068, 10654, 1039, 18, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101069, 10654, 1054, 7.45, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101070, 10655, 1041, 9.65, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101071, 10656, 1014, 23.25, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101072, 10656, 1044, 19.45, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101073, 10656, 1047, 9.5, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101074, 10657, 1015, 15.5, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101075, 10657, 1041, 9.65, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101076, 10657, 1046, 12, 45, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101077, 10657, 1047, 9.5, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101078, 10657, 1056, 38, 45, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101079, 10657, 1060, 34, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101080, 10658, 1021, 10, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101081, 10658, 1040, 18.4, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101082, 10658, 1060, 34, 55, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101083, 10658, 1077, 13, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101084, 10659, 1031, 12.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101085, 10659, 1040, 18.4, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101086, 10659, 1070, 15, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101087, 10660, 1020, 81, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101088, 10661, 1039, 18, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101089, 10661, 1058, 13.25, 49, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101090, 10662, 1068, 12.5, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101091, 10663, 1040, 18.4, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101093, 10663, 1051, 53, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101094, 10664, 1010, 31, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101095, 10664, 1056, 38, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101096, 10664, 1065, 21.05, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101097, 10665, 1051, 53, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101098, 10665, 1059, 55, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101099, 10665, 1076, 18, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101100, 10666, 1029, 123.79, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101101, 10666, 1065, 21.05, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101102, 10667, 1069, 36, 45, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101103, 10667, 1071, 21.5, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101104, 10668, 1031, 12.5, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101105, 10668, 1055, 24, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101106, 10668, 1064, 33.25, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101107, 10669, 1036, 19, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101108, 10670, 1023, 9, 32, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101109, 10670, 1046, 12, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101110, 10670, 1067, 14, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101111, 10670, 1073, 15, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101112, 10670, 1075, 7.75, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101113, 10671, 1016, 17.45, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101114, 10671, 1062, 49.3, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101115, 10671, 1065, 21.05, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101116, 10672, 1038, 263.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101117, 10672, 1071, 21.5, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101118, 10673, 1016, 17.45, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101120, 10673, 1043, 46, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101121, 10674, 1023, 9, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101122, 10675, 1014, 23.25, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101123, 10675, 1053, 32.8, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101124, 10675, 1058, 13.25, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101125, 10676, 1010, 31, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101126, 10676, 1019, 9.2, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101127, 10676, 1044, 19.45, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101128, 10677, 1026, 31.23, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101129, 10677, 1033, 2.5, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101130, 10678, 1012, 38, 100, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101131, 10678, 1033, 2.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101132, 10678, 1041, 9.65, 120, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101133, 10678, 1054, 7.45, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101134, 10679, 1059, 55, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101135, 10680, 1016, 17.45, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101136, 10680, 1031, 12.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101138, 10681, 1019, 9.2, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101139, 10681, 1021, 10, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101140, 10681, 1064, 33.25, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101141, 10682, 1033, 2.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101142, 10682, 1066, 17, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101143, 10682, 1075, 7.75, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101144, 10683, 1052, 7, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101145, 10684, 1040, 18.4, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101146, 10684, 1047, 9.5, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101147, 10684, 1060, 34, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101148, 10685, 1010, 31, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101149, 10685, 1041, 9.65, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101150, 10685, 1047, 9.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101151, 10686, 1017, 39, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101152, 10686, 1026, 31.23, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101153, 10687, 1009, 150, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101154, 10687, 1029, 123.79, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101155, 10687, 1036, 19, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101156, 10688, 1010, 31, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101157, 10688, 1028, 45.6, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101158, 10688, 1034, 14, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101159, 10689, 1001, 18, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101160, 10690, 1056, 38, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101161, 10690, 1077, 13, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101162, 10691, 1001, 18, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101163, 10691, 1029, 123.79, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101164, 10691, 1043, 46, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101165, 10691, 1044, 19.45, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101166, 10691, 1062, 49.3, 48, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101167, 10692, 1063, 43.9, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101168, 10693, 1009, 150, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101169, 10693, 1054, 7.45, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101170, 10693, 1069, 36, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101171, 10693, 1073, 15, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101172, 10694, 1007, 30, 90, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101173, 10694, 1059, 55, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101174, 10694, 1070, 15, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101175, 10695, 1008, 40, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101176, 10695, 1012, 38, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101177, 10695, 1024, 4.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101178, 10696, 1017, 39, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101179, 10696, 1046, 12, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101180, 10697, 1019, 9.2, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101181, 10697, 1035, 18, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101182, 10697, 1058, 13.25, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101183, 10697, 1070, 15, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101185, 10698, 1017, 39, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101186, 10698, 1029, 123.79, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101187, 10698, 1065, 21.05, 65, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101188, 10698, 1070, 15, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101189, 10699, 1047, 9.5, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101190, 10700, 1001, 18, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101191, 10700, 1034, 14, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101192, 10700, 1068, 12.5, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101193, 10700, 1071, 21.5, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101194, 10701, 1059, 55, 42, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101195, 10701, 1071, 21.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101196, 10701, 1076, 18, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101197, 10702, 1003, 10, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101198, 10702, 1076, 18, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101199, 10703, 1002, 19, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101200, 10703, 1059, 55, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101201, 10703, 1073, 15, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101202, 10704, 1004, 22, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101203, 10704, 1024, 4.5, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101204, 10704, 1048, 12.75, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101205, 10705, 1031, 12.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101206, 10705, 1032, 32, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101207, 10706, 1016, 17.45, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101208, 10706, 1043, 46, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101209, 10706, 1059, 55, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101210, 10707, 1055, 24, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101211, 10707, 1057, 19.5, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101212, 10707, 1070, 15, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101214, 10708, 1036, 19, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101215, 10709, 1008, 40, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101216, 10709, 1051, 53, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101217, 10709, 1060, 34, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101218, 10710, 1019, 9.2, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101219, 10710, 1047, 9.5, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101220, 10711, 1019, 9.2, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101221, 10711, 1041, 9.65, 42, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101222, 10711, 1053, 32.8, 120, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101223, 10712, 1053, 32.8, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101224, 10712, 1056, 38, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101225, 10713, 1010, 31, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101226, 10713, 1026, 31.23, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101227, 10713, 1045, 9.5, 110, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101228, 10713, 1046, 12, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101229, 10714, 1002, 19, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101230, 10714, 1017, 39, 27, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101231, 10714, 1047, 9.5, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101232, 10714, 1056, 38, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101233, 10714, 1058, 13.25, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101234, 10715, 1010, 31, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101235, 10715, 1071, 21.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101236, 10716, 1021, 10, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101237, 10716, 1051, 53, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101238, 10716, 1061, 28.5, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101239, 10717, 1021, 10, 32, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101240, 10717, 1054, 7.45, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101241, 10717, 1069, 36, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101242, 10718, 1012, 38, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101243, 10718, 1016, 17.45, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101244, 10718, 1036, 19, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101245, 10718, 1062, 49.3, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101246, 10719, 1018, 62.5, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101247, 10719, 1030, 25.89, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101248, 10719, 1054, 7.45, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101249, 10720, 1035, 18, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101250, 10720, 1071, 21.5, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101251, 10721, 1044, 19.45, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101252, 10722, 1002, 19, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101253, 10722, 1031, 12.5, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101254, 10722, 1068, 12.5, 45, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101255, 10722, 1075, 7.75, 42, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101256, 10723, 1026, 31.23, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101257, 10724, 1010, 31, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101258, 10724, 1061, 28.5, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101259, 10725, 1041, 9.65, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101260, 10725, 1052, 7, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101261, 10725, 1055, 24, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101262, 10726, 1004, 22, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101264, 10727, 1017, 39, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101265, 10727, 1056, 38, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101266, 10727, 1059, 55, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101267, 10728, 1030, 25.89, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101268, 10728, 1040, 18.4, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101269, 10728, 1055, 24, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101270, 10728, 1060, 34, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101271, 10729, 1001, 18, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101272, 10729, 1021, 10, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101273, 10729, 1050, 16.25, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101274, 10730, 1016, 17.45, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101275, 10730, 1031, 12.5, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101276, 10730, 1065, 21.05, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101277, 10731, 1021, 10, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101278, 10731, 1051, 53, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101279, 10732, 1076, 18, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101280, 10733, 1014, 23.25, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101281, 10733, 1028, 45.6, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101282, 10733, 1052, 7, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101283, 10734, 1006, 25, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101284, 10734, 1030, 25.89, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101285, 10734, 1076, 18, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101286, 10735, 1061, 28.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101287, 10735, 1077, 13, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101288, 10736, 1065, 21.05, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101289, 10736, 1075, 7.75, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101290, 10737, 1013, 6, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101291, 10737, 1041, 9.65, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101292, 10738, 1016, 17.45, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101293, 10739, 1036, 19, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101294, 10739, 1052, 7, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101295, 10740, 1028, 45.6, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101296, 10740, 1035, 18, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101297, 10740, 1045, 9.5, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101298, 10740, 1056, 38, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101299, 10741, 1002, 19, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101300, 10742, 1003, 10, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101301, 10742, 1060, 34, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101303, 10743, 1046, 12, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101304, 10744, 1040, 18.4, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101305, 10745, 1018, 62.5, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101306, 10745, 1044, 19.45, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101307, 10745, 1059, 55, 45, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101309, 10746, 1013, 6, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101311, 10746, 1062, 49.3, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101312, 10746, 1069, 36, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101313, 10747, 1031, 12.5, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101314, 10747, 1041, 9.65, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101315, 10747, 1063, 43.9, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101316, 10747, 1069, 36, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101317, 10748, 1023, 9, 44, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101318, 10748, 1040, 18.4, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101319, 10748, 1056, 38, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101320, 10749, 1056, 38, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101321, 10749, 1059, 55, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101322, 10749, 1076, 18, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101323, 10750, 1014, 23.25, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101324, 10750, 1045, 9.5, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101325, 10750, 1059, 55, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101326, 10751, 1026, 31.23, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101327, 10751, 1030, 25.89, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101328, 10751, 1050, 16.25, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101329, 10751, 1073, 15, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101330, 10752, 1001, 18, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101331, 10752, 1069, 36, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101332, 10753, 1045, 9.5, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101333, 10753, 1074, 10, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101334, 10754, 1040, 18.4, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101335, 10755, 1047, 9.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101336, 10755, 1056, 38, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101337, 10755, 1057, 19.5, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101338, 10755, 1069, 36, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101339, 10756, 1018, 62.5, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101340, 10756, 1036, 19, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101341, 10756, 1068, 12.5, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101342, 10756, 1069, 36, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101343, 10757, 1034, 14, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101344, 10757, 1059, 55, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101345, 10757, 1062, 49.3, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101346, 10757, 1064, 33.25, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101347, 10758, 1026, 31.23, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101348, 10758, 1052, 7, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101349, 10758, 1070, 15, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101350, 10759, 1032, 32, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101351, 10760, 1025, 14, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101352, 10760, 1027, 43.9, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101353, 10760, 1043, 46, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101354, 10761, 1025, 14, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101355, 10761, 1075, 7.75, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101356, 10762, 1039, 18, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101357, 10762, 1047, 9.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101358, 10762, 1051, 53, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101359, 10762, 1056, 38, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101360, 10763, 1021, 10, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101361, 10763, 1022, 21, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101362, 10763, 1024, 4.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101363, 10764, 1003, 10, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101364, 10764, 1039, 18, 130, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101365, 10765, 1065, 21.05, 80, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101366, 10766, 1002, 19, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101367, 10766, 1007, 30, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101368, 10766, 1068, 12.5, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101370, 10768, 1022, 21, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101371, 10768, 1031, 12.5, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101372, 10768, 1060, 34, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101373, 10768, 1071, 21.5, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101374, 10769, 1041, 9.65, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101375, 10769, 1052, 7, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101376, 10769, 1061, 28.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101377, 10769, 1062, 49.3, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101379, 10771, 1071, 21.5, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101380, 10772, 1029, 123.79, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101381, 10772, 1059, 55, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101382, 10773, 1017, 39, 33, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101383, 10773, 1031, 12.5, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101384, 10773, 1075, 7.75, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101385, 10774, 1031, 12.5, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101386, 10774, 1066, 17, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101387, 10775, 1010, 31, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101388, 10775, 1067, 14, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101389, 10776, 1031, 12.5, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101391, 10776, 1045, 9.5, 27, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101392, 10776, 1051, 53, 120, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101394, 10778, 1041, 9.65, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101395, 10779, 1016, 17.45, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101396, 10779, 1062, 49.3, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101397, 10780, 1070, 15, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101398, 10780, 1077, 13, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101399, 10781, 1054, 7.45, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101400, 10781, 1056, 38, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101401, 10781, 1074, 10, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101402, 10782, 1031, 12.5, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101403, 10783, 1031, 12.5, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101404, 10783, 1038, 263.5, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101405, 10784, 1036, 19, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101406, 10784, 1039, 18, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101408, 10785, 1010, 31, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101409, 10785, 1075, 7.75, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101410, 10786, 1008, 40, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101411, 10786, 1030, 25.89, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101412, 10786, 1075, 7.75, 42, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101413, 10787, 1002, 19, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101414, 10787, 1029, 123.79, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101415, 10788, 1019, 9.2, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101416, 10788, 1075, 7.75, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101417, 10789, 1018, 62.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101418, 10789, 1035, 18, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101419, 10789, 1063, 43.9, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101420, 10789, 1068, 12.5, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101421, 10790, 1007, 30, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101422, 10790, 1056, 38, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101423, 10791, 1029, 123.79, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101424, 10791, 1041, 9.65, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101425, 10792, 1002, 19, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101426, 10792, 1054, 7.45, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101427, 10792, 1068, 12.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101428, 10793, 1041, 9.65, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101429, 10793, 1052, 7, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101430, 10794, 1014, 23.25, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101431, 10794, 1054, 7.45, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101432, 10795, 1016, 17.45, 65, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101433, 10795, 1017, 39, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101434, 10796, 1026, 31.23, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101435, 10796, 1044, 19.45, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101436, 10796, 1064, 33.25, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101437, 10796, 1069, 36, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101439, 10798, 1062, 49.3, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101441, 10799, 1013, 6, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101442, 10799, 1024, 4.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101443, 10799, 1059, 55, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101445, 10800, 1051, 53, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101446, 10800, 1054, 7.45, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101447, 10801, 1017, 39, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101448, 10801, 1029, 123.79, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101449, 10802, 1030, 25.89, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101450, 10802, 1051, 53, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101451, 10802, 1055, 24, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101452, 10802, 1062, 49.3, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101453, 10803, 1019, 9.2, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101454, 10803, 1025, 14, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101455, 10803, 1059, 55, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101456, 10804, 1010, 31, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101457, 10804, 1028, 45.6, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101458, 10804, 1049, 20, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101459, 10805, 1034, 14, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101460, 10805, 1038, 263.5, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101461, 10806, 1002, 19, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101462, 10806, 1065, 21.05, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101463, 10806, 1074, 10, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101464, 10807, 1040, 18.4, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101465, 10808, 1056, 38, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101466, 10808, 1076, 18, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101467, 10809, 1052, 7, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101468, 10810, 1013, 6, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101469, 10810, 1025, 14, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101470, 10810, 1070, 15, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101471, 10811, 1019, 9.2, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101472, 10811, 1023, 9, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101473, 10811, 1040, 18.4, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101474, 10812, 1031, 12.5, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101476, 10812, 1077, 13, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101477, 10813, 1002, 19, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101478, 10813, 1046, 12, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101479, 10814, 1041, 9.65, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101480, 10814, 1043, 46, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101481, 10814, 1048, 12.75, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101482, 10814, 1061, 28.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101483, 10815, 1033, 2.5, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101484, 10816, 1038, 263.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101485, 10816, 1062, 49.3, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101486, 10817, 1026, 31.23, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101487, 10817, 1038, 263.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101488, 10817, 1040, 18.4, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101489, 10817, 1062, 49.3, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101490, 10818, 1032, 32, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101491, 10818, 1041, 9.65, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101492, 10819, 1043, 46, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101493, 10819, 1075, 7.75, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101494, 10820, 1056, 38, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101495, 10821, 1035, 18, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101496, 10821, 1051, 53, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101497, 10822, 1062, 49.3, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101498, 10822, 1070, 15, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101500, 10823, 1057, 19.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101501, 10823, 1059, 55, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101502, 10823, 1077, 13, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101503, 10824, 1041, 9.65, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101504, 10824, 1070, 15, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101505, 10825, 1026, 31.23, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101506, 10825, 1053, 32.8, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101507, 10826, 1031, 12.5, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101508, 10826, 1057, 19.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101509, 10827, 1010, 31, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101510, 10827, 1039, 18, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101511, 10828, 1020, 81, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101512, 10828, 1038, 263.5, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101513, 10829, 1002, 19, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101514, 10829, 1008, 40, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101515, 10829, 1013, 6, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101516, 10829, 1060, 34, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101517, 10830, 1006, 25, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101518, 10830, 1039, 18, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101519, 10830, 1060, 34, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101520, 10830, 1068, 12.5, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101521, 10831, 1019, 9.2, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101522, 10831, 1035, 18, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101523, 10831, 1038, 263.5, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101524, 10831, 1043, 46, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101525, 10832, 1013, 6, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101526, 10832, 1025, 14, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101527, 10832, 1044, 19.45, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101528, 10832, 1064, 33.25, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101529, 10833, 1007, 30, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101530, 10833, 1031, 12.5, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101531, 10833, 1053, 32.8, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101532, 10834, 1029, 123.79, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101533, 10834, 1030, 25.89, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101534, 10835, 1059, 55, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101535, 10835, 1077, 13, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101536, 10836, 1022, 21, 52, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101537, 10836, 1035, 18, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101538, 10836, 1057, 19.5, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101539, 10836, 1060, 34, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101540, 10836, 1064, 33.25, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101541, 10837, 1013, 6, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101542, 10837, 1040, 18.4, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101543, 10837, 1047, 9.5, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101544, 10837, 1076, 18, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101545, 10838, 1001, 18, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101546, 10838, 1018, 62.5, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101547, 10838, 1036, 19, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101548, 10839, 1058, 13.25, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101550, 10840, 1025, 14, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101551, 10840, 1039, 18, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101552, 10841, 1010, 31, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101553, 10841, 1056, 38, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101554, 10841, 1059, 55, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101555, 10841, 1077, 13, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101557, 10842, 1043, 46, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101558, 10842, 1068, 12.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101559, 10842, 1070, 15, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101560, 10843, 1051, 53, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101561, 10844, 1022, 21, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101562, 10845, 1023, 9, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101563, 10845, 1035, 18, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101565, 10845, 1058, 13.25, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101566, 10845, 1064, 33.25, 48, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101567, 10846, 1004, 22, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101568, 10846, 1070, 15, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101569, 10846, 1074, 10, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101570, 10847, 1001, 18, 80, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101571, 10847, 1019, 9.2, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101572, 10847, 1037, 26, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101573, 10847, 1045, 9.5, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101574, 10847, 1060, 34, 45, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101575, 10847, 1071, 21.5, 55, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101577, 10848, 1009, 150, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101578, 10849, 1003, 10, 49, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101579, 10849, 1026, 31.23, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101580, 10850, 1025, 14, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101581, 10850, 1033, 2.5, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101582, 10850, 1070, 15, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101583, 10851, 1002, 19, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101584, 10851, 1025, 14, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101585, 10851, 1057, 19.5, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101586, 10851, 1059, 55, 42, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101587, 10852, 1002, 19, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101588, 10852, 1017, 39, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101589, 10852, 1062, 49.3, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101590, 10853, 1018, 62.5, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101591, 10854, 1010, 31, 100, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101592, 10854, 1013, 6, 65, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101593, 10855, 1016, 17.45, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101594, 10855, 1031, 12.5, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101595, 10855, 1056, 38, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101596, 10855, 1065, 21.05, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101597, 10856, 1002, 19, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101599, 10857, 1003, 10, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101600, 10857, 1026, 31.23, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101601, 10857, 1029, 123.79, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101602, 10858, 1007, 30, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101603, 10858, 1027, 43.9, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101604, 10858, 1070, 15, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101605, 10859, 1024, 4.5, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101606, 10859, 1054, 7.45, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101607, 10859, 1064, 33.25, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101608, 10860, 1051, 53, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101609, 10860, 1076, 18, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101610, 10861, 1017, 39, 42, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101611, 10861, 1018, 62.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101612, 10861, 1021, 10, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101613, 10861, 1033, 2.5, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101614, 10861, 1062, 49.3, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101616, 10862, 1052, 7, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101617, 10863, 1001, 18, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101618, 10863, 1058, 13.25, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101619, 10864, 1035, 18, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101620, 10864, 1067, 14, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101621, 10865, 1038, 263.5, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101622, 10865, 1039, 18, 80, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101623, 10866, 1002, 19, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101624, 10866, 1024, 4.5, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101625, 10866, 1030, 25.89, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101626, 10867, 1053, 32.8, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101627, 10868, 1026, 31.23, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101628, 10868, 1035, 18, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101629, 10868, 1049, 20, 42, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101630, 10869, 1001, 18, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101632, 10869, 1023, 9, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101633, 10869, 1068, 12.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101634, 10870, 1035, 18, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101635, 10870, 1051, 53, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101636, 10871, 1006, 25, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101637, 10871, 1016, 17.45, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101638, 10871, 1017, 39, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101639, 10872, 1055, 24, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101640, 10872, 1062, 49.3, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101641, 10872, 1064, 33.25, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101642, 10872, 1065, 21.05, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101643, 10873, 1021, 10, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101644, 10873, 1028, 45.6, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101645, 10874, 1010, 31, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101646, 10875, 1019, 9.2, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101647, 10875, 1047, 9.5, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101648, 10875, 1049, 20, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101649, 10876, 1046, 12, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101650, 10876, 1064, 33.25, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101651, 10877, 1016, 17.45, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101652, 10877, 1018, 62.5, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101653, 10878, 1020, 81, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101654, 10879, 1040, 18.4, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101655, 10879, 1065, 21.05, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101656, 10879, 1076, 18, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101657, 10880, 1023, 9, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101658, 10880, 1061, 28.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101659, 10880, 1070, 15, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101660, 10881, 1073, 15, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101662, 10882, 1049, 20, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101663, 10882, 1054, 7.45, 32, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101664, 10883, 1024, 4.5, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101665, 10884, 1021, 10, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101666, 10884, 1056, 38, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101667, 10884, 1065, 21.05, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101668, 10885, 1002, 19, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101669, 10885, 1024, 4.5, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101670, 10885, 1070, 15, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101671, 10885, 1077, 13, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101672, 10886, 1010, 31, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101673, 10886, 1031, 12.5, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101674, 10886, 1077, 13, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101675, 10887, 1025, 14, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101676, 10888, 1002, 19, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101677, 10888, 1068, 12.5, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101679, 10889, 1038, 263.5, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101680, 10890, 1017, 39, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101681, 10890, 1034, 14, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101682, 10890, 1041, 9.65, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101683, 10891, 1030, 25.89, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101684, 10892, 1059, 55, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101685, 10893, 1008, 40, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101686, 10893, 1024, 4.5, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101687, 10893, 1029, 123.79, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101688, 10893, 1030, 25.89, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101689, 10893, 1036, 19, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101690, 10894, 1013, 6, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101691, 10894, 1069, 36, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101692, 10894, 1075, 7.75, 120, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101693, 10895, 1024, 4.5, 110, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101694, 10895, 1039, 18, 45, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101695, 10895, 1040, 18.4, 91, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101696, 10895, 1060, 34, 100, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101697, 10896, 1045, 9.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101698, 10896, 1056, 38, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101699, 10897, 1029, 123.79, 80, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101700, 10897, 1030, 25.89, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101701, 10898, 1013, 6, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101702, 10899, 1039, 18, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101703, 10900, 1070, 15, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101704, 10901, 1041, 9.65, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101705, 10901, 1071, 21.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101706, 10902, 1055, 24, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101707, 10902, 1062, 49.3, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101708, 10903, 1013, 6, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101709, 10903, 1065, 21.05, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101710, 10903, 1068, 12.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101711, 10904, 1058, 13.25, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101712, 10904, 1062, 49.3, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101713, 10905, 1001, 18, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101714, 10906, 1061, 28.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101715, 10907, 1075, 7.75, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101716, 10908, 1007, 30, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101717, 10908, 1052, 7, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101718, 10909, 1007, 30, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101719, 10909, 1016, 17.45, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101720, 10909, 1041, 9.65, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101721, 10910, 1019, 9.2, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101722, 10910, 1049, 20, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101723, 10910, 1061, 28.5, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101724, 10911, 1001, 18, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101725, 10911, 1017, 39, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101726, 10911, 1067, 14, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101728, 10912, 1029, 123.79, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101729, 10913, 1004, 22, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101730, 10913, 1033, 2.5, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101731, 10913, 1058, 13.25, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101732, 10914, 1071, 21.5, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101733, 10915, 1017, 39, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101734, 10915, 1033, 2.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101735, 10915, 1054, 7.45, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101736, 10916, 1016, 17.45, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101737, 10916, 1032, 32, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101738, 10916, 1057, 19.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101739, 10917, 1030, 25.89, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101740, 10917, 1060, 34, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101741, 10918, 1001, 18, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101742, 10918, 1060, 34, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101743, 10919, 1016, 17.45, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101744, 10919, 1025, 14, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101745, 10919, 1040, 18.4, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101746, 10920, 1050, 16.25, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101747, 10921, 1035, 18, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101748, 10921, 1063, 43.9, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101749, 10922, 1017, 39, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101750, 10922, 1024, 4.5, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101752, 10923, 1043, 46, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101753, 10923, 1067, 14, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101754, 10924, 1010, 31, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101755, 10924, 1028, 45.6, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101756, 10924, 1075, 7.75, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101757, 10925, 1036, 19, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101758, 10925, 1052, 7, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101760, 10926, 1013, 6, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101761, 10926, 1019, 9.2, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101763, 10927, 1020, 81, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101764, 10927, 1052, 7, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101765, 10927, 1076, 18, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101766, 10928, 1047, 9.5, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101767, 10928, 1076, 18, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101768, 10929, 1021, 10, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101769, 10929, 1075, 7.75, 49, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101770, 10929, 1077, 13, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101771, 10930, 1021, 10, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101772, 10930, 1027, 43.9, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101773, 10930, 1055, 24, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101774, 10930, 1058, 13.25, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101775, 10931, 1013, 6, 42, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101776, 10931, 1057, 19.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101777, 10932, 1016, 17.45, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101778, 10932, 1062, 49.3, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101780, 10932, 1075, 7.75, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101781, 10933, 1053, 32.8, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101782, 10933, 1061, 28.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101783, 10934, 1006, 25, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101784, 10935, 1001, 18, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101785, 10935, 1018, 62.5, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101786, 10935, 1023, 9, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101787, 10936, 1036, 19, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101788, 10937, 1028, 45.6, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101789, 10937, 1034, 14, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101790, 10938, 1013, 6, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101791, 10938, 1043, 46, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101792, 10938, 1060, 34, 49, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101793, 10938, 1071, 21.5, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101794, 10939, 1002, 19, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101795, 10939, 1067, 14, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101796, 10940, 1007, 30, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101797, 10940, 1013, 6, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101798, 10941, 1031, 12.5, 44, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101799, 10941, 1062, 49.3, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101800, 10941, 1068, 12.5, 80, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101802, 10942, 1049, 20, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101803, 10943, 1013, 6, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101804, 10943, 1022, 21, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101805, 10943, 1046, 12, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101807, 10944, 1044, 19.45, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101808, 10944, 1056, 38, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101809, 10945, 1013, 6, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101810, 10945, 1031, 12.5, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101811, 10946, 1010, 31, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101812, 10946, 1024, 4.5, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101813, 10946, 1077, 13, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101814, 10947, 1059, 55, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101815, 10948, 1050, 16.25, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101816, 10948, 1051, 53, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101817, 10948, 1055, 24, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101818, 10949, 1006, 25, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101819, 10949, 1010, 31, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101820, 10949, 1017, 39, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101821, 10949, 1062, 49.3, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101822, 10950, 1004, 22, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101823, 10951, 1033, 2.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101824, 10951, 1041, 9.65, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101825, 10951, 1075, 7.75, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101826, 10952, 1006, 25, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101827, 10952, 1028, 45.6, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101828, 10953, 1020, 81, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101829, 10953, 1031, 12.5, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101830, 10954, 1016, 17.45, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101831, 10954, 1031, 12.5, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101832, 10954, 1045, 9.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101833, 10954, 1060, 34, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101834, 10955, 1075, 7.75, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101835, 10956, 1021, 10, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101836, 10956, 1047, 9.5, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101837, 10956, 1051, 53, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101838, 10957, 1030, 25.89, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101839, 10957, 1035, 18, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101840, 10957, 1064, 33.25, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101842, 10958, 1007, 30, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101844, 10959, 1075, 7.75, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101845, 10960, 1024, 4.5, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101846, 10960, 1041, 9.65, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101847, 10961, 1052, 7, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101848, 10961, 1076, 18, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101849, 10962, 1007, 30, 45, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101850, 10962, 1013, 6, 77, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101851, 10962, 1053, 32.8, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101852, 10962, 1069, 36, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101853, 10962, 1076, 18, 44, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101854, 10963, 1060, 34, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101855, 10964, 1018, 62.5, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101856, 10964, 1038, 263.5, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101857, 10964, 1069, 36, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101858, 10965, 1051, 53, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101859, 10966, 1037, 26, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101860, 10966, 1056, 38, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101861, 10966, 1062, 49.3, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101862, 10967, 1019, 9.2, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101863, 10967, 1049, 20, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101864, 10968, 1012, 38, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101865, 10968, 1024, 4.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101866, 10968, 1064, 33.25, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101867, 10969, 1046, 12, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101868, 10970, 1052, 7, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101869, 10971, 1029, 123.79, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101870, 10972, 1017, 39, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101871, 10972, 1033, 2.5, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101872, 10973, 1026, 31.23, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101873, 10973, 1041, 9.65, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101874, 10973, 1075, 7.75, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101875, 10974, 1063, 43.9, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101876, 10975, 1008, 40, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101877, 10975, 1075, 7.75, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101878, 10976, 1028, 45.6, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101879, 10977, 1039, 18, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101880, 10977, 1047, 9.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101881, 10977, 1051, 53, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101882, 10977, 1063, 43.9, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101883, 10978, 1008, 40, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101884, 10978, 1021, 10, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101885, 10978, 1040, 18.4, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101886, 10978, 1044, 19.45, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101887, 10979, 1007, 30, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101888, 10979, 1012, 38, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101889, 10979, 1024, 4.5, 80, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101890, 10979, 1027, 43.9, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101891, 10979, 1031, 12.5, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101892, 10979, 1063, 43.9, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101893, 10980, 1075, 7.75, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101894, 10981, 1038, 263.5, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101895, 10982, 1007, 30, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101896, 10982, 1043, 46, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101897, 10983, 1013, 6, 84, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101898, 10983, 1057, 19.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101899, 10984, 1016, 17.45, 55, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101900, 10984, 1024, 4.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101901, 10984, 1036, 19, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101902, 10985, 1016, 17.45, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101903, 10985, 1018, 62.5, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101904, 10985, 1032, 32, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101906, 10986, 1020, 81, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101907, 10986, 1076, 18, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101908, 10986, 1077, 13, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101909, 10987, 1007, 30, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101910, 10987, 1043, 46, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101912, 10988, 1007, 30, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101913, 10988, 1062, 49.3, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101914, 10989, 1006, 25, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101916, 10989, 1041, 9.65, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101917, 10990, 1021, 10, 65, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101918, 10990, 1034, 14, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101919, 10990, 1055, 24, 65, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101920, 10990, 1061, 28.5, 66, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101921, 10991, 1002, 19, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101922, 10991, 1070, 15, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101923, 10991, 1076, 18, 90, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101925, 10993, 1029, 123.79, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101926, 10993, 1041, 9.65, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101927, 10994, 1059, 55, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101928, 10995, 1051, 53, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101929, 10995, 1060, 34, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101931, 10997, 1032, 32, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101932, 10997, 1046, 12, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101933, 10997, 1052, 7, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101934, 10998, 1024, 4.5, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101935, 10998, 1061, 28.5, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101936, 10998, 1074, 10, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101937, 10998, 1075, 7.75, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101938, 10999, 1041, 9.65, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101939, 10999, 1051, 53, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101940, 10999, 1077, 13, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101941, 11000, 1004, 22, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101942, 11000, 1024, 4.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101943, 11000, 1077, 13, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101944, 11001, 1007, 30, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101945, 11001, 1022, 21, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101946, 11001, 1046, 12, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101947, 11001, 1055, 24, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101948, 11002, 1013, 6, 56, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101949, 11002, 1035, 18, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101951, 11002, 1055, 24, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101952, 11003, 1001, 18, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101953, 11003, 1040, 18.4, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101954, 11003, 1052, 7, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101955, 11004, 1026, 31.23, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101956, 11004, 1076, 18, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101957, 11005, 1001, 18, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101958, 11005, 1059, 55, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101959, 11006, 1001, 18, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101960, 11006, 1029, 123.79, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101961, 11007, 1008, 40, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101962, 11007, 1029, 123.79, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101964, 11008, 1028, 45.6, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101965, 11008, 1034, 14, 90, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101966, 11008, 1071, 21.5, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101967, 11009, 1024, 4.5, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101968, 11009, 1036, 19, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101969, 11009, 1060, 34, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101970, 11010, 1007, 30, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101971, 11010, 1024, 4.5, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101972, 11011, 1058, 13.25, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101973, 11011, 1071, 21.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101974, 11012, 1019, 9.2, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101975, 11012, 1060, 34, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101976, 11012, 1071, 21.5, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101977, 11013, 1023, 9, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101979, 11013, 1045, 9.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101980, 11013, 1068, 12.5, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101981, 11014, 1041, 9.65, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101982, 11015, 1030, 25.89, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101983, 11015, 1077, 13, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101984, 11016, 1031, 12.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101985, 11016, 1036, 19, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101986, 11017, 1003, 10, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101987, 11017, 1059, 55, 110, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101988, 11017, 1070, 15, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101989, 11018, 1012, 38, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101990, 11018, 1018, 62.5, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101991, 11018, 1056, 38, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101992, 11019, 1046, 12, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101993, 11019, 1049, 20, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101994, 11020, 1010, 31, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101995, 11021, 1002, 19, 11, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101996, 11021, 1020, 81, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101997, 11021, 1026, 31.23, 63, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101998, 11021, 1051, 53, 44, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102000, 11022, 1019, 9.2, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102001, 11022, 1069, 36, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102002, 11023, 1007, 30, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102003, 11023, 1043, 46, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102004, 11024, 1026, 31.23, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102005, 11024, 1033, 2.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102006, 11024, 1065, 21.05, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102007, 11024, 1071, 21.5, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102008, 11025, 1001, 18, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102009, 11025, 1013, 6, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102010, 11026, 1018, 62.5, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102011, 11026, 1051, 53, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102012, 11027, 1024, 4.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102013, 11027, 1062, 49.3, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102014, 11028, 1055, 24, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102015, 11028, 1059, 55, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102016, 11029, 1056, 38, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102017, 11029, 1063, 43.9, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102018, 11030, 1002, 19, 100, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102020, 11030, 1029, 123.79, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102021, 11030, 1059, 55, 100, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102022, 11031, 1001, 18, 45, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102023, 11031, 1013, 6, 80, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102024, 11031, 1024, 4.5, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102025, 11031, 1064, 33.25, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102026, 11031, 1071, 21.5, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102027, 11032, 1036, 19, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102028, 11032, 1038, 263.5, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102029, 11032, 1059, 55, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102030, 11033, 1053, 32.8, 70, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102031, 11033, 1069, 36, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102032, 11034, 1021, 10, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102033, 11034, 1044, 19.45, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102034, 11034, 1061, 28.5, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102035, 11035, 1001, 18, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102036, 11035, 1035, 18, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102038, 11035, 1054, 7.45, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102039, 11036, 1013, 6, 7, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102040, 11036, 1059, 55, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102041, 11037, 1070, 15, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102042, 11038, 1040, 18.4, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102043, 11038, 1052, 7, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102044, 11038, 1071, 21.5, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102045, 11039, 1028, 45.6, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102046, 11039, 1035, 18, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102047, 11039, 1049, 20, 60, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102048, 11039, 1057, 19.5, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102049, 11040, 1021, 10, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102050, 11041, 1002, 19, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102051, 11041, 1063, 43.9, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102052, 11042, 1044, 19.45, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102053, 11042, 1061, 28.5, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102055, 11044, 1062, 49.3, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102056, 11045, 1033, 2.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102057, 11045, 1051, 53, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102058, 11046, 1012, 38, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102059, 11046, 1032, 32, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102060, 11046, 1035, 18, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102061, 11047, 1001, 18, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102063, 11048, 1068, 12.5, 42, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102064, 11049, 1002, 19, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102065, 11049, 1012, 38, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102066, 11050, 1076, 18, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102067, 11051, 1024, 4.5, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102068, 11052, 1043, 46, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102069, 11052, 1061, 28.5, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102070, 11053, 1018, 62.5, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102071, 11053, 1032, 32, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102072, 11053, 1064, 33.25, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102073, 11054, 1033, 2.5, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102074, 11054, 1067, 14, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102075, 11055, 1024, 4.5, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102076, 11055, 1025, 14, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102077, 11055, 1051, 53, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102078, 11055, 1057, 19.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102079, 11056, 1007, 30, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102080, 11056, 1055, 24, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102081, 11056, 1060, 34, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102082, 11057, 1070, 15, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102083, 11058, 1021, 10, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102084, 11058, 1060, 34, 21, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102085, 11058, 1061, 28.5, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102086, 11059, 1013, 6, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102087, 11059, 1017, 39, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102088, 11059, 1060, 34, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102089, 11060, 1060, 34, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102090, 11060, 1077, 13, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102091, 11061, 1060, 34, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102092, 11062, 1053, 32.8, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102093, 11062, 1070, 15, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102094, 11063, 1034, 14, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102095, 11063, 1040, 18.4, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102096, 11063, 1041, 9.65, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102097, 11064, 1017, 39, 77, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102098, 11064, 1041, 9.65, 12, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102099, 11064, 1053, 32.8, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102100, 11064, 1055, 24, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102101, 11064, 1068, 12.5, 55, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102102, 11065, 1030, 25.89, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102103, 11065, 1054, 7.45, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102104, 11066, 1016, 17.45, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102105, 11066, 1019, 9.2, 42, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102106, 11066, 1034, 14, 35, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102107, 11067, 1041, 9.65, 9, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102108, 11068, 1028, 45.6, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102109, 11068, 1043, 46, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102110, 11068, 1077, 13, 28, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102111, 11069, 1039, 18, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102112, 11070, 1001, 18, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102113, 11070, 1002, 19, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102114, 11070, 1016, 17.45, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102115, 11070, 1031, 12.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102116, 11071, 1007, 30, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102117, 11071, 1013, 6, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102118, 11072, 1002, 19, 8, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102119, 11072, 1041, 9.65, 40, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102120, 11072, 1050, 16.25, 22, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102121, 11072, 1064, 33.25, 130, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102123, 11073, 1024, 4.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102124, 11074, 1016, 17.45, 14, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102125, 11075, 1002, 19, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102126, 11075, 1046, 12, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102127, 11075, 1076, 18, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102128, 11076, 1006, 25, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102129, 11076, 1014, 23.25, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102130, 11076, 1019, 9.2, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102131, 11077, 1002, 19, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102132, 11077, 1003, 10, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102133, 11077, 1004, 22, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102134, 11077, 1006, 25, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102135, 11077, 1007, 30, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102136, 11077, 1008, 40, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102137, 11077, 1010, 31, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102138, 11077, 1012, 38, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102139, 11077, 1013, 6, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102140, 11077, 1014, 23.25, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102141, 11077, 1016, 17.45, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102142, 11077, 1020, 81, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102143, 11077, 1023, 9, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102144, 11077, 1032, 32, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102145, 11077, 1039, 18, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102146, 11077, 1041, 9.65, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102147, 11077, 1046, 12, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102148, 11077, 1052, 7, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102149, 11077, 1055, 24, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102150, 11077, 1060, 34, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102151, 11077, 1064, 33.25, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102152, 11077, 1066, 17, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102153, 11077, 1073, 15, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102154, 11077, 1075, 7.75, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102155, 11077, 1077, 13, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102316, 10250, 1009, 150, 5, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102481, 11196, 1056, 38, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102482, 11196, 1012, 38, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102483, 11196, 1028, 45.6, 3, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102484, 11196, 1023, 9, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102485, 11197, 1024, 4.5, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102486, 11198, 1024, 4.5, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102487, 11198, 1002, 19, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102488, 11199, 1011, 21, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102489, 11199, 1012, 38, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102490, 11199, 1031, 12.5, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102491, 11199, 1019, 9.2, 4, 0.1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102492, 11199, 1004, 22, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102493, 11199, 1006, 25, 1, 0.25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102497, 11201, 1003, 10, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102498, 11201, 1004, 22, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102499, 11201, 1006, 25, 1, 0.25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102500, 11204, 1057, 19.5, 1, 0.09)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102501, 11204, 1042, 14, 2, 0.7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102502, 11204, 1052, 7, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102503, 11204, 1022, 21, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102504, 11204, 1023, 9, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112551, 21221, 1042, 14, 7, 0.7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112552, 21221, 1052, 7, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112553, 21221, 1023, 9, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112554, 21221, 1002, 19, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112555, 21222, 1042, 14, 7, 0.7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112556, 21222, 1052, 7, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112557, 21222, 1023, 9, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112558, 21222, 1002, 19, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112563, 21224, 1021, 10, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112564, 21224, 1028, 45.6, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112565, 21224, 1014, 23.25, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112566, 21224, 1056, 38, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112567, 21224, 1059, 55, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112568, 21224, 1060, 34, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112572, 21226, 1059, 55, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112573, 21226, 1022, 21, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112574, 21226, 1064, 33.25, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112575, 21226, 1029, 123.79, 1, 0.05)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112576, 21226, 1053, 32.8, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112577, 21226, 1014, 23.25, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112589, 21230, 1024, 4.5, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112590, 21230, 1002, 19, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112591, 21231, 1011, 21, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112592, 21231, 1012, 38, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112593, 21231, 1031, 12.5, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112594, 21231, 1003, 10, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112595, 21231, 1004, 22, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112596, 21231, 1006, 25, 1, 0.25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112597, 21232, 1029, 123.79, 1, 0.05)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112598, 21232, 1017, 39, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112599, 21233, 1042, 14, 1, 0.7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112600, 21233, 1022, 21, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112601, 21233, 1023, 9, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112602, 21234, 1074, 10, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112603, 21234, 1042, 14, 1, 0.7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112604, 21234, 1028, 45.6, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112605, 21234, 1014, 23.25, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112606, 21234, 1051, 53, 1, 0.15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112607, 21234, 1022, 21, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112608, 21234, 1007, 30, 1, 0.2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112609, 21235, 1015, 15.5, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112610, 21235, 1063, 43.9, 2, 0.6)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112611, 21235, 1004, 22, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112612, 21235, 1006, 25, 4, 0.25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112621, 21238, 1029, 123.79, 4, 0.05)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112622, 21238, 1019, 9.2, 2, 0.1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112623, 21238, 1003, 10, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112624, 21238, 1005, 21.35, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112625, 21238, 1006, 25, 3, 0.25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112626, 21239, 1009, 97, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112627, 21239, 1029, 123.79, 4, 0.05)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112628, 21239, 1017, 39, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112629, 21240, 1024, 4.5, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112630, 21240, 1029, 123.79, 3, 0.05)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112631, 21240, 1016, 17.45, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112632, 21240, 1017, 39, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112633, 21240, 1002, 19, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112634, 21240, 1019, 9.2, 1, 0.1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112635, 21241, 1024, 4.5, 4, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112636, 21241, 1001, 190, 3, 0.15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112637, 21241, 1017, 39, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112638, 21241, 1002, 19, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112639, 21242, 1003, 10, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112640, 21242, 1004, 22, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112641, 21242, 1006, 25, 1, 0.25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112642, 21243, 1003, 10, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112643, 21243, 1004, 22, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112644, 21243, 1006, 25, 1, 0.25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112645, 21244, 1016, 17.45, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112646, 21244, 1019, 9.2, 1, 0.1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112647, 21244, 1005, 21.35, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112648, 21245, 1003, 999, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112649, 21245, 1004, 2349, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112650, 21245, 1006, 2549, 1, 0.25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112651, 21246, 1003, 999, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112652, 21246, 1004, 2299, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112653, 21246, 1006, 2599, 2, 0.25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112654, 21247, 1010, 3100, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112655, 21247, 1028, 699, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112656, 21247, 1013, 699, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112657, 21247, 1014, 2349, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112658, 21247, 1018, 7258, 2, 0.1)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112659, 21247, 1003, 1099, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112660, 21247, 1004, 2299, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112661, 21247, 1006, 2599, 1, 0.25)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112662, 21247, 1007, 1499, 1, 0.2)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112663, 21248, 1024, 449, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112664, 21248, 1042, 1499, 1, 0.7)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112665, 21248, 1001, 1900, 1, 0.15)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112666, 21248, 1002, 1999, 2, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112667, 21248, 1023, 999, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112668, 21249, 1013, 600, 1, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112669, 21249, 1018, 6250, 3, 0.1)
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10249, N'TOMSP', CAST(N'2021-07-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Luisenstr. 48', 1696, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10250, N'HANAR', CAST(N'2021-07-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Paço, 67', 2563, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10251, N'VICTE', CAST(N'2021-07-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2, rue du Commerce', 670.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10252, N'SUPRD', CAST(N'2021-07-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Boulevard Tirou, 255', 3730, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10253, N'HANAR', CAST(N'2021-07-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Paço, 67', 1444.8, 4, N'<br>')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10254, N'CHOPS', CAST(N'2021-07-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Hauptstr. 31', 625.2, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10255, N'RICSU', CAST(N'2021-07-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Starenweg 5', 2490.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10256, N'WELLI', CAST(N'2021-07-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Mercado, 12', 517.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10257, N'HILAA', CAST(N'2021-07-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 22 con Ave. Carlos Soublette #8-35', 1119.9, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10258, N'ERNSH', CAST(N'2021-07-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 913.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10259, N'CENTC', CAST(N'2021-07-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Sierras de Granada 9993', 100.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10260, N'OTTIK', CAST(N'2021-07-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Mehrheimerstr. 369', 1746.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10261, N'QUEDE', CAST(N'2021-07-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua da Panificadora, 12', 448, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10262, N'RATTC', CAST(N'2021-07-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2817 Milton Dr.', 420.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10263, N'ERNSH', CAST(N'2021-07-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 2464.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10264, N'FOLKO', CAST(N'2021-07-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Åkergatan 24', 724.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10265, N'BLONP', CAST(N'2021-07-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'24, place Kléber', 1176, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10266, N'WARTH', CAST(N'2021-07-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Torikatu 38', 364.7999999999999, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10267, N'FRANK', CAST(N'2021-07-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berliner Platz 43', 4031, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10268, N'GROSR', CAST(N'2021-07-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'5ª Ave. Los Palos Grandes', 990, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10269, N'WHITC', CAST(N'2021-07-31T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1029 - 12th Ave. S.', 120, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10270, N'WARTH', CAST(N'2021-08-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Torikatu 38', 1376, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10271, N'SPLIR', CAST(N'2021-08-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'P.O. Box 555', 48, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10272, N'RATTC', CAST(N'2021-08-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2817 Milton Dr.', 788.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10273, N'QUICK', CAST(N'2021-08-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 2142.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10274, N'VINET', CAST(N'2021-08-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'59 rue de l''Abbaye', 344, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10275, N'MAGAA', CAST(N'2021-08-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Via Ludovico il Moro 22', 307.2, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10276, N'TORTU', CAST(N'2021-08-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Avda. Azteca 123', 420, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10277, N'MORGK', CAST(N'2021-08-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Heerstr. 22', 1200.8, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10278, N'BERGS', CAST(N'2021-08-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berguvsvägen  8', 1488.8, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10279, N'LEHMS', CAST(N'2021-08-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Magazinweg 7', 468, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10280, N'BERGS', CAST(N'2021-08-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berguvsvägen  8', 613.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10281, N'ROMEY', CAST(N'2021-08-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Gran Vía, 1', 86.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10282, N'ROMEY', CAST(N'2021-08-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Gran Vía, 1', 155.39999999999998, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10283, N'LILAS', CAST(N'2021-08-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 1331.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10284, N'LEHMS', CAST(N'2021-08-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Magazinweg 7', 1452, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10285, N'QUICK', CAST(N'2021-08-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 2179.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10286, N'QUICK', CAST(N'2021-08-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 3016, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10287, N'RICAR', CAST(N'2021-08-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Copacabana, 267', 924, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10288, N'REGGC', CAST(N'2021-08-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Strada Provinciale 124', 89, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10289, N'BSBEV', CAST(N'2021-08-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Fauntleroy Circus', 479.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10290, N'COMMI', CAST(N'2021-08-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. dos Lusíadas, 23', 1829, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10291, N'QUEDE', CAST(N'2021-08-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua da Panificadora, 12', 552.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10292, N'TRADH', CAST(N'2021-08-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Inês de Castro, 414', 1296, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10293, N'TORTU', CAST(N'2021-08-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Avda. Azteca 123', 848.7, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10294, N'RATTC', CAST(N'2021-08-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2817 Milton Dr.', 1887.6, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10295, N'VINET', CAST(N'2021-09-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'59 rue de l''Abbaye', 121.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10296, N'LILAS', CAST(N'2021-09-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 849, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10297, N'BLONP', CAST(N'2021-09-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'24, place Kléber', 864, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10298, N'HUNGO', CAST(N'2021-09-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'8 Johnstown Road', 3127, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10299, N'RICAR', CAST(N'2021-09-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Copacabana, 267', 349.5, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10300, N'MAGAA', CAST(N'2021-09-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Via Ludovico il Moro 22', 608, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10301, N'WANDK', CAST(N'2021-09-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Adenauerallee 900', 755, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10302, N'SUPRD', CAST(N'2021-09-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Boulevard Tirou, 255', 2708.7999999999997, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10303, N'GODOS', CAST(N'2021-09-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'C/ Romero, 33', 1242, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10304, N'TORTU', CAST(N'2021-09-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Avda. Azteca 123', 954.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10305, N'OLDWO', CAST(N'2021-09-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2743 Bering St.', 4157, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10306, N'ROMEY', CAST(N'2021-09-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Gran Vía, 1', 498.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10307, N'LONEP', CAST(N'2021-09-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'89 Chiaroscuro Rd.', 424, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10308, N'ANATR', CAST(N'2021-09-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Avda. de la Constitución 2222', 88.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10309, N'HUNGO', CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'8 Johnstown Road', 1739.6, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10310, N'THEBI', CAST(N'2021-09-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'89 Jefferson Way Suite 2', 336, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10311, N'DUMON', CAST(N'2021-09-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'67, rue des Cinquante Otages', 201.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10312, N'WANDK', CAST(N'2021-09-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Adenauerallee 900', 1614.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10313, N'QUICK', CAST(N'2021-09-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 182.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10314, N'RATTC', CAST(N'2021-09-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2817 Milton Dr.', 2327, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10315, N'ISLAT', CAST(N'2021-09-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Garden House Crowther Way', 516.8, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10316, N'RATTC', CAST(N'2021-09-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2817 Milton Dr.', 2835, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10317, N'LONEP', CAST(N'2021-09-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'89 Chiaroscuro Rd.', 288, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10318, N'ISLAT', CAST(N'2021-10-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Garden House Crowther Way', 240.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10319, N'TORTU', CAST(N'2021-10-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Avda. Azteca 123', 1191.1999999999998, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10320, N'WARTH', CAST(N'2021-10-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Torikatu 38', 516, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10321, N'ISLAT', CAST(N'2021-10-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Garden House Crowther Way', 144, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10322, N'PERIC', CAST(N'2021-10-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Calle Dr. Jorge Cash 321', 112, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10323, N'KOENE', CAST(N'2021-10-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Maubelstr. 90', 164.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10324, N'SAVEA', CAST(N'2021-10-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 6155.9, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10325, N'KOENE', CAST(N'2021-10-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Maubelstr. 90', 385, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10326, N'BOLID', CAST(N'2021-10-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'C/ Araquil, 67', 982, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10327, N'FOLKO', CAST(N'2021-10-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Åkergatan 24', 1422.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10328, N'FURIB', CAST(N'2021-10-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Jardim das rosas n. 32', 1168, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10329, N'SPLIR', CAST(N'2021-10-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'P.O. Box 555', 4819.4000000000005, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10330, N'LILAS', CAST(N'2021-10-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 1245, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10331, N'BONAP', CAST(N'2021-10-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'12, rue des Bouchers', 88.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10332, N'MEREP', CAST(N'2021-10-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'43 rue St. Laurent', 2121.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10333, N'WARTH', CAST(N'2021-10-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Torikatu 38', 954, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10334, N'VICTE', CAST(N'2021-10-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2, rue du Commerce', 144.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10335, N'HUNGO', CAST(N'2021-10-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'8 Johnstown Road', 2545.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10336, N'PRINI', CAST(N'2021-10-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Estrada da saúde n. 58', 316.8, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10337, N'FRANK', CAST(N'2021-10-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berliner Platz 43', 1772, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10338, N'OLDWO', CAST(N'2021-10-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2743 Bering St.', 934.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10339, N'MEREP', CAST(N'2021-10-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'43 rue St. Laurent', 3463.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10340, N'BONAP', CAST(N'2021-10-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'12, rue des Bouchers', 2564.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10341, N'SIMOB', CAST(N'2021-10-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Vinbæltet 34', 412, 4, N'')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10342, N'FRANK', CAST(N'2021-10-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berliner Platz 43', 2300.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10343, N'LEHMS', CAST(N'2021-10-31T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Magazinweg 7', 1586, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10344, N'WHITC', CAST(N'2021-11-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1029 - 12th Ave. S.', 2856, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10345, N'QUICK', CAST(N'2021-11-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 2824, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10346, N'RATTC', CAST(N'2021-11-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2817 Milton Dr.', 1731.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10347, N'FAMIA', CAST(N'2021-11-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua Orós, 92', 928, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10348, N'WANDK', CAST(N'2021-11-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Adenauerallee 900', 396, 4, N'')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10349, N'SPLIR', CAST(N'2021-11-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'P.O. Box 555', 141.60000000000002, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10350, N'LAMAI', CAST(N'2021-11-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1 rue Alsace-Lorraine', 713.4, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10351, N'ERNSH', CAST(N'2021-11-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 5677.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10352, N'FURIB', CAST(N'2021-11-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Jardim das rosas n. 32', 154, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10353, N'PICCO', CAST(N'2021-11-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Geislweg 14', 10540, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10354, N'PERIC', CAST(N'2021-11-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Calle Dr. Jorge Cash 321', 568.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10355, N'AROUT', CAST(N'2021-11-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Brook Farm Stratford St. Mary', 480, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10356, N'WANDK', CAST(N'2021-11-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Adenauerallee 900', 1106.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10357, N'LILAS', CAST(N'2021-11-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 1360, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10358, N'LAMAI', CAST(N'2021-11-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1 rue Alsace-Lorraine', 452, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10359, N'SEVES', CAST(N'2021-11-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'90 Wadhurst Rd.', 3654.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10360, N'BLONP', CAST(N'2021-11-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'24, place Kléber', 7390.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10361, N'QUICK', CAST(N'2021-11-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 2273.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10362, N'BONAP', CAST(N'2021-11-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'12, rue des Bouchers', 1549.6, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10363, N'DRACD', CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Walserweg 21', 447.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10364, N'EASTC', CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'35 King George', 950, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10365, N'ANTON', CAST(N'2021-11-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Mataderos  2312', 0, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10366, N'GALED', CAST(N'2021-11-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rambla de Cataluña, 23', 136, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10367, N'VAFFE', CAST(N'2021-11-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Smagsloget 45', 834.2, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10368, N'ERNSH', CAST(N'2021-11-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 1834.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10369, N'SPLIR', CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'P.O. Box 555', 2527.2, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10370, N'CHOPS', CAST(N'2021-12-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Hauptstr. 31', 1174, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10371, N'LAMAI', CAST(N'2021-12-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1 rue Alsace-Lorraine', 91.199999999999989, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10372, N'QUEEN', CAST(N'2021-12-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Alameda dos Canàrios, 891', 11113.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10373, N'HUNGO', CAST(N'2021-12-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'8 Johnstown Road', 1708, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10374, N'WOLZA', CAST(N'2021-12-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'ul. Filtrowa 68', 459, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10375, N'HUNGC', CAST(N'2021-12-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'City Center Plaza 516 Main St.', 338, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10376, N'MEREP', CAST(N'2021-12-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'43 rue St. Laurent', 420, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10377, N'SEVES', CAST(N'2021-12-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'90 Wadhurst Rd.', 1016, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10378, N'FOLKO', CAST(N'2021-12-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Åkergatan 24', 103.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10379, N'QUEDE', CAST(N'2021-12-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua da Panificadora, 12', 959.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10380, N'HUNGO', CAST(N'2021-12-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'8 Johnstown Road', 1419.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10381, N'LILAS', CAST(N'2021-12-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 112, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10382, N'ERNSH', CAST(N'2021-12-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 2356, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10383, N'AROUT', CAST(N'2021-12-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Brook Farm Stratford St. Mary', 899, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10384, N'BERGS', CAST(N'2021-12-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berguvsvägen  8', 2222.3999999999996, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10385, N'SPLIR', CAST(N'2021-12-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'P.O. Box 555', 864, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10386, N'FAMIA', CAST(N'2021-12-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua Orós, 92', 166, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10387, N'SANTG', CAST(N'2021-12-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Erling Skakkes gate 78', 1058.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10388, N'SEVES', CAST(N'2021-12-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'90 Wadhurst Rd.', 1274, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10389, N'BOTTM', CAST(N'2021-12-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'23 Tsawassen Blvd.', 1832.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10390, N'ERNSH', CAST(N'2021-12-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 1608, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10391, N'DRACD', CAST(N'2021-12-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Walserweg 21', 86.399999999999977, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10392, N'PICCO', CAST(N'2021-12-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Geislweg 14', 1440, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10393, N'SAVEA', CAST(N'2021-12-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 3302.6000000000004, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10394, N'HUNGC', CAST(N'2021-12-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'City Center Plaza 516 Main St.', 442, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10395, N'HILAA', CAST(N'2021-12-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 22 con Ave. Carlos Soublette #8-35', 2333.2000000000003, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10396, N'FRANK', CAST(N'2021-12-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berliner Platz 43', 1320, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10397, N'PRINI', CAST(N'2021-12-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Estrada da saúde n. 58', 843.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10398, N'SAVEA', CAST(N'2021-12-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 2736, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10399, N'VAFFE', CAST(N'2021-12-31T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Smagsloget 45', 1765.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10400, N'EASTC', CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'35 King George', 3063, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10401, N'RATTC', CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2817 Milton Dr.', 3868.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10402, N'ERNSH', CAST(N'2020-01-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 2713.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10403, N'ERNSH', CAST(N'2020-01-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 1005.9, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10404, N'MAGAA', CAST(N'2020-01-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Via Ludovico il Moro 22', 1227, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10405, N'LINOD', CAST(N'2020-01-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Ave. 5 de Mayo Porlamar', 400, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10406, N'QUEEN', CAST(N'2020-01-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Alameda dos Canàrios, 891', 2018.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10407, N'OTTIK', CAST(N'2020-01-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Mehrheimerstr. 369', 690, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10408, N'FOLIG', CAST(N'2020-01-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'184, chaussée de Tournai', 1622.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10409, N'OCEAN', CAST(N'2020-01-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Ing. Gustavo Moncada 8585 Piso 20-A', 319.20000000000005, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10410, N'BOTTM', CAST(N'2020-01-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'23 Tsawassen Blvd.', 802, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10411, N'BOTTM', CAST(N'2020-01-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'23 Tsawassen Blvd.', 1208.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10412, N'WARTH', CAST(N'2020-01-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Torikatu 38', 372, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10413, N'LAMAI', CAST(N'2020-01-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1 rue Alsace-Lorraine', 2123.2, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10414, N'FAMIA', CAST(N'2020-01-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua Orós, 92', 231.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10415, N'HUNGC', CAST(N'2020-01-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'City Center Plaza 516 Main St.', 102.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10416, N'WARTH', CAST(N'2020-01-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Torikatu 38', 720, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10417, N'SIMOB', CAST(N'2020-01-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Vinbæltet 34', 11283.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10418, N'QUICK', CAST(N'2020-01-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 1814.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10419, N'RICSU', CAST(N'2020-01-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Starenweg 5', 2208, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10420, N'WELLI', CAST(N'2020-01-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Mercado, 12', 3345.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10421, N'QUEDE', CAST(N'2020-01-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua da Panificadora, 12', 1273.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10422, N'FRANS', CAST(N'2020-01-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Via Monte Bianco 34', 49.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10423, N'GOURL', CAST(N'2020-01-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Brasil, 442', 1020, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10424, N'MEREP', CAST(N'2020-01-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'43 rue St. Laurent', 11493.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10425, N'LAMAI', CAST(N'2020-01-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1 rue Alsace-Lorraine', 480, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10426, N'GALED', CAST(N'2020-01-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rambla de Cataluña, 23', 338.20000000000005, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10427, N'PICCO', CAST(N'2020-01-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Geislweg 14', 651, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10428, N'REGGC', CAST(N'2020-01-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Strada Provinciale 124', 192, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10429, N'HUNGO', CAST(N'2020-01-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'8 Johnstown Road', 1748.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10430, N'ERNSH', CAST(N'2020-01-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 5796, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10431, N'BOTTM', CAST(N'2020-01-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'23 Tsawassen Blvd.', 2523, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10432, N'SPLIR', CAST(N'2020-01-31T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'P.O. Box 555', 485, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10433, N'PRINI', CAST(N'2020-02-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Estrada da saúde n. 58', 851.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10434, N'FOLKO', CAST(N'2020-02-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Åkergatan 24', 259.2, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10435, N'CONSH', CAST(N'2020-02-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berkeley Gardens 12  Brewery', 353.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10436, N'BLONP', CAST(N'2020-02-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'24, place Kléber', 2210.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10437, N'WARTH', CAST(N'2020-02-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Torikatu 38', 393, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10438, N'TOMSP', CAST(N'2020-02-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Luisenstr. 48', 567.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10439, N'MEREP', CAST(N'2020-02-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'43 rue St. Laurent', 1078, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10440, N'SAVEA', CAST(N'2020-02-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 5793.1, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10441, N'OLDWO', CAST(N'2020-02-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2743 Bering St.', 1755, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10442, N'ERNSH', CAST(N'2020-02-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 1288, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10443, N'REGGC', CAST(N'2020-02-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Strada Provinciale 124', 436.7999999999999, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10444, N'BERGS', CAST(N'2020-02-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berguvsvägen  8', 1031.7, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10445, N'BERGS', CAST(N'2020-02-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berguvsvägen  8', 174.9, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10446, N'TOMSP', CAST(N'2020-02-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Luisenstr. 48', 273.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10447, N'RICAR', CAST(N'2020-02-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Copacabana, 267', 914.4, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10448, N'RANCH', CAST(N'2020-02-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. del Libertador 900', 443.4, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10449, N'BLONP', CAST(N'2020-02-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'24, place Kléber', 1838.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10450, N'VICTE', CAST(N'2020-02-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2, rue du Commerce', 531.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10451, N'QUICK', CAST(N'2020-02-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 4277.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10452, N'SAVEA', CAST(N'2020-02-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 2096, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10453, N'AROUT', CAST(N'2020-02-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Brook Farm Stratford St. Mary', 453, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10454, N'LAMAI', CAST(N'2020-02-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1 rue Alsace-Lorraine', 414, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10455, N'WARTH', CAST(N'2020-02-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Torikatu 38', 2684, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10456, N'KOENE', CAST(N'2020-02-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Maubelstr. 90', 656, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10457, N'KOENE', CAST(N'2020-02-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Maubelstr. 90', 1584, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10458, N'SUPRD', CAST(N'2020-02-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Boulevard Tirou, 255', 3891, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10459, N'VICTE', CAST(N'2020-02-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2, rue du Commerce', 576, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10460, N'FOLKO', CAST(N'2020-02-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Åkergatan 24', 234.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10461, N'LILAS', CAST(N'2020-02-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 2051.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10462, N'CONSH', CAST(N'2020-03-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berkeley Gardens 12  Brewery', 156.00000000000003, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10463, N'SUPRD', CAST(N'2020-03-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Boulevard Tirou, 255', 153.29999999999998, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10464, N'FURIB', CAST(N'2020-03-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Jardim das rosas n. 32', 1848, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10465, N'VAFFE', CAST(N'2020-03-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Smagsloget 45', 2719, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10466, N'COMMI', CAST(N'2020-03-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. dos Lusíadas, 23', 48, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10467, N'MAGAA', CAST(N'2020-03-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Via Ludovico il Moro 22', 235.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10468, N'KOENE', CAST(N'2020-03-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Maubelstr. 90', 717.6, -1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10469, N'WHITC', CAST(N'2020-03-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1029 - 12th Ave. S.', 1125.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10470, N'BONAP', CAST(N'2020-03-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'12, rue des Bouchers', 1820.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10471, N'BSBEV', CAST(N'2020-03-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Fauntleroy Circus', 1328, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10472, N'SEVES', CAST(N'2020-03-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'90 Wadhurst Rd.', 1051.1999999999998, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10473, N'ISLAT', CAST(N'2020-03-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Garden House Crowther Way', 230.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10474, N'PERIC', CAST(N'2020-03-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Calle Dr. Jorge Cash 321', 1249.1, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10475, N'SUPRD', CAST(N'2020-03-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Boulevard Tirou, 255', 1770.8000000000002, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10476, N'HILAA', CAST(N'2020-03-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 22 con Ave. Carlos Soublette #8-35', 182.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10477, N'PRINI', CAST(N'2020-03-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Estrada da saúde n. 58', 672, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10478, N'VICTE', CAST(N'2020-03-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2, rue du Commerce', 496, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10479, N'RATTC', CAST(N'2020-03-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2817 Milton Dr.', 10495.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10480, N'FOLIG', CAST(N'2020-03-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'184, chaussée de Tournai', 756, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10481, N'RICAR', CAST(N'2020-03-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Copacabana, 267', 1472, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10482, N'LAZYK', CAST(N'2020-03-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'12 Orchestra Terrace', 147, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10483, N'WHITC', CAST(N'2020-03-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1029 - 12th Ave. S.', 704, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10484, N'BSBEV', CAST(N'2020-03-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Fauntleroy Circus', 386.2, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10485, N'LINOD', CAST(N'2020-03-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Ave. 5 de Mayo Porlamar', 1760, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10486, N'HILAA', CAST(N'2020-03-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 22 con Ave. Carlos Soublette #8-35', 1188, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10487, N'QUEEN', CAST(N'2020-03-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Alameda dos Canàrios, 891', 925.1, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10488, N'FRANK', CAST(N'2020-03-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berliner Platz 43', 1560, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10489, N'PICCO', CAST(N'2020-03-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Geislweg 14', 250.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10490, N'HILAA', CAST(N'2020-03-31T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 22 con Ave. Carlos Soublette #8-35', 3163.2, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10491, N'FURIB', CAST(N'2020-03-31T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Jardim das rosas n. 32', 305.3, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10492, N'BOTTM', CAST(N'2020-04-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'23 Tsawassen Blvd.', 672, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10493, N'LAMAI', CAST(N'2020-04-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1 rue Alsace-Lorraine', 676, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10494, N'COMMI', CAST(N'2020-04-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. dos Lusíadas, 23', 912, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10495, N'LAUGB', CAST(N'2020-04-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2319 Elm St.', 278, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10496, N'TRADH', CAST(N'2020-04-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Inês de Castro, 414', 200, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10497, N'LEHMS', CAST(N'2020-04-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Magazinweg 7', 685.59999999999991, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10498, N'HILAA', CAST(N'2020-04-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 22 con Ave. Carlos Soublette #8-35', 155, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10499, N'LILAS', CAST(N'2020-04-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 1412, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10500, N'LAMAI', CAST(N'2020-04-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1 rue Alsace-Lorraine', 550.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10501, N'BLAUS', CAST(N'2020-04-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Forsterstr. 57', 149, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10502, N'PERIC', CAST(N'2020-04-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Calle Dr. Jorge Cash 321', 816.3, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10503, N'HUNGO', CAST(N'2020-04-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'8 Johnstown Road', 2048.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10504, N'WHITC', CAST(N'2020-04-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1029 - 12th Ave. S.', 1388.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10505, N'MEREP', CAST(N'2020-04-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'43 rue St. Laurent', 147.89999999999998, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10506, N'KOENE', CAST(N'2020-04-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Maubelstr. 90', 462, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10507, N'ANTON', CAST(N'2020-04-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Mataderos  2312', 881.25, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10508, N'OTTIK', CAST(N'2020-04-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Mehrheimerstr. 369', 240, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10509, N'BLAUS', CAST(N'2020-04-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Forsterstr. 57', 136.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10510, N'SAVEA', CAST(N'2020-04-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 4735.4400000000005, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10511, N'BONAP', CAST(N'2020-04-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'12, rue des Bouchers', 3000, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10512, N'FAMIA', CAST(N'2020-04-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua Orós, 92', 618, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10513, N'WANDK', CAST(N'2020-04-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Adenauerallee 900', 2427.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10514, N'ERNSH', CAST(N'2020-04-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 8623.45, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10515, N'QUICK', CAST(N'2020-04-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 11436.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10516, N'HUNGO', CAST(N'2020-04-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'8 Johnstown Road', 2334.5, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10517, N'NORTS', CAST(N'2020-04-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'South House 300 Queensbridge', 352, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10518, N'TORTU', CAST(N'2020-04-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Avda. Azteca 123', 4150.05, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10519, N'CHOPS', CAST(N'2020-04-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Hauptstr. 31', 2356, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10520, N'SANTG', CAST(N'2020-04-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Erling Skakkes gate 78', 200, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10521, N'CACTU', CAST(N'2020-04-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Cerrito 333', 225.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10522, N'LEHMS', CAST(N'2020-04-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Magazinweg 7', 2657.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10523, N'SEVES', CAST(N'2020-05-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'90 Wadhurst Rd.', 2715.9, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10524, N'BERGS', CAST(N'2020-05-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berguvsvägen  8', 3192.65, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10525, N'BONAP', CAST(N'2020-05-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'12, rue des Bouchers', 846, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10526, N'WARTH', CAST(N'2020-05-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Torikatu 38', 1344, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10527, N'QUICK', CAST(N'2020-05-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 1670, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10528, N'GREAL', CAST(N'2020-05-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2732 Baker Blvd.', 20, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10529, N'MAISD', CAST(N'2020-05-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rue Joseph-Bens 532', 946, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10530, N'PICCO', CAST(N'2020-05-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Geislweg 14', 4180, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10531, N'OCEAN', CAST(N'2020-05-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Ing. Gustavo Moncada 8585 Piso 20-A', 110, -1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10532, N'EASTC', CAST(N'2020-05-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'35 King George', 796.35, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10533, N'FOLKO', CAST(N'2020-05-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Åkergatan 24', 1460, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10534, N'LEHMS', CAST(N'2020-05-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Magazinweg 7', 517.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10535, N'ANTON', CAST(N'2020-05-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Mataderos  2312', 1106.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10536, N'LEHMS', CAST(N'2020-05-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Magazinweg 7', 2085, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10537, N'RICSU', CAST(N'2020-05-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Starenweg 5', 1093, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10538, N'BSBEV', CAST(N'2020-05-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Fauntleroy Circus', 105, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10539, N'BSBEV', CAST(N'2020-05-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Fauntleroy Circus', 355.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10540, N'QUICK', CAST(N'2020-05-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 10191.7, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10541, N'HANAR', CAST(N'2020-05-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Paço, 67', 2162.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10542, N'KOENE', CAST(N'2020-05-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Maubelstr. 90', 178.8, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10543, N'LILAS', CAST(N'2020-05-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 1770, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10544, N'LONEP', CAST(N'2020-05-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'89 Chiaroscuro Rd.', 417.2, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10545, N'LAZYK', CAST(N'2020-05-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'12 Orchestra Terrace', 0, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10546, N'VICTE', CAST(N'2020-05-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2, rue du Commerce', 2812, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10547, N'SEVES', CAST(N'2020-05-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'90 Wadhurst Rd.', 1908, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10548, N'TOMSP', CAST(N'2020-05-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Luisenstr. 48', 275.1, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10549, N'QUICK', CAST(N'2020-05-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 4181.5, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10550, N'GODOS', CAST(N'2020-05-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'C/ Romero, 33', 749, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10551, N'FURIB', CAST(N'2020-05-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Jardim das rosas n. 32', 1836, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10552, N'HILAA', CAST(N'2020-05-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 22 con Ave. Carlos Soublette #8-35', 880.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10553, N'WARTH', CAST(N'2020-05-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Torikatu 38', 1231.3, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10554, N'OTTIK', CAST(N'2020-05-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Mehrheimerstr. 369', 1819.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10555, N'SAVEA', CAST(N'2020-06-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 3680.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10556, N'SIMOB', CAST(N'2020-06-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Vinbæltet 34', 0, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10557, N'LEHMS', CAST(N'2020-06-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Magazinweg 7', 1152.5, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10558, N'AROUT', CAST(N'2020-06-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Brook Farm Stratford St. Mary', 2142.9, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10559, N'BLONP', CAST(N'2020-06-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'24, place Kléber', 547.8, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10560, N'FRANK', CAST(N'2020-06-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berliner Platz 43', 1257.3, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10561, N'FOLKO', CAST(N'2020-06-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Åkergatan 24', 2844.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10562, N'REGGC', CAST(N'2020-06-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Strada Provinciale 124', 543, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10563, N'RICAR', CAST(N'2020-06-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Copacabana, 267', 965, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10564, N'RATTC', CAST(N'2020-06-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2817 Milton Dr.', 1299, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10565, N'MEREP', CAST(N'2020-06-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'43 rue St. Laurent', 711, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10566, N'BLONP', CAST(N'2020-06-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'24, place Kléber', 1305, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10567, N'HUNGO', CAST(N'2020-06-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'8 Johnstown Road', 3109, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10568, N'GALED', CAST(N'2020-06-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rambla de Cataluña, 23', 155, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10569, N'RATTC', CAST(N'2020-06-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2817 Milton Dr.', 977.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10570, N'MEREP', CAST(N'2020-06-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'43 rue St. Laurent', 2280, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10571, N'ERNSH', CAST(N'2020-06-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 255.75, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10572, N'BERGS', CAST(N'2020-06-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berguvsvägen  8', 1565.65, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10573, N'ANTON', CAST(N'2020-06-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Mataderos  2312', 2082, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10574, N'TRAIH', CAST(N'2020-06-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'722 DaVinci Blvd.', 764.3, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10575, N'MORGK', CAST(N'2020-06-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Heerstr. 22', 1103.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10576, N'TORTU', CAST(N'2020-06-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Avda. Azteca 123', 838.45, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10577, N'TRAIH', CAST(N'2020-06-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'722 DaVinci Blvd.', 569, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10578, N'BSBEV', CAST(N'2020-06-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Fauntleroy Circus', 477, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10579, N'LETSS', CAST(N'2020-06-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'87 Polk St. Suite 5', 317.75, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10580, N'OTTIK', CAST(N'2020-06-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Mehrheimerstr. 369', 1067.1, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10581, N'FAMIA', CAST(N'2020-06-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua Orós, 92', 387.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10582, N'BLAUS', CAST(N'2020-06-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Forsterstr. 57', 330, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10583, N'WARTH', CAST(N'2020-06-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Torikatu 38', 2413.9, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10584, N'BLONP', CAST(N'2020-06-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'24, place Kléber', 625, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10585, N'WELLI', CAST(N'2020-07-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Mercado, 12', 142.5, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10586, N'REGGC', CAST(N'2020-07-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Strada Provinciale 124', 28, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10587, N'QUEDE', CAST(N'2020-07-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua da Panificadora, 12', 807.38, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10588, N'QUICK', CAST(N'2020-07-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 2500, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10589, N'GREAL', CAST(N'2020-07-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2732 Baker Blvd.', 72, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10590, N'MEREP', CAST(N'2020-07-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'43 rue St. Laurent', 1140, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10591, N'VAFFE', CAST(N'2020-07-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Smagsloget 45', 812.5, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10592, N'LEHMS', CAST(N'2020-07-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Magazinweg 7', 543.65, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10593, N'LEHMS', CAST(N'2020-07-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Magazinweg 7', 2493, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10594, N'OLDWO', CAST(N'2020-07-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2743 Bering St.', 565.5, -1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10595, N'ERNSH', CAST(N'2020-07-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 6300, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10596, N'WHITC', CAST(N'2020-07-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1029 - 12th Ave. S.', 1476.1, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10597, N'PICCO', CAST(N'2020-07-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Geislweg 14', 800.1, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10598, N'RATTC', CAST(N'2020-07-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2817 Milton Dr.', 2388.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10599, N'BSBEV', CAST(N'2020-07-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Fauntleroy Circus', 493, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10600, N'HUNGC', CAST(N'2020-07-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'City Center Plaza 516 Main St.', 479.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10601, N'HILAA', CAST(N'2020-07-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 22 con Ave. Carlos Soublette #8-35', 2285, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10602, N'VAFFE', CAST(N'2020-07-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Smagsloget 45', 65, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10603, N'SAVEA', CAST(N'2020-07-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 1508, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10604, N'FURIB', CAST(N'2020-07-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Jardim das rosas n. 32', 256.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10605, N'MEREP', CAST(N'2020-07-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'43 rue St. Laurent', 4326, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10606, N'TRADH', CAST(N'2020-07-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Inês de Castro, 414', 1413, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10607, N'SAVEA', CAST(N'2020-07-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 6057.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10608, N'TOMSP', CAST(N'2020-07-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Luisenstr. 48', 1064, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10609, N'DUMON', CAST(N'2020-07-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'67, rue des Cinquante Otages', 424, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10610, N'LAMAI', CAST(N'2020-07-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1 rue Alsace-Lorraine', 399, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10611, N'WOLZA', CAST(N'2020-07-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'ul. Filtrowa 68', 808, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10612, N'SAVEA', CAST(N'2020-07-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 6375, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10613, N'HILAA', CAST(N'2020-07-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 22 con Ave. Carlos Soublette #8-35', 358, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10614, N'BLAUS', CAST(N'2020-07-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Forsterstr. 57', 170, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10615, N'WILMK', CAST(N'2020-07-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Keskuskatu 45', 120, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10616, N'GREAL', CAST(N'2020-07-31T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2732 Baker Blvd.', 5032, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10617, N'GREAL', CAST(N'2020-07-31T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2732 Baker Blvd.', 1650, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10618, N'MEREP', CAST(N'2020-08-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'43 rue St. Laurent', 2697.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10619, N'MEREP', CAST(N'2020-08-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'43 rue St. Laurent', 1260, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10620, N'LAUGB', CAST(N'2020-08-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2319 Elm St.', 57.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10621, N'ISLAT', CAST(N'2020-08-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Garden House Crowther Way', 758.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10622, N'RICAR', CAST(N'2020-08-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Copacabana, 267', 605, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10623, N'FRANK', CAST(N'2020-08-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berliner Platz 43', 1429.75, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10624, N'THECR', CAST(N'2020-08-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'55 Grizzly Peak Rd.', 1393.24, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10625, N'ANATR', CAST(N'2020-08-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Avda. de la Constitución 2222', 409.75, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10626, N'BERGS', CAST(N'2020-08-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berguvsvägen  8', 1503.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10627, N'SAVEA', CAST(N'2020-08-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 1264.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10628, N'BLONP', CAST(N'2020-08-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'24, place Kléber', 450, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10629, N'GODOS', CAST(N'2020-08-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'C/ Romero, 33', 2775.05, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10630, N'KOENE', CAST(N'2020-08-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Maubelstr. 90', 918, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10631, N'LAMAI', CAST(N'2020-08-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1 rue Alsace-Lorraine', 62, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10632, N'WANDK', CAST(N'2020-08-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Adenauerallee 900', 620, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10633, N'ERNSH', CAST(N'2020-08-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 6483.05, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10634, N'FOLIG', CAST(N'2020-08-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'184, chaussée de Tournai', 4985.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10635, N'MAGAA', CAST(N'2020-08-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Via Ludovico il Moro 22', 1060, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10636, N'WARTH', CAST(N'2020-08-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Torikatu 38', 629.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10637, N'QUEEN', CAST(N'2020-08-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Alameda dos Canàrios, 891', 2686.25, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10638, N'LINOD', CAST(N'2020-08-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Ave. 5 de Mayo Porlamar', 632.05, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10639, N'SANTG', CAST(N'2020-08-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Erling Skakkes gate 78', 500, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10640, N'WANDK', CAST(N'2020-08-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Adenauerallee 900', 945, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10641, N'HILAA', CAST(N'2020-08-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 22 con Ave. Carlos Soublette #8-35', 2054, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10642, N'SIMOB', CAST(N'2020-08-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Vinbæltet 34', 870, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10643, N'ALFKI', CAST(N'2020-08-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Obere Str. 57', 1086, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10644, N'WELLI', CAST(N'2020-08-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Mercado, 12', 1422, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10645, N'HANAR', CAST(N'2020-08-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Paço, 67', 1535, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10646, N'HUNGO', CAST(N'2020-08-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'8 Johnstown Road', 1928, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10647, N'QUEDE', CAST(N'2020-08-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua da Panificadora, 12', 636, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10648, N'RICAR', CAST(N'2020-08-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Copacabana, 267', 382.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10649, N'MAISD', CAST(N'2020-08-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rue Joseph-Bens 532', 912, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10650, N'FAMIA', CAST(N'2020-08-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua Orós, 92', 1820.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10651, N'WANDK', CAST(N'2020-09-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Adenauerallee 900', 530.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10652, N'GOURL', CAST(N'2020-09-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Brasil, 442', 51.78, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10653, N'FRANK', CAST(N'2020-09-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berliner Platz 43', 1203.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10654, N'BERGS', CAST(N'2020-09-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berguvsvägen  8', 668.7, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10655, N'REGGC', CAST(N'2020-09-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Strada Provinciale 124', 193, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10656, N'GREAL', CAST(N'2020-09-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2732 Baker Blvd.', 671.35, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10657, N'SAVEA', CAST(N'2020-09-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 4371.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10658, N'QUICK', CAST(N'2020-09-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 4668, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10659, N'QUEEN', CAST(N'2020-09-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Alameda dos Canàrios, 891', 1291.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10660, N'HUNGC', CAST(N'2020-09-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'City Center Plaza 516 Main St.', 1701, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10661, N'HUNGO', CAST(N'2020-09-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'8 Johnstown Road', 703.25, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10662, N'LONEP', CAST(N'2020-09-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'89 Chiaroscuro Rd.', 125, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10663, N'BONAP', CAST(N'2020-09-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'12, rue des Bouchers', 1612, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10664, N'FURIB', CAST(N'2020-09-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Jardim das rosas n. 32', 1515.75, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10665, N'LONEP', CAST(N'2020-09-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'89 Chiaroscuro Rd.', 1295, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10666, N'RICSU', CAST(N'2020-09-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Starenweg 5', 4666.9400000000005, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10667, N'ERNSH', CAST(N'2020-09-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 1921, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10668, N'WANDK', CAST(N'2020-09-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Adenauerallee 900', 694.75, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10669, N'SIMOB', CAST(N'2020-09-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Vinbæltet 34', 570, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10670, N'FRANK', CAST(N'2020-09-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berliner Platz 43', 2301.75, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10671, N'FRANR', CAST(N'2020-09-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'54, rue Royale', 920.1, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10672, N'BERGS', CAST(N'2020-09-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berguvsvägen  8', 4210.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10673, N'WILMK', CAST(N'2020-09-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Keskuskatu 45', 328.35, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10674, N'ISLAT', CAST(N'2020-09-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Garden House Crowther Way', 45, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10675, N'FRANK', CAST(N'2020-09-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berliner Platz 43', 1423, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10676, N'TORTU', CAST(N'2020-09-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Avda. Azteca 123', 534.85, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10677, N'ANTON', CAST(N'2020-09-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Mataderos  2312', 956.9, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10678, N'SAVEA', CAST(N'2020-09-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 5256.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10679, N'BLONP', CAST(N'2020-09-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'24, place Kléber', 660, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10680, N'OLDWO', CAST(N'2020-09-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2743 Bering St.', 1122.5, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10681, N'GREAL', CAST(N'2020-09-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2732 Baker Blvd.', 1327, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10682, N'ANTON', CAST(N'2020-09-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Mataderos  2312', 375.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10683, N'DUMON', CAST(N'2020-09-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'67, rue des Cinquante Otages', 63, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10684, N'OTTIK', CAST(N'2020-09-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Mehrheimerstr. 369', 1768, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10685, N'GOURL', CAST(N'2020-09-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Brasil, 442', 801.1, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10686, N'PICCO', CAST(N'2020-09-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Geislweg 14', 1638.45, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10687, N'HUNGO', CAST(N'2020-09-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'8 Johnstown Road', 8851.9, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10688, N'VAFFE', CAST(N'2020-10-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Smagsloget 45', 3490, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10689, N'BERGS', CAST(N'2020-10-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berguvsvägen  8', 630, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10690, N'HANAR', CAST(N'2020-10-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Paço, 67', 1150, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10691, N'QUICK', CAST(N'2020-10-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 10164.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10692, N'ALFKI', CAST(N'2020-10-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Obere Str. 57', 878, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10693, N'WHITC', CAST(N'2020-10-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1029 - 12th Ave. S.', 2652, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10694, N'QUICK', CAST(N'2020-10-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 4825, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10695, N'WILMK', CAST(N'2020-10-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Keskuskatu 45', 642, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10696, N'WHITC', CAST(N'2020-10-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1029 - 12th Ave. S.', 996, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10697, N'LINOD', CAST(N'2020-10-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Ave. 5 de Mayo Porlamar', 1073.9, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10698, N'ERNSH', CAST(N'2020-10-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 3285.73, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10699, N'MORGK', CAST(N'2020-10-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Heerstr. 22', 114, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10700, N'SAVEA', CAST(N'2020-10-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 2048, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10701, N'HUNGO', CAST(N'2020-10-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'8 Johnstown Road', 3370, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10702, N'ALFKI', CAST(N'2020-10-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Obere Str. 57', 330, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10703, N'FOLKO', CAST(N'2020-10-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Åkergatan 24', 2545, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10704, N'QUEEN', CAST(N'2020-10-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Alameda dos Canàrios, 891', 595.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10705, N'HILAA', CAST(N'2020-10-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 22 con Ave. Carlos Soublette #8-35', 378, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10706, N'OLDWO', CAST(N'2020-10-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2743 Bering St.', 1893, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10707, N'AROUT', CAST(N'2020-10-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Brook Farm Stratford St. Mary', 1704, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10708, N'THEBI', CAST(N'2020-10-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'89 Jefferson Way Suite 2', 95, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10709, N'GOURL', CAST(N'2020-10-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Brasil, 442', 3424, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10710, N'FRANS', CAST(N'2020-10-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Via Monte Bianco 34', 93.5, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10711, N'SAVEA', CAST(N'2020-10-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 4451.7, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10712, N'HUNGO', CAST(N'2020-10-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'8 Johnstown Road', 1238.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10713, N'SAVEA', CAST(N'2020-10-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 2827.9, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10714, N'SAVEA', CAST(N'2020-10-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 2941, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10715, N'BONAP', CAST(N'2020-10-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'12, rue des Bouchers', 1296, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10716, N'RANCH', CAST(N'2020-10-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. del Libertador 900', 706, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10717, N'FRANK', CAST(N'2020-10-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berliner Platz 43', 1331.75, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10718, N'KOENE', CAST(N'2020-10-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Maubelstr. 90', 3463, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10719, N'LETSS', CAST(N'2020-10-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'87 Polk St. Suite 5', 1125.67, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10720, N'QUEDE', CAST(N'2020-10-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua da Panificadora, 12', 550, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10721, N'QUICK', CAST(N'2020-10-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 972.5, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10722, N'SAVEA', CAST(N'2020-10-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 1570, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10723, N'WHITC', CAST(N'2020-10-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1029 - 12th Ave. S.', 468.45, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10724, N'MEREP', CAST(N'2020-10-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'43 rue St. Laurent', 638.5, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10725, N'FAMIA', CAST(N'2020-10-31T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua Orós, 92', 287.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10726, N'EASTC', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'35 King George', 550, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10727, N'REGGC', CAST(N'2020-11-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Strada Provinciale 124', 1710, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10728, N'QUEEN', CAST(N'2020-11-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Alameda dos Canàrios, 891', 1296.75, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10729, N'LINOD', CAST(N'2020-11-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Ave. 5 de Mayo Porlamar', 1850, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10730, N'BONAP', CAST(N'2020-11-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'12, rue des Bouchers', 509.75, -1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10731, N'CHOPS', CAST(N'2020-11-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Hauptstr. 31', 1990, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10732, N'BONAP', CAST(N'2020-11-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'12, rue des Bouchers', 360, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10733, N'BERGS', CAST(N'2020-11-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berguvsvägen  8', 1459, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10734, N'GOURL', CAST(N'2020-11-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Brasil, 442', 1498.35, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10735, N'LETSS', CAST(N'2020-11-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'87 Polk St. Suite 5', 596, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10736, N'HUNGO', CAST(N'2020-11-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'8 Johnstown Road', 997, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10737, N'VINET', CAST(N'2020-11-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'59 rue de l''Abbaye', 139.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10738, N'SPECD', CAST(N'2020-11-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'25, rue Lauriston', 52.349999999999994, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10739, N'VINET', CAST(N'2020-11-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'59 rue de l''Abbaye', 240, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10740, N'WHITC', CAST(N'2020-11-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1029 - 12th Ave. S.', 1770, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10741, N'AROUT', CAST(N'2020-11-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Brook Farm Stratford St. Mary', 285, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10742, N'BOTTM', CAST(N'2020-11-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'23 Tsawassen Blvd.', 1900, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10743, N'AROUT', CAST(N'2020-11-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Brook Farm Stratford St. Mary', 336, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10744, N'VAFFE', CAST(N'2020-11-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Smagsloget 45', 919.99999999999989, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10745, N'QUICK', CAST(N'2020-11-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 4286.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10746, N'CHOPS', CAST(N'2020-11-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Hauptstr. 31', 1919.7, -1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10747, N'PICCO', CAST(N'2020-11-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Geislweg 14', 1912.85, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10748, N'SAVEA', CAST(N'2020-11-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 2196, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10749, N'ISLAT', CAST(N'2020-11-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Garden House Crowther Way', 1080, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10750, N'WARTH', CAST(N'2020-11-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Torikatu 38', 1871.25, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10751, N'RICSU', CAST(N'2020-11-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Starenweg 5', 1701.46, -1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10752, N'NORTS', CAST(N'2020-11-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'South House 300 Queensbridge', 252, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10753, N'FRANS', CAST(N'2020-11-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Via Monte Bianco 34', 88, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10754, N'MAGAA', CAST(N'2020-11-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Via Ludovico il Moro 22', 55.2, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10755, N'BONAP', CAST(N'2020-11-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'12, rue des Bouchers', 2598, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10756, N'SPLIR', CAST(N'2020-11-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'P.O. Box 555', 2487.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10757, N'SAVEA', CAST(N'2020-11-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 3082, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10758, N'RICSU', CAST(N'2020-11-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Starenweg 5', 1644.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10759, N'ANATR', CAST(N'2020-11-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Avda. de la Constitución 2222', 320, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10760, N'MAISD', CAST(N'2020-12-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rue Joseph-Bens 532', 3304, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10761, N'RATTC', CAST(N'2020-12-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2817 Milton Dr.', 629.5, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10762, N'FOLKO', CAST(N'2020-12-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Åkergatan 24', 4337, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10763, N'FOLIG', CAST(N'2020-12-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'184, chaussée de Tournai', 616, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10764, N'ERNSH', CAST(N'2020-12-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 2540, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10765, N'QUICK', CAST(N'2020-12-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 1684, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10766, N'OTTIK', CAST(N'2020-12-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Mehrheimerstr. 369', 2310, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10767, N'SUPRD', CAST(N'2020-12-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Boulevard Tirou, 255', 0, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10768, N'AROUT', CAST(N'2020-12-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Brook Farm Stratford St. Mary', 1477, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10769, N'VAFFE', CAST(N'2020-12-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Smagsloget 45', 1704, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10770, N'HANAR', CAST(N'2020-12-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Paço, 67', 0, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10771, N'ERNSH', CAST(N'2020-12-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 344, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10772, N'LEHMS', CAST(N'2020-12-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Magazinweg 7', 3603.22, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10773, N'ERNSH', CAST(N'2020-12-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 2216.25, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10774, N'FOLKO', CAST(N'2020-12-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Åkergatan 24', 875, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10775, N'THECR', CAST(N'2020-12-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'55 Grizzly Peak Rd.', 228, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10776, N'ERNSH', CAST(N'2020-12-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 6816.5, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10777, N'GOURL', CAST(N'2020-12-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Brasil, 442', 0, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10778, N'BERGS', CAST(N'2020-12-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berguvsvägen  8', 96.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10779, N'MORGK', CAST(N'2020-12-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Heerstr. 22', 1335, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10780, N'LILAS', CAST(N'2020-12-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 720, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10781, N'WARTH', CAST(N'2020-12-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Torikatu 38', 1132.35, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10782, N'CACTU', CAST(N'2020-12-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Cerrito 333', 12.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10783, N'HANAR', CAST(N'2020-12-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Paço, 67', 1442.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10784, N'MAGAA', CAST(N'2020-12-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Via Ludovico il Moro 22', 606, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10785, N'GROSR', CAST(N'2020-12-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'5ª Ave. Los Palos Grandes', 387.5, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10786, N'QUEEN', CAST(N'2020-12-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Alameda dos Canàrios, 891', 1913.85, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10787, N'LAMAI', CAST(N'2020-12-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1 rue Alsace-Lorraine', 2760.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10788, N'QUICK', CAST(N'2020-12-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 770, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10789, N'FOLIG', CAST(N'2020-12-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'184, chaussée de Tournai', 3687, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10790, N'GOURL', CAST(N'2020-12-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Brasil, 442', 850, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10791, N'FRANK', CAST(N'2020-12-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berliner Platz 43', 1926.06, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10792, N'WOLZA', CAST(N'2020-12-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'ul. Filtrowa 68', 399.85, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10793, N'AROUT', CAST(N'2020-12-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Brook Farm Stratford St. Mary', 191.1, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10794, N'QUEDE', CAST(N'2020-12-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua da Panificadora, 12', 393.45, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10795, N'ERNSH', CAST(N'2020-12-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 2499.25, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10796, N'HILAA', CAST(N'2020-12-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 22 con Ave. Carlos Soublette #8-35', 2878.08, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10797, N'DRACD', CAST(N'2020-12-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Walserweg 21', 0, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10798, N'ISLAT', CAST(N'2020-12-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Garden House Crowther Way', 98.6, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10799, N'KOENE', CAST(N'2020-12-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Maubelstr. 90', 1585, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10800, N'SEVES', CAST(N'2020-12-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'90 Wadhurst Rd.', 582.15, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10801, N'BOLID', CAST(N'2020-12-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'C/ Araquil, 67', 4035.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10802, N'SIMOB', CAST(N'2020-12-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Vinbæltet 34', 3923.75, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10803, N'WELLI', CAST(N'2020-12-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Mercado, 12', 1255.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10804, N'SEVES', CAST(N'2020-12-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'90 Wadhurst Rd.', 2290.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10805, N'THEBI', CAST(N'2020-12-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'89 Jefferson Way Suite 2', 2775, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10806, N'VICTE', CAST(N'2020-12-31T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2, rue du Commerce', 572.1, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10807, N'FRANS', CAST(N'2020-12-31T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Via Monte Bianco 34', 18.4, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10808, N'OLDWO', CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2743 Bering St.', 1660, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10809, N'WELLI', CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Mercado, 12', 140, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10810, N'LAUGB', CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2319 Elm St.', 187, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10811, N'LINOD', CAST(N'2019-01-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Ave. 5 de Mayo Porlamar', 852, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10812, N'REGGC', CAST(N'2019-01-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Strada Provinciale 124', 460, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10813, N'RICAR', CAST(N'2019-01-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Copacabana, 267', 648, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10814, N'VICTE', CAST(N'2019-01-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2, rue du Commerce', 2070, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10815, N'SAVEA', CAST(N'2019-01-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 40, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10816, N'GREAL', CAST(N'2019-01-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2732 Baker Blvd.', 8891, -1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10817, N'KOENE', CAST(N'2019-01-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Maubelstr. 90', 11490.7, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10818, N'MAGAA', CAST(N'2019-01-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Via Ludovico il Moro 22', 833, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10819, N'CACTU', CAST(N'2019-01-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Cerrito 333', 477, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10820, N'RATTC', CAST(N'2019-01-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2817 Milton Dr.', 1140, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10821, N'SPLIR', CAST(N'2019-01-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'P.O. Box 555', 678, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10822, N'TRAIH', CAST(N'2019-01-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'722 DaVinci Blvd.', 237.9, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10823, N'LILAS', CAST(N'2019-01-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 2687.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10824, N'FOLKO', CAST(N'2019-01-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Åkergatan 24', 250.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10825, N'DRACD', CAST(N'2019-01-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Walserweg 21', 1030.76, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10826, N'BLONP', CAST(N'2019-01-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'24, place Kléber', 730, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10827, N'BONAP', CAST(N'2019-01-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'12, rue des Bouchers', 843, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10828, N'RANCH', CAST(N'2019-01-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. del Libertador 900', 932, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10829, N'ISLAT', CAST(N'2019-01-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Garden House Crowther Way', 1764, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10830, N'TRADH', CAST(N'2019-01-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Inês de Castro, 414', 1974, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10831, N'SANTG', CAST(N'2019-01-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Erling Skakkes gate 78', 2684.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10832, N'LAMAI', CAST(N'2019-01-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1 rue Alsace-Lorraine', 568.95, -1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10833, N'OTTIK', CAST(N'2019-01-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Mehrheimerstr. 369', 1007.7, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10834, N'TRADH', CAST(N'2019-01-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Inês de Castro, 414', 1508.12, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10835, N'ALFKI', CAST(N'2019-01-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Obere Str. 57', 851, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10836, N'ERNSH', CAST(N'2019-01-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 4705.5, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10837, N'BERGS', CAST(N'2019-01-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berguvsvägen  8', 1254, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10838, N'LINOD', CAST(N'2019-01-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Ave. 5 de Mayo Porlamar', 2584.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10839, N'TRADH', CAST(N'2019-01-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Inês de Castro, 414', 397.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10840, N'LINOD', CAST(N'2019-01-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Ave. 5 de Mayo Porlamar', 264, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10841, N'SUPRD', CAST(N'2019-01-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Boulevard Tirou, 255', 4581, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10842, N'TORTU', CAST(N'2019-01-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Avda. Azteca 123', 660, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10843, N'VICTE', CAST(N'2019-01-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2, rue du Commerce', 212, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10844, N'PICCO', CAST(N'2019-01-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Geislweg 14', 735, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10845, N'QUICK', CAST(N'2019-01-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 3471, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10846, N'SUPRD', CAST(N'2019-01-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Boulevard Tirou, 255', 1112, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10847, N'SAVEA', CAST(N'2019-01-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 6164.9, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10848, N'CONSH', CAST(N'2019-01-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berkeley Gardens 12  Brewery', 450, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10849, N'KOENE', CAST(N'2019-01-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Maubelstr. 90', 1052.14, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10850, N'VICTE', CAST(N'2019-01-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2, rue du Commerce', 740, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10851, N'RICAR', CAST(N'2019-01-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Copacabana, 267', 2740, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10852, N'RATTC', CAST(N'2019-01-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2817 Milton Dr.', 2984, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10853, N'BLAUS', CAST(N'2019-01-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Forsterstr. 57', 625, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10854, N'ERNSH', CAST(N'2019-01-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 3490, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10855, N'OLDWO', CAST(N'2019-01-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2743 Bering St.', 2275.25, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10856, N'ANTON', CAST(N'2019-01-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Mataderos  2312', 380, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10857, N'BERGS', CAST(N'2019-01-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berguvsvägen  8', 2630.95, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10858, N'LACOR', CAST(N'2019-01-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'67, avenue de l''Europe', 649, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10859, N'FRANK', CAST(N'2019-01-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berliner Platz 43', 1438.25, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10860, N'FRANR', CAST(N'2019-01-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'54, rue Royale', 519, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10861, N'WHITC', CAST(N'2019-01-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1029 - 12th Ave. S.', 3523.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10862, N'LEHMS', CAST(N'2019-01-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Magazinweg 7', 56, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10863, N'HILAA', CAST(N'2019-02-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 22 con Ave. Carlos Soublette #8-35', 519, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10864, N'AROUT', CAST(N'2019-02-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Brook Farm Stratford St. Mary', 282, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10865, N'QUICK', CAST(N'2019-02-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 17250, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10866, N'BERGS', CAST(N'2019-02-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berguvsvägen  8', 1461.6, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10867, N'LONEP', CAST(N'2019-02-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'89 Chiaroscuro Rd.', 98.399999999999977, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10868, N'QUEEN', CAST(N'2019-02-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Alameda dos Canàrios, 891', 2004.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10869, N'SEVES', CAST(N'2019-02-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'90 Wadhurst Rd.', 1420, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10870, N'WOLZA', CAST(N'2019-02-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'ul. Filtrowa 68', 160, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10871, N'BONAP', CAST(N'2019-02-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'12, rue des Bouchers', 2083.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10872, N'GODOS', CAST(N'2019-02-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'C/ Romero, 33', 2166.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10873, N'WILMK', CAST(N'2019-02-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Keskuskatu 45', 336.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10874, N'GODOS', CAST(N'2019-02-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'C/ Romero, 33', 310, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10875, N'BERGS', CAST(N'2019-02-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berguvsvägen  8', 729.5, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10876, N'BONAP', CAST(N'2019-02-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'12, rue des Bouchers', 917, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10877, N'RICAR', CAST(N'2019-02-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Copacabana, 267', 2086, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10878, N'QUICK', CAST(N'2019-02-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 1620, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10879, N'WILMK', CAST(N'2019-02-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Keskuskatu 45', 611.3, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10880, N'FOLKO', CAST(N'2019-02-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Åkergatan 24', 1875, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10881, N'CACTU', CAST(N'2019-02-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Cerrito 333', 150, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10882, N'SAVEA', CAST(N'2019-02-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 638.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10883, N'LONEP', CAST(N'2019-02-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'89 Chiaroscuro Rd.', 36, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10884, N'LETSS', CAST(N'2019-02-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'87 Polk St. Suite 5', 1450.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10885, N'SUPRD', CAST(N'2019-02-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Boulevard Tirou, 255', 1209, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10886, N'HANAR', CAST(N'2019-02-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Paço, 67', 3127.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10887, N'GALED', CAST(N'2019-02-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rambla de Cataluña, 23', 70, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10888, N'GODOS', CAST(N'2019-02-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'C/ Romero, 33', 605, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10889, N'RATTC', CAST(N'2019-02-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2817 Milton Dr.', 10540, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10890, N'DUMON', CAST(N'2019-02-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'67, rue des Cinquante Otages', 860.1, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10891, N'LEHMS', CAST(N'2019-02-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Magazinweg 7', 388.35, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10892, N'MAISD', CAST(N'2019-02-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rue Joseph-Bens 532', 2200, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10893, N'KOENE', CAST(N'2019-02-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Maubelstr. 90', 5502.11, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10894, N'SAVEA', CAST(N'2019-02-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 2898, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10895, N'ERNSH', CAST(N'2019-02-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 6379.4, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10896, N'MAISD', CAST(N'2019-02-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rue Joseph-Bens 532', 750.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10897, N'HUNGO', CAST(N'2019-02-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'8 Johnstown Road', 10835.240000000002, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10898, N'OCEAN', CAST(N'2019-02-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Ing. Gustavo Moncada 8585 Piso 20-A', 30, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10899, N'LILAS', CAST(N'2019-02-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 144, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10900, N'WELLI', CAST(N'2019-02-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Mercado, 12', 45, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10901, N'HILAA', CAST(N'2019-02-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 22 con Ave. Carlos Soublette #8-35', 934.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10902, N'FOLKO', CAST(N'2019-02-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Åkergatan 24', 1015.8, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10903, N'HANAR', CAST(N'2019-02-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Paço, 67', 932.05, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10904, N'WHITC', CAST(N'2019-02-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1029 - 12th Ave. S.', 1924.25, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10905, N'WELLI', CAST(N'2019-02-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Mercado, 12', 360, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10906, N'WOLZA', CAST(N'2019-02-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'ul. Filtrowa 68', 427.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10907, N'SPECD', CAST(N'2019-02-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'25, rue Lauriston', 108.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10908, N'REGGC', CAST(N'2019-02-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Strada Provinciale 124', 698, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10909, N'SANTG', CAST(N'2019-02-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Erling Skakkes gate 78', 670, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10910, N'WILMK', CAST(N'2019-02-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Keskuskatu 45', 452.9, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10911, N'GODOS', CAST(N'2019-02-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'C/ Romero, 33', 858, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10912, N'HUNGO', CAST(N'2019-02-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'8 Johnstown Road', 7427.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10913, N'QUEEN', CAST(N'2019-02-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Alameda dos Canàrios, 891', 958.75, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10914, N'QUEEN', CAST(N'2019-02-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Alameda dos Canàrios, 891', 537.5, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10915, N'TORTU', CAST(N'2019-02-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Avda. Azteca 123', 539.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10916, N'RANCH', CAST(N'2019-02-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. del Libertador 900', 686.7, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10917, N'ROMEY', CAST(N'2019-03-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Gran Vía, 1', 365.89, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10918, N'BOTTM', CAST(N'2019-03-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'23 Tsawassen Blvd.', 1930, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10919, N'LINOD', CAST(N'2019-03-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Ave. 5 de Mayo Porlamar', 1122.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10920, N'AROUT', CAST(N'2019-03-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Brook Farm Stratford St. Mary', 390, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10921, N'VAFFE', CAST(N'2019-03-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Smagsloget 45', 1936, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10922, N'HANAR', CAST(N'2019-03-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Paço, 67', 742.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10923, N'LAMAI', CAST(N'2019-03-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1 rue Alsace-Lorraine', 796, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10924, N'BERGS', CAST(N'2019-03-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berguvsvägen  8', 2034.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10925, N'HANAR', CAST(N'2019-03-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Paço, 67', 559, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10926, N'ANATR', CAST(N'2019-03-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Avda. de la Constitución 2222', 124.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10927, N'LACOR', CAST(N'2019-03-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'67, avenue de l''Europe', 800, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10928, N'GALED', CAST(N'2019-03-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rambla de Cataluña, 23', 137.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10929, N'FRANK', CAST(N'2019-03-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berliner Platz 43', 1174.75, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10930, N'SUPRD', CAST(N'2019-03-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Boulevard Tirou, 255', 2455, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10931, N'RICSU', CAST(N'2019-03-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Starenweg 5', 837, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10932, N'BONAP', CAST(N'2019-03-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'12, rue des Bouchers', 1368.6999999999998, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10933, N'ISLAT', CAST(N'2019-03-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Garden House Crowther Way', 920.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10934, N'LEHMS', CAST(N'2019-03-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Magazinweg 7', 500, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10935, N'WELLI', CAST(N'2019-03-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Mercado, 12', 700, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10936, N'GREAL', CAST(N'2019-03-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2732 Baker Blvd.', 570, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10937, N'CACTU', CAST(N'2019-03-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Cerrito 333', 644.8, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10938, N'QUICK', CAST(N'2019-03-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 3642.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10939, N'MAGAA', CAST(N'2019-03-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Via Ludovico il Moro 22', 750, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10940, N'BONAP', CAST(N'2019-03-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'12, rue des Bouchers', 360, -1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10941, N'SAVEA', CAST(N'2019-03-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 3029, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10942, N'REGGC', CAST(N'2019-03-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Strada Provinciale 124', 560, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10943, N'BSBEV', CAST(N'2019-03-11T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Fauntleroy Circus', 711, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10944, N'BOTTM', CAST(N'2019-03-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'23 Tsawassen Blvd.', 1034.1, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10945, N'MORGK', CAST(N'2019-03-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Heerstr. 22', 245, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10946, N'VAFFE', CAST(N'2019-03-12T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Smagsloget 45', 1407.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10947, N'BSBEV', CAST(N'2019-03-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Fauntleroy Circus', 220, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10948, N'GODOS', CAST(N'2019-03-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'C/ Romero, 33', 2362.25, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10949, N'BOTTM', CAST(N'2019-03-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'23 Tsawassen Blvd.', 4422, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10950, N'MAGAA', CAST(N'2019-03-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Via Ludovico il Moro 22', 110, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10951, N'RICSU', CAST(N'2019-03-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Starenweg 5', 482.9, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10952, N'ALFKI', CAST(N'2019-03-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Obere Str. 57', 491.2, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10953, N'AROUT', CAST(N'2019-03-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Brook Farm Stratford St. Mary', 4675, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10954, N'LINOD', CAST(N'2019-03-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Ave. 5 de Mayo Porlamar', 1902.1, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10955, N'FOLKO', CAST(N'2019-03-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Åkergatan 24', 93, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10956, N'BLAUS', CAST(N'2019-03-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Forsterstr. 57', 677, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10957, N'HILAA', CAST(N'2019-03-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 22 con Ave. Carlos Soublette #8-35', 1762.7, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10958, N'OCEAN', CAST(N'2019-03-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Ing. Gustavo Moncada 8585 Piso 20-A', 180, -1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10959, N'GOURL', CAST(N'2019-03-18T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Brasil, 442', 155, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10960, N'HILAA', CAST(N'2019-03-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 22 con Ave. Carlos Soublette #8-35', 276.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10961, N'QUEEN', CAST(N'2019-03-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Alameda dos Canàrios, 891', 1122, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10962, N'QUICK', CAST(N'2019-03-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 3584, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10963, N'FURIB', CAST(N'2019-03-19T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Jardim das rosas n. 32', 68, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10964, N'SPECD', CAST(N'2019-03-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'25, rue Lauriston', 2052.5, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10965, N'OLDWO', CAST(N'2019-03-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2743 Bering St.', 848, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10966, N'CHOPS', CAST(N'2019-03-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Hauptstr. 31', 1255.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10967, N'TOMSP', CAST(N'2019-03-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Luisenstr. 48', 910.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10968, N'ERNSH', CAST(N'2019-03-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 1408, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10969, N'COMMI', CAST(N'2019-03-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. dos Lusíadas, 23', 108, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10970, N'BOLID', CAST(N'2019-03-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'C/ Araquil, 67', 280, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10971, N'FRANR', CAST(N'2019-03-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'54, rue Royale', 1733.0600000000002, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10972, N'LACOR', CAST(N'2019-03-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'67, avenue de l''Europe', 251.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10973, N'LACOR', CAST(N'2019-03-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'67, avenue de l''Europe', 291.55, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10974, N'SPLIR', CAST(N'2019-03-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'P.O. Box 555', 439, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10975, N'BOTTM', CAST(N'2019-03-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'23 Tsawassen Blvd.', 717.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10976, N'HILAA', CAST(N'2019-03-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 22 con Ave. Carlos Soublette #8-35', 912, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10977, N'FOLKO', CAST(N'2019-03-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Åkergatan 24', 2233, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10978, N'MAISD', CAST(N'2019-03-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rue Joseph-Bens 532', 1500.7, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10979, N'ERNSH', CAST(N'2019-03-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 4813.5, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10980, N'FOLKO', CAST(N'2019-03-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Åkergatan 24', 310, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10981, N'HANAR', CAST(N'2019-03-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Paço, 67', 15810, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10982, N'BOTTM', CAST(N'2019-03-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'23 Tsawassen Blvd.', 1014, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10983, N'SAVEA', CAST(N'2019-03-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 796.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10984, N'SAVEA', CAST(N'2019-03-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 1809.75, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10985, N'HUNGO', CAST(N'2019-03-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'8 Johnstown Road', 2248.2, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10986, N'OCEAN', CAST(N'2019-03-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Ing. Gustavo Moncada 8585 Piso 20-A', 1590, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10987, N'EASTC', CAST(N'2019-03-31T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'35 King George', 2076, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10988, N'RATTC', CAST(N'2019-03-31T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2817 Milton Dr.', 3772, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10989, N'QUEDE', CAST(N'2019-03-31T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua da Panificadora, 12', 1038.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10990, N'ERNSH', CAST(N'2019-04-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 4931, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10991, N'QUICK', CAST(N'2019-04-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 2870, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10992, N'THEBI', CAST(N'2019-04-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'89 Jefferson Way Suite 2', 0, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10993, N'FOLKO', CAST(N'2019-04-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Åkergatan 24', 6527.25, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10994, N'VAFFE', CAST(N'2019-04-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Smagsloget 45', 990, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10995, N'PERIC', CAST(N'2019-04-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Calle Dr. Jorge Cash 321', 1196, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10996, N'QUICK', CAST(N'2019-04-02T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 0, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10997, N'LILAS', CAST(N'2019-04-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 1980, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10998, N'WOLZA', CAST(N'2019-04-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'ul. Filtrowa 68', 686, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (10999, N'OTTIK', CAST(N'2019-04-03T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Mehrheimerstr. 369', 1261, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11000, N'RATTC', CAST(N'2019-04-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2817 Milton Dr.', 1075, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11001, N'FOLKO', CAST(N'2019-04-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Åkergatan 24', 2769, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11002, N'SAVEA', CAST(N'2019-04-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 1566, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11003, N'THECR', CAST(N'2019-04-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'55 Grizzly Peak Rd.', 326, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11004, N'MAISD', CAST(N'2019-04-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rue Joseph-Bens 532', 295.38, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11005, N'WILMK', CAST(N'2019-04-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Keskuskatu 45', 586, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11006, N'GREAL', CAST(N'2019-04-07T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2732 Baker Blvd.', 391.58, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11007, N'PRINI', CAST(N'2019-04-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Estrada da saúde n. 58', 2437.9, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11008, N'ERNSH', CAST(N'2019-04-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 4903.5, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11009, N'GODOS', CAST(N'2019-04-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'C/ Romero, 33', 702, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11010, N'REGGC', CAST(N'2019-04-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Strada Provinciale 124', 645, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11011, N'ALFKI', CAST(N'2019-04-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Obere Str. 57', 960, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11012, N'FRANK', CAST(N'2019-04-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Berliner Platz 43', 2974, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11013, N'ROMEY', CAST(N'2019-04-09T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Gran Vía, 1', 305, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11014, N'LINOD', CAST(N'2019-04-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Ave. 5 de Mayo Porlamar', 270.2, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11015, N'SANTG', CAST(N'2019-04-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Erling Skakkes gate 78', 622.35, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11016, N'AROUT', CAST(N'2019-04-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Brook Farm Stratford St. Mary', 491.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11017, N'ERNSH', CAST(N'2019-04-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 6750, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11018, N'LONEP', CAST(N'2019-04-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'89 Chiaroscuro Rd.', 1575, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11019, N'RANCH', CAST(N'2019-04-13T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. del Libertador 900', 76, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11020, N'OTTIK', CAST(N'2019-04-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Mehrheimerstr. 369', 744, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11021, N'QUICK', CAST(N'2019-04-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Taucherstraße 10', 5723.49, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11022, N'HANAR', CAST(N'2019-04-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Paço, 67', 1402, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11023, N'BSBEV', CAST(N'2019-04-14T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Fauntleroy Circus', 1500, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11024, N'EASTC', CAST(N'2019-04-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'35 King George', 1966.81, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11025, N'WARTH', CAST(N'2019-04-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Torikatu 38', 300, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11026, N'FRANS', CAST(N'2019-04-15T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Via Monte Bianco 34', 1030, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11027, N'BOTTM', CAST(N'2019-04-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'23 Tsawassen Blvd.', 1170.3, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11028, N'KOENE', CAST(N'2019-04-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Maubelstr. 90', 2160, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11029, N'CHOPS', CAST(N'2019-04-16T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Hauptstr. 31', 1286.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11030, N'SAVEA', CAST(N'2019-04-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 14827.400000000002, 3, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11031, N'SAVEA', CAST(N'2019-04-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 2393.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11032, N'WHITC', CAST(N'2019-04-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1029 - 12th Ave. S.', 8902.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11033, N'RICSU', CAST(N'2019-04-17T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Starenweg 5', 3592, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11034, N'OLDWO', CAST(N'2019-04-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2743 Bering St.', 554.4, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11035, N'SUPRD', CAST(N'2019-04-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Boulevard Tirou, 255', 1334.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11036, N'DRACD', CAST(N'2019-04-20T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Walserweg 21', 1692, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11037, N'GODOS', CAST(N'2019-04-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'C/ Romero, 33', 60, 1, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11038, N'SUPRD', CAST(N'2019-04-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Boulevard Tirou, 255', 751, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11039, N'LINOD', CAST(N'2019-04-21T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Ave. 5 de Mayo Porlamar', 3090, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11040, N'GREAL', CAST(N'2019-04-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2732 Baker Blvd.', 200, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11041, N'CHOPS', CAST(N'2019-04-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Hauptstr. 31', 1887, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11042, N'COMMI', CAST(N'2019-04-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. dos Lusíadas, 23', 405.75, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11043, N'SPECD', CAST(N'2019-04-22T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'25, rue Lauriston', 0, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11044, N'WOLZA', CAST(N'2019-04-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'ul. Filtrowa 68', 591.59999999999991, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11045, N'BOTTM', CAST(N'2019-04-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'23 Tsawassen Blvd.', 1309.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11046, N'WANDK', CAST(N'2019-04-23T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Adenauerallee 900', 1564, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11047, N'EASTC', CAST(N'2019-04-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'35 King George', 450, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11048, N'BOTTM', CAST(N'2019-04-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'23 Tsawassen Blvd.', 525, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11049, N'GOURL', CAST(N'2019-04-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Brasil, 442', 342, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11050, N'FOLKO', CAST(N'2019-04-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Åkergatan 24', 900, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11051, N'LAMAI', CAST(N'2019-04-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1 rue Alsace-Lorraine', 45, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11052, N'HANAR', CAST(N'2019-04-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Paço, 67', 1665, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11053, N'PICCO', CAST(N'2019-04-27T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Geislweg 14', 3658.75, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11054, N'CACTU', CAST(N'2019-04-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Cerrito 333', 305, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11055, N'HILAA', CAST(N'2019-04-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 22 con Ave. Carlos Soublette #8-35', 1727.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11056, N'EASTC', CAST(N'2019-04-28T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'35 King George', 3740, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11057, N'NORTS', CAST(N'2019-04-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'South House 300 Queensbridge', 45, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11058, N'BLAUS', CAST(N'2019-04-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Forsterstr. 57', 858, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11059, N'RICAR', CAST(N'2019-04-29T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Av. Copacabana, 267', 1838, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11060, N'FRANS', CAST(N'2019-04-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Via Monte Bianco 34', 266, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11061, N'GREAL', CAST(N'2019-04-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2732 Baker Blvd.', 510, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11062, N'REGGC', CAST(N'2019-04-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Strada Provinciale 124', 508, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11063, N'HUNGO', CAST(N'2019-04-30T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'8 Johnstown Road', 1445.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11064, N'SAVEA', CAST(N'2019-05-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'187 Suffolk Ln.', 4722.3, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11065, N'LILAS', CAST(N'2019-05-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 252.56, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11066, N'WHITC', CAST(N'2019-05-01T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'1029 - 12th Ave. S.', 928.75, 2, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11067, N'DRACD', CAST(N'2019-05-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Walserweg 21', 86.850000000000023, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11068, N'QUEEN', CAST(N'2019-05-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Alameda dos Canàrios, 891', 2384.8, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11069, N'TORTU', CAST(N'2019-05-04T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Avda. Azteca 123', 360, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11070, N'LEHMS', CAST(N'2019-05-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Magazinweg 7', 1873.5, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11071, N'LILAS', CAST(N'2019-05-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 510, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11072, N'ERNSH', CAST(N'2019-05-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Kirchgasse 6', 5218, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11073, N'PERIC', CAST(N'2019-05-05T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Calle Dr. Jorge Cash 321', 90, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11074, N'SIMOB', CAST(N'2019-05-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Vinbæltet 34', 244.3, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11075, N'RICSU', CAST(N'2019-05-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Starenweg 5', 586, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11076, N'BONAP', CAST(N'2019-05-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'12, rue des Bouchers', 1057, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11077, N'RATTC', CAST(N'2019-05-06T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'2817 Milton Dr.', 1374.6, 4, NULL)
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11196, N'nghiemn', CAST(N'2020-08-08T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Paço, 67', 563.8, 4, N'')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11197, N'nghiemn', CAST(N'2020-08-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Shipping Address may not be empty', 4.5, 4, N'Shipping Address may not be empty')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11198, N'nghiemn', CAST(N'2020-08-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Shipping Address may not be empty', 23.5, 4, N'')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11199, N'nghiemn', CAST(N'2020-08-10T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Paço, 67', 195.87, 4, N'')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11201, N'NghiemN', CAST(N'2021-01-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Paço, 67', 50.75, 0, N'Rua do Paço, 67')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11202, N'NghiemN', CAST(N'2021-01-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Paço, 67', 0, -1, N'Rua do Paço, 67')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11203, N'NghiemN', CAST(N'2021-01-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Rua do Paço, 67', 0, 0, N'Rua do Paço, 67')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (11204, N'NghiemN', CAST(N'2021-01-24T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Shipping Address:', 98.14500000000001, -1, N'Shipping Address:')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21221, N'nghiemn', CAST(N'2021-09-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'	Singaporean Hokkien Fried Mee', 112.4, 0, N'	Singaporean Hokkien Fried Mee')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21222, N'nghiemn', CAST(N'2021-09-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'Singaporean Hokkien Fried Mee', 112.4, 0, N'Singaporean Hokkien Fried Mee')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21224, N'nghiemn', CAST(N'2021-09-25T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'', 229.1, 0, N'')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21226, N'nghiemn', CAST(N'2021-09-26T00:00:00.000' AS DateTime), N'Nguyễn Văn Tèo', N'913745789', N'', 358.9, -1, N'')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21230, N'user4', CAST(N'2021-12-10T09:35:44.023' AS DateTime), N'user10', N'0913745789', N'4/32 Lưu Chí Hiếu', 85, -1, N' Provide Order Information!')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21231, N'user4', CAST(N'2021-12-10T10:40:37.117' AS DateTime), N'user10', N'0913745789', N'4/32 Lưu Chí Hiếu', 159.75, 0, N'Grandma''s Boysenberry Spread')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21232, N'user4', CAST(N'2021-12-10T11:07:25.507' AS DateTime), N'user10', N'0913745789', N'4/32 Lưu Chí Hiếu', 156.6, 0, N'Notes')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21233, N'user4', CAST(N'2021-12-10T11:20:57.337' AS DateTime), N'user10', N'0913745789', N'4/32 Lưu Chí Hiếu', 34.2, 0, N'')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21234, N'user4', CAST(N'2021-12-10T00:00:00.000' AS DateTime), N'user10', N'0913745789', N'4/32 Lưu Chí Hiếu', 309.9, 1, N'')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21235, N'user4', CAST(N'2021-12-10T00:00:00.000' AS DateTime), N'user10', N'0913745789', N'4/32 Lưu Chí Hiếu', 147.62, 4, N'Notes')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21238, N'user4', CAST(N'2021-12-10T00:00:00.000' AS DateTime), N'Nguyễn Văn User 10', N'0913745789', N'4/32 Lưu Chí Hiếu', 668.61, 2, N' Notes')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21239, N'user4', CAST(N'2021-12-10T00:00:00.000' AS DateTime), N'Nguyễn Văn User 10', N'0913745789', N'4/32 Lưu Chí Hiếu', 898.4, 1, N' Provide Order Information!')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21240, N'user4', CAST(N'2021-12-10T00:00:00.000' AS DateTime), N'Nguyễn Văn User 10', N'0913745789', N'4/32 Lưu Chí Hiếu', 490.98, 4, N' Provide Order Information!')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21241, N'user4', CAST(N'2021-12-11T23:41:26.693' AS DateTime), N'Nguyễn Văn User 10', N'0913745789', N'4/32 Lưu Chí Hiếu', 655.5, 0, N' Provide Order Information!')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21242, N'user4', CAST(N'2021-12-13T22:24:41.680' AS DateTime), N'Nguyễn Văn User 10', N'0913745789', N'4/32 Lưu Chí Hiếu', 50.75, 0, N'')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21243, N'user4', CAST(N'2021-12-13T22:25:29.840' AS DateTime), N'Nguyễn Văn User 10', N'0913745789', N'4/32 Lưu Chí Hiếu', 50.75, 0, N'')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21244, N'user1', CAST(N'2022-01-06T00:00:00.000' AS DateTime), N'Nguyễn Văn User 1', N'913745789', N'4/32 Lưu Chí Hiếu', 47.08, 0, N'Notes')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21245, N'user1', CAST(N'2022-01-06T00:00:00.000' AS DateTime), N'Nguyễn Văn User 1', N'913745789', N'4/32 Lưu Chí Hiếu', 50.75, 0, N'Notes')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21246, N'user1', CAST(N'2022-01-06T00:00:00.000' AS DateTime), N'Nguyễn Văn User 1', N'913745789', N'4/32 Lưu Chí Hiếu', 91.5, -1, N'Công cha như núi thái sơn')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21247, N'user1', CAST(N'2022-01-06T00:00:00.000' AS DateTime), N'Nguyễn Văn User 1', N'913745789', N'4/32 Lưu Chí Hiếu', 236.85, 0, N'Nguyễn Văn User 1')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21248, N'user1', CAST(N'2022-01-06T00:00:00.000' AS DateTime), N'Nguyễn Văn User 1', N'913745789', N'4/32 Lưu Chí Hiếu', 217.2, 0, N'Notes')
GO
INSERT [dbo].[Orders] ([Id], [Username], [OrderDate], [Recipient], [Mobile], [Address], [Amount], [StatusId], [Notes]) VALUES (21249, N'user1', CAST(N'2022-01-10T00:00:00.000' AS DateTime), N'Nguyễn Văn User 1', N'913745789', N'4/32 Lưu Chí Hiếu', 62.25, 0, N'Notes')
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1001, N'Laptop gaming Acer Predator Helios 300 PH315 55 76KG', N'2001.jpg', 2500, 0.15, 190, CAST(N'1980-03-29' AS Date), 1000, N'<div style="text-align: justify;"><b><i><font color="#ff0000">EmEditor </font></i></b>uses JavaScript or VBScript for its macro language, so those who are <b><font color="#0000ff">familiar </font></b>with HTML or&nbsp;<img src="https://i.imgur.com/TDZoV3w.gif" width="15">&nbsp;<font color="#ff0000" style=""><i style=""><b>Windows </b></i></font>scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, <u><i><font color="#009900">EmEditor can record keystrokes</font></i></u>, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors</div>', 0, 26, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1002, N'Laptop gaming Acer Predator Helios 300 PH315 54 99S6', N'2002.jpg', 1700, 0, 19, CAST(N'1982-12-18' AS Date), 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 16, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1003, N'Laptop Gaming Asus ROG Strix SCAR 17 G733ZX LL016W', N'2003.jpg', 4999, 0, 10, CAST(N'1973-06-14' AS Date), 1001, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1, 10, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1004, N'Laptop Gaming ROG Zephyrus M16 GU603ZW K8021W', N'2004.jpg', 5999, 0, 22, CAST(N'1976-03-10' AS Date), 1001, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 21, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1005, N'Laptop Gaming HP Omen 16 b0127TX 4Y0W7PA', N'3005.jpg', 2500, 0, 21, CAST(N'1978-12-06' AS Date), 1002, N'<br>', 1, 16, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1006, N'Laptop gaming Asus ROG Strix SCAR 15 G533ZW LN133W''s Boysenberry Spread', N'2006.jpg', 3999, 0.25, 25, CAST(N'1981-09-03' AS Date), 1001, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 21, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1007, N'Laptop gaming MSI Raider GE76 12UHS 480VN', N'2007.jpg', 6999, 0.2, 30, CAST(N'1983-03-13' AS Date), 1006, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 4, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1008, N'Laptop Gaming ROG Zephyrus M16 GU603ZW K8021W', N'2008.jpg', 3599, 0, 40, CAST(N'1972-02-26' AS Date), 1001, NULL, 0, 22, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1009, N'Laptop LG Gram 2021 17Z90P-G.AH78A5', N'2009.jpg', 2399, 0, 97, CAST(N'1985-12-10' AS Date), 1005, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 8, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1010, N'Laptop gaming Lenovo Legion 7 16ACHG6 82N600NSVN', N'2010.jpg', 3999, 0, 31, CAST(N'1994-03-23' AS Date), 1007, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 0, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1011, N'Laptop Gaming Dell G15 5511 70266676', N'2011.jpg', 1299, 0, 21, CAST(N'1985-11-28' AS Date), 1003, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 11, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1012, N'Laptop gaming Dell G15 5515 P105F004 70266674', N'2012.jpg', 1499, 0, 38, CAST(N'1988-08-27' AS Date), 1003, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1, 13, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1013, N'Laptop gaming Lenovo Legion 7 16ACHG6 82N600NUVN', N'2013.jpg', 2549, 0, 6, CAST(N'2002-07-01' AS Date), 1007, NULL, 0, 2, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1014, N'Laptop gaming MSI Stealth GS77 12UH 075VN', N'2014.jpg', 4399, 0, 23, CAST(N'2002-06-24' AS Date), 1006, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1, 17, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1015, N'Laptop Gaming Asus ROG Zephyrus G15 GA503QC HN074T', N'2015.jpg', 1599, 0, 15, CAST(N'1991-05-04' AS Date), 1001, NULL, 0, 6, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1016, N'Laptop Gaming HP VICTUS 16 D0199TX 4R0U1PA', N'2016.jpg', 1499, 0, 17, CAST(N'2021-11-09' AS Date), 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 36, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1017, N'Laptop LG Gram 2021 17Z90P-G.AH76A5', N'2017.jpg', 2249, 0, 39, CAST(N'2007-12-15' AS Date), 1005, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1, 36, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1018, N'Laptop gaming Legion 5 Pro 16ITH6H 82JD00BCVN', N'2018.jpg', 2049, 0.1, 62, CAST(N'2011-04-13' AS Date), 1007, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1, 2, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1019, N'Laptop Gaming HP VICTUS 16 d0292TX 5Z9R4PA', N'2019.jpg', 1099, 0.1, 9, CAST(N'2005-02-02' AS Date), 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 15, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1020, N'Laptop Gaming HP VICTUS 16 d0291TX 5Z9R2PA', N'2020.jpg', 1399, 0, 81, CAST(N'2007-11-01' AS Date), 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 5, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1021, N'Laptop Gaming HP VICTUS 16 d0198TX 4R0U0PA', N'2021.jpg', 1599, 0, 10, CAST(N'2010-07-29' AS Date), 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 3, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1022, N'MacBook Air M1 8GPU 8GB 512GB - Gold', N'2022.jpg', 1699, 0, 21, CAST(N'2008-12-01' AS Date), 1004, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1, 78, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1023, N'MacBook Air M1 7GPU 16GB 256GB - Gold', N'2023.jpg', 1499, 0, 9, CAST(N'2011-08-31' AS Date), 1004, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1, 10, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1024, N'Laptop Gaming Acer Nitro 5 Eagle AN515 57 720A', N'2024.jpg', 1299, 0, 4, CAST(N'2008-03-13' AS Date), 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 14, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1025, N'Laptop HP Pavilion 14 dv0534TU 4P5G3PA', N'2025.jpg', 2099, 0, 14, CAST(N'2011-07-20' AS Date), 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 8, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1026, N'Laptop HP ProBook 450 G8 614K3PA', N'2026.jpg', 999, 0.05, 31, CAST(N'2009-04-17' AS Date), 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1, 12, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1027, N'Laptop HP Pavilion 14 dv0520TU 46L92PA', N'2027.jpg', 599, 0, 43, CAST(N'2007-01-14' AS Date), 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 3, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1028, N'Laptop Gaming MSI GE66 12UGS 405VN', N'2028.jpg', 3749, 0, 45, CAST(N'2011-01-14' AS Date), 1006, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1, 23, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1029, N'Laptop LG Gram 2021 16Z90P-G.AH75A5', N'2029.jpg', 2199, 0.05, 123, CAST(N'2010-12-21' AS Date), 1005, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 12, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1030, N'Laptop gaming Lenovo Legion 5 15ITH6H 82JH002WVN', N'2030.jpg', 1999, 0, 25, CAST(N'2011-05-14' AS Date), 1007, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 0, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1031, N'Laptop gaming Dell G15 5515 P105F004 70266675', N'2031.jpg', 1449, 0, 12, CAST(N'2010-10-30' AS Date), 1003, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 34, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1032, N'Laptop Gaming Dell Alienware M15 70262921', N'2032.jpg', 2749, 0, 32, CAST(N'2011-07-30' AS Date), 1003, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 5, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1033, N'Laptop Gaming Dell Alienware M15 R6 P109F001BBL', N'2033.jpg', 2849, 0.2, 2, CAST(N'2010-04-29' AS Date), 1003, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 2, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1034, N'Laptop gaming Acer Nitro 5 Eagle AN515 57 54MV', N'2034.jpg', 1100, 0, 14, CAST(N'2010-07-30' AS Date), 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1, 16, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1035, N'Laptop Gaming Acer Aspire 7 A715 42G R4XX', N'2035.jpg', 899, 0, 18, CAST(N'2011-04-25' AS Date), 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 8, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1036, N'Laptop gaming Legion S7 15ACH6 82K800DPVN', N'2036.jpg', 1949, 0, 19, CAST(N'1980-11-28' AS Date), 1007, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 1, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1037, N'Laptop Gaming Lenovo Legion 5 Pro 16ACH6H 82JQ00S7VN', N'2037.jpg', 1849, 0.05, 26, CAST(N'1983-08-31' AS Date), 1007, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 0, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1038, N'Laptop Acer Swift 3 Evo SF314 511 55QE', N'2038.jpg', 1100, 0.1, 263, CAST(N'1981-07-12' AS Date), 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 8, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1039, N'Laptop Acer Aspire 5 A514 54 59QK', N'2039.jpg', 799, 0, 18, CAST(N'1984-04-08' AS Date), 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 1, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1040, N'Laptop Gaming Lenovo Legion 5 15ITH6 82JH002VVN', N'2040.jpg', 1749, 0, 18, CAST(N'1976-12-08' AS Date), 1007, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 1, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1041, N'Laptop gaming Lenovo Legion 5 15ACH6H 82JU00YWVNA', N'2041.jpg', 1649, 0, 9, CAST(N'1979-09-10' AS Date), 1007, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 0, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1042, N'MacBook Air M1 8GPU 8GB 512GB - Grey', N'2042.jpg', 1549, 0.7, 14, CAST(N'1973-11-21' AS Date), 1004, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 28, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1043, N'Laptop Acer Aspire 3 A315 58 35AG', N'2043.jpg', 599, 0, 46, CAST(N'1980-03-20' AS Date), 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 1, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1044, N'Laptop Gaming Asus TUF Dash F15 FX516PM HN002W', N'2044.jpg', 1399, 0, 19, CAST(N'1970-10-25' AS Date), 1001, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 5, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1045, N'Laptop gaming Lenovo Legion 5 15ACH6H 82JU00DGVN', N'2045.jpg', 1599, 0, 9, CAST(N'1990-09-21' AS Date), 1007, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1, 1, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1046, N'Laptop Lenovo Legion 5 15ITH6 82JK007SVN', N'2046.jpg', 1549, 0.2, 12, CAST(N'1993-06-23' AS Date), 1007, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 0, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1047, N'Laptop HP Pavilion 14 dv0516TU 46L88PA', N'2047.jpg', 549, 0, 9, CAST(N'1981-11-25' AS Date), 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 1, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1048, N'Laptop HP Pavilion 15 EG0539TU 4P5G6PA', N'2048.jpg', 799, 0, 12, CAST(N'1984-08-24' AS Date), 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 0, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1049, N'Laptop Gaming HP VICTUS 16 d0292TX 5Z9R3PA', N'2049.jpg', 1249, 0, 20, CAST(N'1987-05-23' AS Date), 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 5, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1050, N'Laptop Gaming HP VICTUS 16 D0199TX 4R0U1PA', N'2050.jpg', 1349, 0.08, 16, CAST(N'1990-02-17' AS Date), 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 2, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1051, N'Laptop Gaming MSI Stealth GS66 12UGS 227VN', N'2051.jpg', 2749, 0.15, 53, CAST(N'2004-05-22' AS Date), 1006, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 7, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1052, N'MacBook Air M1 8GPU 8GB 512GB - Silver', N'2052.jpg', 1549, 0, 7, CAST(N'2001-05-20' AS Date), 1004, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 25, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1053, N'Laptop LG Gram 2021 14Z90P-G.AH75A5 ', N'2053.jpg', 1999, 0, 32, CAST(N'2007-01-06' AS Date), 1005, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 3, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1054, N'Laptop LG Gram 2021 16Z90P-G.AH73A5', N'2054.jpg', 1999, 0.3, 7, CAST(N'2009-10-07' AS Date), 1005, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1, 7, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1055, N'Laptop LG Gram 2021 17ZD90P-G.AX71A5', N'2055.jpg', 1799, 0, 24, CAST(N'2007-07-08' AS Date), 1005, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 6, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1056, N'MacBook Air M1 7GPU 16GB 512GB - Silver', N'2056.jpg', 1699, 0, 38, CAST(N'2007-05-18' AS Date), 1004, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 9, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1057, N'MacBook Air M1 7GPU 16GB 512GB - Grey', N'2057.jpg', 1749, 0.09, 19, CAST(N'2010-02-16' AS Date), 1004, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 22, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1058, N'Laptop Asus TUF Gaming FX706HC HX105W', N'2058.jpg', 1799, 0, 13, CAST(N'2011-07-26' AS Date), 1001, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 0, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1059, N'Laptop gaming Dell Alienware M15 R6 70272633', N'2059.jpg', 2999, 0, 55, CAST(N'2007-09-22' AS Date), 1003, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 5, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1060, N'Laptop Dell XPS 17 9700 XPS7I7001W1 Silver', N'2060.jpg', 3699, 0, 34, CAST(N'2010-06-20' AS Date), 1003, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 4, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1061, N'Laptop Asus Vivobook Pro M3401QA KM006W', N'2061.jpg', 899, 0, 28, CAST(N'2007-05-29' AS Date), 1001, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 0, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1062, N'Laptop Gaming HP VICTUS 16 d0292TX 5Z9R3PA', N'2062.jpg', 1249, 0, 49, CAST(N'2008-01-21' AS Date), 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 1, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1063, N'Laptop ASUS VivoBook Pro 16X OLED M7600QC L2077W', N'2063.jpg', 1499, 0.6, 43, CAST(N'2007-11-21' AS Date), 1001, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 8, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1064, N'MacBook Air M1 7GPU 16GB 512GB - Gold', N'2064.jpg', 1799, 0, 33, CAST(N'2009-05-15' AS Date), 1004, N'<div style="text-align: justify;">EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors</div>', 0, 38, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1065, N'Laptop Asus Zenbook UX425EA KI883W', N'2065.jpg', 799, 0, 21, CAST(N'2008-05-15' AS Date), 1001, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 0, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1066, N'Laptop ASUS Vivobook Flip TP470EA EC347W', N'2066.jpg', 999, 0, 17, CAST(N'2011-02-10' AS Date), 1001, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1, 1, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1067, N'Laptop Acer Aspire 3 A315 57G 32QP', N'2067.jpg', 499, 0, 14, CAST(N'2010-12-05' AS Date), 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1, 2, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1068, N'Laptop HP 15S du3593tu 63P89PA', N'2068.jpg', 749, 0, 12, CAST(N'2009-07-08' AS Date), 1002, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 3, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1069, N'Laptop Dell Inspiron 5310 P145G001 70273577', N'2069.jpg', 1299, 0.4, 36, CAST(N'2011-03-09' AS Date), 1003, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 6, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1070, N'Laptop Acer Aspire 3 A315 58 59LY', N'2070.jpg', 699, 0.45, 15, CAST(N'2009-02-21' AS Date), 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 1, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1071, N'Laptop Dell Inspiron 5410 N4I5547W1 Silver', N'2071.jpg', 1099, 0, 21, CAST(N'1980-09-04' AS Date), 1003, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 1, 1, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1072, N'Laptop Dell Vostro 3400 V4I7015W1 Black', N'2072.jpg', 1299, 0, 34, CAST(N'1983-06-03' AS Date), 1003, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 2, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1073, N'Laptop Lenovo IdeaPad Gaming 3 15ACH6 82K2008VVN', N'2073.jpg', 1499, 0.15, 15, CAST(N'1982-12-03' AS Date), 1007, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 1, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1074, N'Laptop MSI Creator Z16 A11UET 218VN', N'2074.jpg', 1599, 0, 10, CAST(N'1982-09-27' AS Date), 1006, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 2, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1075, N'Laptop Gaming Acer Nitro 5 AN515 45 R6EV', N'2075.jpg', 999, 0, 7, CAST(N'1982-10-31' AS Date), 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 2, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1076, N'Laptop Acer Aspire 5 A514 54 59QK', N'2076.jpg', 999, 0, 18, CAST(N'1970-07-28' AS Date), 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 1, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1077, N'Laptop Asus X515EA BQ1006W', N'2077.jpg', 499, 0, 13, CAST(N'1976-04-04' AS Date), 1001, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 2, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1081, N'Laptop gaming Acer Nitro 5 AN515 45 R86D', N'2078.jpg', 1499, 0, 19, CAST(N'1984-04-04' AS Date), 1000, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 1, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [Image], [UnitPrice], [Discount], [Quantity], [ProductDate], [CategoryId], [Description], [Special], [LikeCount], [Available]) VALUES (1083, N'Laptop LG Gram 2021 14ZD90P-G.AX51A5 ', N'2079.jpg', 1499, 0, 97, CAST(N'1989-07-23' AS Date), 1005, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', 0, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'ADMIN', N'Quản trị')
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'STAFF', N'Nhân viên')
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'SUPER', N'Giám sát')
GO
ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Customers_Photo]  DEFAULT (N'Photo.gif') FOR [Photo]
GO
ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Customers_Active]  DEFAULT ((0)) FOR [Activated]
GO
ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Accounts_Mobile]  DEFAULT ((913745789)) FOR [Mobile]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_OrderDetails_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_OrderDate]  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Recipient]  DEFAULT (N'Nguyễn Văn Tèo') FOR [Recipient]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Mobile]  DEFAULT ((913745789)) FOR [Mobile]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__Amount__381A47C8]  DEFAULT ((0)) FOR [Amount]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Status]  DEFAULT ((0)) FOR [StatusId]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Image]  DEFAULT (N'Product.gif') FOR [Image]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ProductDate]  DEFAULT (getdate()) FOR [ProductDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Available]  DEFAULT ((1)) FOR [Special]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ClickCount]  DEFAULT ((0)) FOR [LikeCount]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Available_1]  DEFAULT ((1)) FOR [Available]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Account]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Roles]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Statuses] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK3ess0s7i9qs6sim1pf9kxhkpq] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK3ess0s7i9qs6sim1pf9kxhkpq]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Fullname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Photo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đã kích hoạt chưa?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Activated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên loại hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tiếng Việt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'NameVn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chi tiết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'OrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá bán' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'UnitPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng mua' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tỷ lệ giảm giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ nhận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tổng số tiền phải trả' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái đơn hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'StatusId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ghi chú hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'UnitPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tỷ lệ giảm giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng tồn kho' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày nhập hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ProductDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đang kinh doanh ?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Special'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượt xem' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'LikeCount'
GO
