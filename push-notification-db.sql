/****** Object:  Table [dbo].[Users]    Script Date: 2/13/2022 1:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](200) NULL,
	[LastName] [nvarchar](200) NULL,
	[Username] [nvarchar](200) NULL,
	[Password] [nvarchar](200) NULL,
	[Created] [datetime] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTokens]    Script Date: 2/13/2022 1:06:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[FToken] [nvarchar](max) NULL,
	[DeviceToken] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Password], [Created]) VALUES (14, N'Sanu', N'Kumar', N'sanu', N'123456', CAST(N'2022-02-12T19:06:03.187' AS DateTime))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Password], [Created]) VALUES (15, N'Pranav', N'Kumar', N'pranav', N'123456', CAST(N'2022-02-12T19:06:25.657' AS DateTime))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Username], [Password], [Created]) VALUES (16, N'Loveleen', N'Kaur', N'loveleen', N'123456', CAST(N'2022-02-12T19:08:22.160' AS DateTime))
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[UserTokens]  WITH CHECK ADD  CONSTRAINT [FK_UserTokens_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserTokens] CHECK CONSTRAINT [FK_UserTokens_Users]
GO
