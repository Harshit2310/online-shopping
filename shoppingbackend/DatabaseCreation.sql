CREATE DATABASE [webMall]
GO
USE [webMall]
GO
CREATE TABLE [dbo].[address](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[address_line_one] [varchar](100) NULL,
	[address_line_two] [varchar](100) NULL,
	[city] [varchar](20) NULL,
	[state] [varchar](20) NULL,
	[country] [varchar](20) NULL,
	[postal_code] [varchar](20) NULL,
	[is_billing] [bit] NULL,
	[is_shipping] [bit] NULL,
 CONSTRAINT [PK_address] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cart]    Script Date: 2/8/2018 6:54:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[grand_total] [decimal](10, 2) NULL,
	[cart_lines] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cart_line]    Script Date: 2/8/2018 6:54:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart_line](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cart_id] [int] NULL,
	[total] [decimal](10, 2) NULL,
	[product_id] [int] NULL,
	[product_count] [int] NULL,
	[buying_price] [decimal](10, 2) NULL,
	[is_available] [bit] NULL,
 CONSTRAINT [PK_cart_line] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[category]    Script Date: 2/8/2018 6:54:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[description] [varchar](255) NULL,
	[image_url] [varchar](50) NULL,
	[is_active] [bit] NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 2/8/2018 6:54:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[order_total] [decimal](10, 2) NULL,
	[order_count] [int] NULL,
	[shipping_id] [int] NULL,
	[billing_id] [int] NULL,
	[order_date] [date] NULL,
 CONSTRAINT [PK_order_detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[order_item]    Script Date: 2/8/2018 6:54:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_item](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[total] [decimal](10, 2) NULL,
	[product_id] [int] NULL,
	[product_count] [int] NULL,
	[buying_price] [decimal](10, 2) NULL,
 CONSTRAINT [PK_order_item] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product]    Script Date: 2/8/2018 6:54:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[brand] [varchar](50) NULL,
	[description] [varchar](255) NULL,
	[unit_price] [decimal](10, 2) NULL,
	[quantity] [int] NULL,
	[is_active] [bit] NULL,
	[category_id] [int] NULL,
	[supplier_id] [int] NULL,
	[purchases] [int] NULL,
	[views] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_detail]    Script Date: 2/8/2018 6:54:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[role] [varchar](50) NULL,
	[enabled] [bit] NULL,
	[password] [varchar](60) NULL,
	[email] [varchar](50) NULL,
	[contact_number] [varchar](15) NULL,
 CONSTRAINT [PK_user_detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF_product_purchases]  DEFAULT ((0)) FOR [purchases]
GO
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF_product_views]  DEFAULT ((0)) FOR [views]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user_detail] ([id])
GO
ALTER TABLE [dbo].[cart_line]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD FOREIGN KEY([billing_id])
REFERENCES [dbo].[address] ([id])
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD FOREIGN KEY([shipping_id])
REFERENCES [dbo].[address] ([id])
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user_detail] ([id])
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user_detail] ([id])
GO
ALTER TABLE [dbo].[order_item]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[order_detail] ([id])
GO
ALTER TABLE [dbo].[order_item]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([supplier_id])
REFERENCES [dbo].[user_detail] ([id])
GO

