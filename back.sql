USE [Lighting]
GO
/****** Object:  Table [dbo].[Import_Info_ShareHolder]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Import_Info_ShareHolder](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NOT NULL,
	[titleENG] [nvarchar](max) NOT NULL,
	[detailsTitleTH] [nvarchar](max) NOT NULL,
	[detailsTitleENG] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_Import_Info_ShareHolder] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportInfo_ShareHolderData]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportInfo_ShareHolderData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image_name] [nvarchar](max) NULL,
	[image_name_ENG] [nvarchar](max) NULL,
	[use_status] [int] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_ImportInfo_ShareHolderData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_annual_Report]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_annual_Report](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[detailsTitleTH] [nvarchar](max) NULL,
	[detailsTitleENG] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_annual_Report] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_annual_ReportData]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_annual_ReportData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[year] [datetime2](7) NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[upload_image] [nvarchar](max) NULL,
	[upload_image_ENG] [nvarchar](max) NULL,
	[file_name] [nvarchar](max) NULL,
	[file_name_ENG] [nvarchar](max) NULL,
	[use_status] [int] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_annual_ReportData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_dividen]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_dividen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[detailsTitleTH] [nvarchar](max) NULL,
	[detailsTitleENG] [nvarchar](max) NULL,
	[detailsTH] [nvarchar](max) NULL,
	[detailsENG] [nvarchar](max) NULL,
	[securityTitleTH] [nvarchar](max) NULL,
	[securityTitleENG] [nvarchar](max) NULL,
	[dateOfBoardTitleTH] [nvarchar](max) NULL,
	[dateOfBoardTitleENG] [nvarchar](max) NULL,
	[dateMakingTitleTH] [nvarchar](max) NULL,
	[dateMakingTitleENG] [nvarchar](max) NULL,
	[paymentDateTitleTH] [nvarchar](max) NULL,
	[paymentDateTitleENG] [nvarchar](max) NULL,
	[dividenTypetitleTH] [nvarchar](max) NULL,
	[dividenTypetitleENG] [nvarchar](max) NULL,
	[amountTitleTH] [nvarchar](max) NULL,
	[amountTitleENG] [nvarchar](max) NULL,
	[earningDayTitleTH] [nvarchar](max) NULL,
	[earningDayTitleENG] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_dividen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_dividen_Data]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_dividen_Data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[dateOfBoard] [datetime2](7) NULL,
	[dateMaking] [datetime2](7) NULL,
	[paymentDate] [datetime2](7) NULL,
	[dividenTypeTitleTH] [nvarchar](max) NULL,
	[dividenTypeTitleENG] [nvarchar](max) NULL,
	[amount] [decimal](18, 2) NULL,
	[earningDayTitleTH] [nvarchar](max) NULL,
	[earningDayTitleENG] [nvarchar](max) NULL,
	[use_status] [int] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_dividen_Data] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_generalMeeting]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_generalMeeting](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[detailsTitleTH] [nvarchar](max) NULL,
	[detailsTitleENG] [nvarchar](max) NULL,
	[image_name] [nvarchar](max) NULL,
	[image_name_ENG] [nvarchar](max) NULL,
	[link] [nvarchar](max) NULL,
	[meetingTitleTH] [nvarchar](max) NULL,
	[meetingTitleENG] [nvarchar](max) NULL,
	[downloadTitleTH] [nvarchar](max) NULL,
	[downloadTitleENG] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_generalMeeting] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_generalMeeting_Data]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_generalMeeting_Data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[file_name] [nvarchar](max) NULL,
	[file_name_ENG] [nvarchar](max) NULL,
	[use_status] [int] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_generalMeeting_Data] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_cashFlow_statements]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_cashFlow_statements](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[amount] [decimal](18, 2) NULL,
	[percentProfit] [decimal](18, 2) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_cashFlow_statements] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_download_financial_statements]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_download_financial_statements](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[file_name] [nvarchar](max) NULL,
	[file_name_ENG] [nvarchar](max) NULL,
	[inputDate] [datetime2](7) NULL,
	[active_status] [int] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_download_financial_statements] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_financial_highlight]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_financial_highlight](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[detailsTitleTH] [nvarchar](max) NULL,
	[detailsTitleENG] [nvarchar](max) NULL,
	[profitTitleTH] [nvarchar](max) NULL,
	[profitTitleENG] [nvarchar](max) NULL,
	[date1TitleTH] [nvarchar](max) NULL,
	[date1TitleENG] [nvarchar](max) NULL,
	[ddate2TitleTH] [nvarchar](max) NULL,
	[date2TitleENG] [nvarchar](max) NULL,
	[ddate3TitleTH] [nvarchar](max) NULL,
	[date3TitleENG] [nvarchar](max) NULL,
	[detailsTH] [nvarchar](max) NULL,
	[detailsENG] [nvarchar](max) NULL,
	[image_name] [nvarchar](max) NULL,
	[image_name_ENG] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_financial_highlight] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_financial_highlight_Data]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_financial_highlight_Data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[profitTitleTH] [nvarchar](max) NULL,
	[profitTitleENG] [nvarchar](max) NULL,
	[amount1] [decimal](18, 2) NULL,
	[amount2] [decimal](18, 2) NULL,
	[amount3] [decimal](18, 2) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_financial_highlight_Data] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_financial_position]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_financial_position](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[active_status] [int] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_financial_position] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_financial_position_DataDetails]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_financial_position_DataDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[amount] [decimal](18, 2) NULL,
	[percent] [decimal](18, 2) NULL,
	[financialPosition_id] [int] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_financial_position_DataDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_Form]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_Form](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[detailsTitleTH] [nvarchar](max) NULL,
	[detailsTitleENG] [nvarchar](max) NULL,
	[nameTitleTH] [nvarchar](max) NULL,
	[nameTitleENG] [nvarchar](max) NULL,
	[yearTitleTH] [nvarchar](max) NULL,
	[yearTitleENG] [nvarchar](max) NULL,
	[dateConfrimTitleTH] [nvarchar](max) NULL,
	[dateConfrimTitleENG] [nvarchar](max) NULL,
	[detailsTH] [nvarchar](max) NULL,
	[detailsENG] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_Form] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_FormData]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_FormData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[year] [datetime2](7) NULL,
	[confrimDate] [datetime2](7) NULL,
	[file_name] [nvarchar](max) NULL,
	[file_name_ENG] [nvarchar](max) NULL,
	[active_status] [int] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_FormData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_important_financial]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_important_financial](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[detailsTitleTH] [nvarchar](max) NULL,
	[detailsTitleENG] [nvarchar](max) NULL,
	[financial_positionTitleTH] [nvarchar](max) NULL,
	[financial_positionTitleENG] [nvarchar](max) NULL,
	[profitLoseTitleTH] [nvarchar](max) NULL,
	[profitLoseTitleENG] [nvarchar](max) NULL,
	[Comprehensive_IncomeTitleTH] [nvarchar](max) NULL,
	[Comprehensive_IncomeTitleENG] [nvarchar](max) NULL,
	[cash_flowTitleTH] [nvarchar](max) NULL,
	[cash_flowTitleENG] [nvarchar](max) NULL,
	[download_financialTitleTH] [nvarchar](max) NULL,
	[download_financialTitleENG] [nvarchar](max) NULL,
	[listTitleTH] [nvarchar](max) NULL,
	[listTitleENG] [nvarchar](max) NULL,
	[amountTitleTH] [nvarchar](max) NULL,
	[amountTitleENG] [nvarchar](max) NULL,
	[percentTitleTH] [nvarchar](max) NULL,
	[percentTitleENG] [nvarchar](max) NULL,
	[dayTitleTH] [nvarchar](max) NULL,
	[dayTitleENG] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_important_financial] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_MDA]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_MDA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[detailsTitleTH] [nvarchar](max) NULL,
	[detailsTitleENG] [nvarchar](max) NULL,
	[dataTitleTH] [nvarchar](max) NULL,
	[dataTitleENG] [nvarchar](max) NULL,
	[nameTitleTH] [nvarchar](max) NULL,
	[nameTitleENG] [nvarchar](max) NULL,
	[downloadTitleTH] [nvarchar](max) NULL,
	[downloadTitleENG] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_MDA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_MDA_Data]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_MDA_Data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[detailsTitleTH] [nvarchar](max) NULL,
	[detailsTitleENG] [nvarchar](max) NULL,
	[image_name] [nvarchar](max) NULL,
	[image_name_ENG] [nvarchar](max) NULL,
	[active_status] [int] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_MDA_Data] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_MDA_DataDetails]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_MDA_DataDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[year] [datetime2](7) NULL,
	[file_name] [nvarchar](max) NULL,
	[file_name_ENG] [nvarchar](max) NULL,
	[active_status] [int] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_MDA_DataDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_presentation_doc]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_presentation_doc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[detailsTitleTH] [nvarchar](max) NULL,
	[detailsTitleENG] [nvarchar](max) NULL,
	[present_documentTitleTH] [nvarchar](max) NULL,
	[present_documentTitleENG] [nvarchar](max) NULL,
	[downloadTitleTH] [nvarchar](max) NULL,
	[downloadTitleENG] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_presentation_doc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_presentation_doc_Data]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_presentation_doc_Data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[file_name] [nvarchar](max) NULL,
	[file_name_ENG] [nvarchar](max) NULL,
	[document_date] [datetime2](7) NULL,
	[active_status] [int] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_presentation_doc_Data] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_presentation_webcast]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_presentation_webcast](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[detailsTitleTH] [nvarchar](max) NULL,
	[detailsTitleENG] [nvarchar](max) NULL,
	[activitytitleTH] [nvarchar](max) NULL,
	[activitytitleENG] [nvarchar](max) NULL,
	[webcastTitleTH] [nvarchar](max) NULL,
	[webcastTitleENG] [nvarchar](max) NULL,
	[downloadtitleTH] [nvarchar](max) NULL,
	[downloadtitleENG] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_presentation_webcast] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_presentation_webcast_Data]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_presentation_webcast_Data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[activity_date] [datetime2](7) NULL,
	[linkVideo] [nvarchar](max) NULL,
	[file_name] [nvarchar](max) NULL,
	[file_name_ENG] [nvarchar](max) NULL,
	[active_status] [int] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_presentation_webcast_Data] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_Profit_Lose]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_Profit_Lose](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[amount] [decimal](18, 2) NULL,
	[percentProfit] [decimal](18, 2) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_Profit_Lose] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_Profit_Lose_others]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_Profit_Lose_others](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[amount] [decimal](18, 2) NULL,
	[percentProfit] [decimal](18, 2) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_Profit_Lose_others] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_propose_agenda]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_propose_agenda](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[detailsTitleTH] [nvarchar](max) NULL,
	[detailsTitleENG] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_propose_agenda] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_propose_agenda_DataDetails]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_propose_agenda_DataDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[file_name] [nvarchar](max) NULL,
	[file_name_ENG] [nvarchar](max) NULL,
	[active_status] [int] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_propose_agenda_DataDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_prospectus]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_prospectus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_prospectus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_Report_Meeting]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_Report_Meeting](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[detailsTitleTH] [nvarchar](max) NULL,
	[detailsTitleENG] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_Report_Meeting] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_Report_Meeting_DataDetails]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_Report_Meeting_DataDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[file_name] [nvarchar](max) NULL,
	[file_name_ENG] [nvarchar](max) NULL,
	[active_status] [int] NULL,
	[year] [datetime2](7) NULL,
	[reportMeeting_id] [int] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_Report_Meeting_DataDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SH_IR_Report_MeetingData]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SH_IR_Report_MeetingData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titleTH] [nvarchar](max) NULL,
	[titleENG] [nvarchar](max) NULL,
	[year] [datetime2](7) NULL,
	[active_status] [int] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_SH_IR_Report_MeetingData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShareHolder]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShareHolder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TitleTH] [nvarchar](max) NULL,
	[TitleENG] [nvarchar](max) NULL,
	[detailsTitleTH] [nvarchar](max) NULL,
	[detailsTitleENG] [nvarchar](max) NULL,
	[detailsTH] [nvarchar](max) NULL,
	[detailsENG] [nvarchar](max) NULL,
	[nameTitleTH] [nvarchar](max) NULL,
	[nameTitleENG] [nvarchar](max) NULL,
	[amountTitleTH] [nvarchar](max) NULL,
	[amountTitleENG] [nvarchar](max) NULL,
	[percentTitleTH] [nvarchar](max) NULL,
	[percentTitleENG] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_ShareHolder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShareHolder_DataDetails]    Script Date: 6/1/2023 10:31:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShareHolder_DataDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[nameTH] [nvarchar](max) NULL,
	[nameENG] [nvarchar](max) NULL,
	[amount] [decimal](18, 2) NULL,
	[percentPerAmount] [decimal](18, 2) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
 CONSTRAINT [PK_ShareHolder_DataDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Import_Info_ShareHolder] ON 

INSERT [dbo].[Import_Info_ShareHolder] ([id], [titleTH], [titleENG], [detailsTitleTH], [detailsTitleENG], [created_at], [updated_at]) VALUES (1, N'ข้อมูลสำหรับผู้ถือหุ้น', N'ข้อมูลสำหรับผู้ถือหุ้น ENG', N'ข้อมูลที่สำคัญ', N'ข้อมูลที่สำคัญ ENG', CAST(N'2023-05-31T14:48:47.1462684' AS DateTime2), CAST(N'2023-05-31T14:48:47.1465365' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Import_Info_ShareHolder] OFF
GO
SET IDENTITY_INSERT [dbo].[ImportInfo_ShareHolderData] ON 

INSERT [dbo].[ImportInfo_ShareHolderData] ([id], [image_name], [image_name_ENG], [use_status], [created_at], [updated_at]) VALUES (1, N'638211395539080883.png', N'31_05_2023_14_19_13_.jpeg', 1, CAST(N'2023-05-31T14:19:13.9402585' AS DateTime2), CAST(N'2023-05-31T14:19:13.9404919' AS DateTime2))
INSERT [dbo].[ImportInfo_ShareHolderData] ([id], [image_name], [image_name_ENG], [use_status], [created_at], [updated_at]) VALUES (2, N'638211413406948083.png', N'31_05_2023_14_49_00_.png', 0, CAST(N'2023-05-31T14:49:00.7532206' AS DateTime2), CAST(N'2023-05-31T14:49:00.7533012' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ImportInfo_ShareHolderData] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_annual_Report] ON 

INSERT [dbo].[SH_annual_Report] ([id], [titleTH], [titleENG], [detailsTitleTH], [detailsTitleENG], [created_at], [updated_at]) VALUES (1, N'ข้อมูลสำหรับผู้ถือหุ้น', N'ข้อมูลสำหรับผู้ถือหุ้น', N'รายงานประจำปี / ONE REPORT ', N'รายงานประจำปี / ONE REPORT ENG', CAST(N'2023-05-31T15:55:38.3724066' AS DateTime2), CAST(N'2023-05-31T15:55:38.3732262' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_annual_Report] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_annual_ReportData] ON 

INSERT [dbo].[SH_annual_ReportData] ([id], [year], [titleTH], [titleENG], [upload_image], [upload_image_ENG], [file_name], [file_name_ENG], [use_status], [created_at], [updated_at]) VALUES (1, CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), N'AFE', N'AFETE', N'638211398685959942.png', N'31_05_2023_14_24_28_.png', N'638211398685998784.pdf', N'31_05_2023_14_24_28_.pdf', 1, CAST(N'2023-05-31T14:24:28.6179978' AS DateTime2), CAST(N'2023-05-31T14:24:28.6181207' AS DateTime2))
INSERT [dbo].[SH_annual_ReportData] ([id], [year], [titleTH], [titleENG], [upload_image], [upload_image_ENG], [file_name], [file_name_ENG], [use_status], [created_at], [updated_at]) VALUES (2, CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), N'AFE', N'3rqer', N'638211452829023185.png', N'31_05_2023_15_41_16_.png', N'638211444763130083.pdf', N'31_05_2023_15_41_16_.pdf', 1, CAST(N'2023-05-31T15:41:16.3437636' AS DateTime2), CAST(N'2023-05-31T15:54:42.9047730' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_annual_ReportData] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_dividen] ON 

INSERT [dbo].[SH_dividen] ([id], [titleTH], [titleENG], [detailsTitleTH], [detailsTitleENG], [detailsTH], [detailsENG], [securityTitleTH], [securityTitleENG], [dateOfBoardTitleTH], [dateOfBoardTitleENG], [dateMakingTitleTH], [dateMakingTitleENG], [paymentDateTitleTH], [paymentDateTitleENG], [dividenTypetitleTH], [dividenTypetitleENG], [amountTitleTH], [amountTitleENG], [earningDayTitleTH], [earningDayTitleENG], [created_at], [updated_at]) VALUES (1, N'ข้อมูลสำหรับผู้ถือหุ้น', N'ข้อมูลสำหรับผู้ถือหุ้น ENG', N'นโยบายจ่ายเงินปันผล', N'นโยบายจ่ายเงินปันผล ENG', N'บริษัทฯ มีนโยบายจ่ายเงินปันผลไม่น้อยกว่าร้อยละ 40 ของกำไรสุทธิหลังหักภาษีเงินได้นิติบุคคล อย่างไรก็ตาม บริษัทฯ อาจกำหนดให้ การจ่ายเงินปันผลมีอัตราน้อยกว่าที่กำหนดข้างต้นได้หากบริษัทมีความจำเป็นต้องนำเงินกำไรสุทธิดังกล่าวมาใช้ เพื่อขยายธุรกิจของบริษัทฯ ต่อไป', N'บริษัทฯ มีนโยบายจ่ายเงินปันผลไม่น้อยกว่าร้อยละ 40 ของกำไรสุทธิหลังหักภาษีเงินได้นิติบุคคล อย่างไรก็ตาม บริษัทฯ อาจกำหนดให้ การจ่ายเงินปันผลมีอัตราน้อยกว่าที่กำหนดข้างต้นได้หากบริษัทมีความจำเป็นต้องนำเงินกำไรสุทธิดังกล่าวมาใช้ เพื่อขยายธุรกิจของบริษัทฯ ต่อไป ENG', N'หลักทรัพย์', N'หลักทรัพย์ ENG', N'วันที่คณะกรรมการมีมติ', N'วันที่คณะกรรมการมีมติ ENG', N'วันที่ขึ้นเครื่องหมาย', N'วันที่ขึ้นเครื่องหมาย ENG', N'วันที่จ่ายเงินปันผล', N'วันที่จ่ายเงินปันผล ENG', N'ประเภทเงินปันผล ', N'ประเภทเงินปันผล  ENG', N'จำนวนเงินปันผลต่อหุ้น', N'จำนวนเงินปันผลต่อหุ้น ENG', N'วันผลประกอบการ ', N'วันผลประกอบการ ENG', CAST(N'2023-05-31T14:57:01.6080264' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[SH_dividen] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_dividen_Data] ON 

INSERT [dbo].[SH_dividen_Data] ([id], [title], [dateOfBoard], [dateMaking], [paymentDate], [dividenTypeTitleTH], [dividenTypeTitleENG], [amount], [earningDayTitleTH], [earningDayTitleENG], [use_status], [created_at], [updated_at]) VALUES (1, N'L&E', CAST(N'2023-05-17T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-18T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-24T00:00:00.0000000' AS DateTime2), N'ADFEF', N'AFAEF', CAST(12344.00 AS Decimal(18, 2)), N'01/01/64-31/12/64', N'01/01/64-31/12/64', 1, CAST(N'2023-05-31T14:58:02.2259182' AS DateTime2), NULL)
INSERT [dbo].[SH_dividen_Data] ([id], [title], [dateOfBoard], [dateMaking], [paymentDate], [dividenTypeTitleTH], [dividenTypeTitleENG], [amount], [earningDayTitleTH], [earningDayTitleENG], [use_status], [created_at], [updated_at]) VALUES (2, N'FAD FAEF adfae', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'ADF AEFE fgsfgsfgs', N'AFAEFAF asfaef', CAST(1234.00 AS Decimal(18, 2)), N'ADFAFEWF adfafafd', N'AFDAFEFE adfadf', 1, CAST(N'2023-05-31T14:58:23.3826100' AS DateTime2), CAST(N'2023-05-31T15:05:41.1964930' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_dividen_Data] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_generalMeeting] ON 

INSERT [dbo].[SH_generalMeeting] ([id], [titleTH], [titleENG], [detailsTitleTH], [detailsTitleENG], [image_name], [image_name_ENG], [link], [meetingTitleTH], [meetingTitleENG], [downloadTitleTH], [downloadTitleENG], [created_at], [updated_at]) VALUES (1, N'ข้อมูลสำหรับผู้ถือหุ้น', N'ข้อมูลสำหรับผู้ถือหุ้น ENG', N'หนังสือเชิญประชุมผู้ถือหุ้น', N'หนังสือเชิญประชุมผู้ถือหุ้น', N'638211414532322054.jpg', N'31_05_2023_14_50_53_.jpg', N'https://agm.irplus.in.th/manual/manual.html', N'การประชุมสามัญผู้ถือหุ้น ประจำปี 2565', N'การประชุมสามัญผู้ถือหุ้น ประจำปี 2565 ENG', N'ดาวน์โหลด', N'ดาวน์โหลด ENG', CAST(N'2023-05-31T14:50:53.2347857' AS DateTime2), CAST(N'2023-05-31T14:50:53.2349503' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_generalMeeting] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_generalMeeting_Data] ON 

INSERT [dbo].[SH_generalMeeting_Data] ([id], [titleTH], [titleENG], [file_name], [file_name_ENG], [use_status], [created_at], [updated_at]) VALUES (1, N'การประชุมสามัญผู้ถือหุ้น ประจำปี 2565', N'การประชุมสามัญผู้ถือหุ้น ประจำปี 2565 DNG', N'638211414854083088.pdf', N'31_05_2023_14_51_25_.pdf', 1, CAST(N'2023-05-31T14:51:25.4119031' AS DateTime2), NULL)
INSERT [dbo].[SH_generalMeeting_Data] ([id], [titleTH], [titleENG], [file_name], [file_name_ENG], [use_status], [created_at], [updated_at]) VALUES (2, N'A', N'FAFE', N'638211414972647350.pdf', N'31_05_2023_14_51_37_.pdf', 1, CAST(N'2023-05-31T14:51:37.2688861' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[SH_generalMeeting_Data] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_cashFlow_statements] ON 

INSERT [dbo].[SH_IR_cashFlow_statements] ([id], [titleTH], [titleENG], [amount], [percentProfit], [created_at], [updated_at]) VALUES (1, N'cash th ddd', N'cash eng ddde', CAST(23476.00 AS Decimal(18, 2)), CAST(322.00 AS Decimal(18, 2)), CAST(N'2023-05-31T09:58:39.9412905' AS DateTime2), CAST(N'2023-05-31T10:07:09.6035897' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_cashFlow_statements] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_download_financial_statements] ON 

INSERT [dbo].[SH_IR_download_financial_statements] ([id], [titleTH], [titleENG], [file_name], [file_name_ENG], [inputDate], [active_status], [created_at], [updated_at]) VALUES (1, N'adfe  th', N'daf e n g', N'638211251112545067.pdf', N'31_05_2023_10_18_31_.pdf', CAST(N'2023-05-31T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-05-31T10:18:31.2641941' AS DateTime2), CAST(N'2023-05-31T10:18:31.2655084' AS DateTime2))
INSERT [dbo].[SH_IR_download_financial_statements] ([id], [titleTH], [titleENG], [file_name], [file_name_ENG], [inputDate], [active_status], [created_at], [updated_at]) VALUES (2, N'afe', N'afe', N'638211251949835139.pdf', N'31_05_2023_10_19_59_.pdf', CAST(N'2023-05-31T00:00:00.0000000' AS DateTime2), 0, CAST(N'2023-05-31T10:20:10.4458766' AS DateTime2), CAST(N'2023-05-31T10:20:11.2072149' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_download_financial_statements] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_financial_position] ON 

INSERT [dbo].[SH_IR_financial_position] ([id], [titleTH], [titleENG], [active_status], [created_at], [updated_at]) VALUES (1, N'af', N'af fdf', 1, CAST(N'2023-05-30T15:46:49.4297467' AS DateTime2), CAST(N'2023-05-30T15:46:49.4300997' AS DateTime2))
INSERT [dbo].[SH_IR_financial_position] ([id], [titleTH], [titleENG], [active_status], [created_at], [updated_at]) VALUES (2, N' test ing', N'testeng eng', 1, CAST(N'2023-05-31T13:59:52.0890046' AS DateTime2), CAST(N'2023-05-31T13:59:52.0890957' AS DateTime2))
INSERT [dbo].[SH_IR_financial_position] ([id], [titleTH], [titleENG], [active_status], [created_at], [updated_at]) VALUES (3, N'AFEF', N'AFE', 1, CAST(N'2023-05-31T14:29:47.2359311' AS DateTime2), CAST(N'2023-05-31T14:29:47.2359997' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_financial_position] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_financial_position_DataDetails] ON 

INSERT [dbo].[SH_IR_financial_position_DataDetails] ([id], [titleTH], [titleENG], [amount], [percent], [financialPosition_id], [created_at], [updated_at]) VALUES (1, N'adf af  ', N'SDFGTJK', CAST(2345.00 AS Decimal(18, 2)), NULL, NULL, CAST(N'2023-05-30T15:09:38.1920602' AS DateTime2), CAST(N'2023-05-30T15:09:38.1936816' AS DateTime2))
INSERT [dbo].[SH_IR_financial_position_DataDetails] ([id], [titleTH], [titleENG], [amount], [percent], [financialPosition_id], [created_at], [updated_at]) VALUES (2, N'adf fadfee', N'fafef', CAST(12344.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), 1, CAST(N'2023-05-31T11:51:57.1331018' AS DateTime2), CAST(N'2023-05-31T11:51:57.1341785' AS DateTime2))
INSERT [dbo].[SH_IR_financial_position_DataDetails] ([id], [titleTH], [titleENG], [amount], [percent], [financialPosition_id], [created_at], [updated_at]) VALUES (3, N'ASDFG', N'sdfg', CAST(2345.00 AS Decimal(18, 2)), CAST(234.00 AS Decimal(18, 2)), 2, CAST(N'2023-05-31T14:00:05.4302457' AS DateTime2), CAST(N'2023-05-31T14:00:05.4303251' AS DateTime2))
INSERT [dbo].[SH_IR_financial_position_DataDetails] ([id], [titleTH], [titleENG], [amount], [percent], [financialPosition_id], [created_at], [updated_at]) VALUES (4, N'dfgh', N'SDFGHJ', CAST(6543.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), 2, CAST(N'2023-05-31T14:00:20.4171439' AS DateTime2), CAST(N'2023-05-31T14:00:20.4171448' AS DateTime2))
INSERT [dbo].[SH_IR_financial_position_DataDetails] ([id], [titleTH], [titleENG], [amount], [percent], [financialPosition_id], [created_at], [updated_at]) VALUES (5, N'AFE', N'AFE', CAST(2345.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), 3, CAST(N'2023-05-31T14:30:06.7406591' AS DateTime2), CAST(N'2023-05-31T14:30:06.7407256' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_financial_position_DataDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_Form] ON 

INSERT [dbo].[SH_IR_Form] ([id], [titleTH], [titleENG], [detailsTitleTH], [detailsTitleENG], [nameTitleTH], [nameTitleENG], [yearTitleTH], [yearTitleENG], [dateConfrimTitleTH], [dateConfrimTitleENG], [detailsTH], [detailsENG], [created_at], [updated_at]) VALUES (1, N'ข้อมูลสำหรับผู้ถือหุ้น', N'ข้อมูลสำหรับผู้ถือหุ้น ENG', N'แบบฟอร์ม 56-1', N'แบบฟอร์ม 56-1 ENG', N'ชื่อบริษัท', N'ชื่อบริษัท ENG', N'ประจำปี', N'ประจำปี ENG', N'วันที่ได้รับข้อมูล', N' วันที่ได้รับข้อมูล ENG', N'รายละเอียด', N'รายละเอียด ENG', CAST(N'2023-05-31T15:57:39.1142842' AS DateTime2), CAST(N'2023-05-31T15:57:39.1150698' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_Form] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_FormData] ON 

INSERT [dbo].[SH_IR_FormData] ([id], [titleTH], [titleENG], [year], [confrimDate], [file_name], [file_name_ENG], [active_status], [created_at], [updated_at]) VALUES (1, N'AEF', N'AFEF', CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-31T00:00:00.0000000' AS DateTime2), N'638211399304341661.pdf', N'31_05_2023_14_25_30_.pdf', 1, CAST(N'2023-05-31T14:25:30.4522844' AS DateTime2), CAST(N'2023-05-31T14:25:30.4523636' AS DateTime2))
INSERT [dbo].[SH_IR_FormData] ([id], [titleTH], [titleENG], [year], [confrimDate], [file_name], [file_name_ENG], [active_status], [created_at], [updated_at]) VALUES (2, N'ADF', N'AFEF', CAST(N'2020-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-24T00:00:00.0000000' AS DateTime2), N'638211454755887203.pdf', N'31_05_2023_15_57_55_.pdf', 1, CAST(N'2023-05-31T15:57:55.5972449' AS DateTime2), CAST(N'2023-05-31T15:57:55.5979939' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_FormData] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_important_financial] ON 

INSERT [dbo].[SH_IR_important_financial] ([id], [titleTH], [titleENG], [detailsTitleTH], [detailsTitleENG], [financial_positionTitleTH], [financial_positionTitleENG], [profitLoseTitleTH], [profitLoseTitleENG], [Comprehensive_IncomeTitleTH], [Comprehensive_IncomeTitleENG], [cash_flowTitleTH], [cash_flowTitleENG], [download_financialTitleTH], [download_financialTitleENG], [listTitleTH], [listTitleENG], [amountTitleTH], [amountTitleENG], [percentTitleTH], [percentTitleENG], [dayTitleTH], [dayTitleENG], [created_at], [updated_at]) VALUES (1, N'ข้อมูลสำคัญทางการเงิน', N'ข้อมูลสำคัญทางการเงิน eng', N'งบการเงิน', N'งบการเงิน eng', N'งบแสดงฐานะการเงิน', N'งบแสดงฐานะการเงิน eng', N'งบกำไรขาดทุน', N'งบกำไรขาดทุน eng', N'งบกำไรขาดทุนเบ็ดเสร็จอื่น', N'งบกำไรขาดทุนเบ็ดเสร็จอื่น eng', N'งบกระแสเงินสด', N'งบกระแสเงินสด eng', N'ดาวน์โหลดงบการเงิน', N'ดาวน์โหลดงบการเงิน eng', N'รายการ', N'รายการ eng', N'ล้านบาท', N'ล้านบาท e', N'%', N'%', N'วันที่', N'วันที่ eng', CAST(N'2023-05-31T13:59:02.6615799' AS DateTime2), CAST(N'2023-05-31T13:59:02.6617429' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_important_financial] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_MDA] ON 

INSERT [dbo].[SH_IR_MDA] ([id], [titleTH], [titleENG], [detailsTitleTH], [detailsTitleENG], [dataTitleTH], [dataTitleENG], [nameTitleTH], [nameTitleENG], [downloadTitleTH], [downloadTitleENG], [created_at], [updated_at]) VALUES (1, N'ข้อมูลสำคัญทางการเงิน', N'ข้อมูลสำคัญทางการเงิน eng', N'คำอธิบาย และการวิเคราะห์', N'คำอธิบาย และการวิเคราะห์ eng', N'ข้อมูล', N'ข้อมูล eng', N'หัวข้อ', N'หัวข้อ eng', N'ดาวน์โหลด', N'ดาวน์โหลด eng', CAST(N'2023-05-31T16:29:20.1606938' AS DateTime2), CAST(N'2023-05-31T16:29:20.1617037' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_MDA] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_MDA_Data] ON 

INSERT [dbo].[SH_IR_MDA_Data] ([id], [titleTH], [titleENG], [detailsTitleTH], [detailsTitleENG], [image_name], [image_name_ENG], [active_status], [created_at], [updated_at]) VALUES (1, N'AF', N'AFE', N'AF', N'FE', N'638211403621102473.png', N'31_05_2023_14_32_42_.png', 1, CAST(N'2023-05-31T14:32:42.1145105' AS DateTime2), CAST(N'2023-05-31T14:32:42.1150147' AS DateTime2))
INSERT [dbo].[SH_IR_MDA_Data] ([id], [titleTH], [titleENG], [detailsTitleTH], [detailsTitleENG], [image_name], [image_name_ENG], [active_status], [created_at], [updated_at]) VALUES (2, N'ข้อมูลสำหรับผู้ถือหุ้น th adf', N'tt eng fef', N'sedrghjk', N'adfad fa', N'638211474230050342.png', N'31_05_2023_16_30_23_.png', 1, CAST(N'2023-05-31T16:30:23.0202974' AS DateTime2), CAST(N'2023-05-31T16:30:23.0218357' AS DateTime2))
INSERT [dbo].[SH_IR_MDA_Data] ([id], [titleTH], [titleENG], [detailsTitleTH], [detailsTitleENG], [image_name], [image_name_ENG], [active_status], [created_at], [updated_at]) VALUES (3, N'AFE', N'sdfghjklsdfghj,sdfghj Zxsdfghmsdfgh ddd', N'asdr', N'adfad fa', N'638211479421870829.png', N'31_05_2023_16_39_02_.png', 1, CAST(N'2023-05-31T16:39:02.2011614' AS DateTime2), CAST(N'2023-05-31T16:39:02.2011637' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_MDA_Data] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_MDA_DataDetails] ON 

INSERT [dbo].[SH_IR_MDA_DataDetails] ([id], [title], [year], [file_name], [file_name_ENG], [active_status], [created_at], [updated_at]) VALUES (1, N'fafe', CAST(N'2020-01-01T00:00:00.0000000' AS DateTime2), N'638211506122221556.pdf', N'31_05_2023_17_23_32_.pdf', 1, CAST(N'2023-05-31T17:22:33.6062777' AS DateTime2), CAST(N'2023-05-31T17:23:32.2328346' AS DateTime2))
INSERT [dbo].[SH_IR_MDA_DataDetails] ([id], [title], [year], [file_name], [file_name_ENG], [active_status], [created_at], [updated_at]) VALUES (2, N'adf', CAST(N'2021-01-01T00:00:00.0000000' AS DateTime2), N'638211506282891751.pdf', N'31_05_2023_17_23_48_.pdf', 1, CAST(N'2023-05-31T17:23:48.2914099' AS DateTime2), CAST(N'2023-05-31T17:23:48.2914114' AS DateTime2))
INSERT [dbo].[SH_IR_MDA_DataDetails] ([id], [title], [year], [file_name], [file_name_ENG], [active_status], [created_at], [updated_at]) VALUES (3, N'fafe afef', CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), N'638211506459157786.pdf', N'31_05_2023_17_24_05_.pdf', 1, CAST(N'2023-05-31T17:24:05.9196467' AS DateTime2), CAST(N'2023-05-31T17:24:05.9196487' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_MDA_DataDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_presentation_doc] ON 

INSERT [dbo].[SH_IR_presentation_doc] ([id], [titleTH], [titleENG], [detailsTitleTH], [detailsTitleENG], [present_documentTitleTH], [present_documentTitleENG], [downloadTitleTH], [downloadTitleENG], [created_at], [updated_at]) VALUES (1, N'การนำเสนอข้อมูล', N'การนำเสนอข้อมูล ENG', N'เอกสารนำเสนอ', N'เอกสารนำเสนอ ENG', N'เอกสารนำเสนอ', N'เอกสารนำเสนอ ENG', N'ดาวน์โหลด', N'ดาวน์โหลด', CAST(N'2023-05-31T16:12:24.3219044' AS DateTime2), CAST(N'2023-05-31T16:12:24.3220152' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_presentation_doc] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_presentation_doc_Data] ON 

INSERT [dbo].[SH_IR_presentation_doc_Data] ([id], [titleTH], [titleENG], [file_name], [file_name_ENG], [document_date], [active_status], [created_at], [updated_at]) VALUES (1, N'AFE', NULL, N'638211401082396691.pdf', N'31_05_2023_14_28_28_.pdf', CAST(N'2023-05-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-05-31T14:28:28.2550637' AS DateTime2), CAST(N'2023-05-31T14:28:28.2552063' AS DateTime2))
INSERT [dbo].[SH_IR_presentation_doc_Data] ([id], [titleTH], [titleENG], [file_name], [file_name_ENG], [document_date], [active_status], [created_at], [updated_at]) VALUES (2, N'adf ', N'a dfaf ', N'638211470482855527.pdf', N'31_05_2023_16_24_08_.pdf', CAST(N'2023-02-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-05-31T16:24:08.2952366' AS DateTime2), CAST(N'2023-05-31T16:24:08.2960729' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_presentation_doc_Data] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_presentation_webcast] ON 

INSERT [dbo].[SH_IR_presentation_webcast] ([id], [titleTH], [titleENG], [detailsTitleTH], [detailsTitleENG], [activitytitleTH], [activitytitleENG], [webcastTitleTH], [webcastTitleENG], [downloadtitleTH], [downloadtitleENG], [created_at], [updated_at]) VALUES (1, N'การนำเสนอข้อมูล', N'การนำเสนอข้อมูล ENG', N'วิดีโอบริษัท', N'วิดีโอบริษัท ENG', N'กิจกรรม', N'กิจกรรม ENG', N'ดูเว็บแคสต์', N'ดูเว็บแคสต์ ENG', N'ดาวน์โหลด', N'ดาวน์โหลด ENG', CAST(N'2023-05-31T15:59:27.5651323' AS DateTime2), CAST(N'2023-05-31T15:59:27.5666456' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_presentation_webcast] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_presentation_webcast_Data] ON 

INSERT [dbo].[SH_IR_presentation_webcast_Data] ([id], [titleTH], [titleENG], [activity_date], [linkVideo], [file_name], [file_name_ENG], [active_status], [created_at], [updated_at]) VALUES (1, N'FADF ADF', N'AF AEFE', CAST(N'2023-05-01T00:00:00.0000000' AS DateTime2), N'https://youtu.be/6cmBWEX8SpM?list=RDR5bUCsDYfUo', N'638211458391538361.pdf', N'31_05_2023_16_04_09_.pdf', 1, CAST(N'2023-05-31T16:00:03.6349547' AS DateTime2), CAST(N'2023-05-31T16:04:29.7031108' AS DateTime2))
INSERT [dbo].[SH_IR_presentation_webcast_Data] ([id], [titleTH], [titleENG], [activity_date], [linkVideo], [file_name], [file_name_ENG], [active_status], [created_at], [updated_at]) VALUES (2, N'FADF A', N'SDFAF AF', CAST(N'2023-06-01T00:00:00.0000000' AS DateTime2), NULL, N'638211457180885940.pdf', N'31_05_2023_16_01_58_.pdf', 1, CAST(N'2023-05-31T16:01:58.0971899' AS DateTime2), CAST(N'2023-05-31T16:01:58.0971932' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_presentation_webcast_Data] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_Profit_Lose] ON 

INSERT [dbo].[SH_IR_Profit_Lose] ([id], [titleTH], [titleENG], [amount], [percentProfit], [created_at], [updated_at]) VALUES (2, N'SDFG', N'YTREW', CAST(12345.00 AS Decimal(18, 2)), CAST(234.00 AS Decimal(18, 2)), CAST(N'2023-05-30T15:47:09.9075505' AS DateTime2), CAST(N'2023-05-30T15:47:09.9077737' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_Profit_Lose] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_Profit_Lose_others] ON 

INSERT [dbo].[SH_IR_Profit_Lose_others] ([id], [titleTH], [titleENG], [amount], [percentProfit], [created_at], [updated_at]) VALUES (1, N'adf other', N'afef otheras', CAST(2345.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), CAST(N'2023-05-31T09:57:35.6471946' AS DateTime2), CAST(N'2023-05-31T09:58:01.5457828' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_Profit_Lose_others] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_propose_agenda] ON 

INSERT [dbo].[SH_IR_propose_agenda] ([id], [titleTH], [titleENG], [detailsTitleTH], [detailsTitleENG], [created_at], [updated_at]) VALUES (1, N'ข้อมูลสำหรับผู้ถือหุ้น', N'ข้อมูลสำหรับผู้ถือหุ้น', N'เสนอวาระ/กรรมการ/คำถามล่วงหน้า', N'เสนอวาระ/กรรมการ/คำถามล่วงหน้า', CAST(N'2023-05-31T14:53:24.9441712' AS DateTime2), CAST(N'2023-05-31T14:53:24.9443544' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_propose_agenda] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_propose_agenda_DataDetails] ON 

INSERT [dbo].[SH_IR_propose_agenda_DataDetails] ([id], [titleTH], [titleENG], [file_name], [file_name_ENG], [active_status], [created_at], [updated_at]) VALUES (1, N'AFDFGHJMERTGHJ AFDFGHJMERTGHJ AFDFGHJMERTGHJ AFDFGHJMERTGHJ AFDFGHJMERTGHJ AFDFGHJMERTGHJ AFDFGHJMERTGHJ AFDFGHJMERTGHJ AFDFGHJMERTGHJ AFDFGHJMERTGHJ', N'AFDFGHJMERTGHJ AFDFGHJMERT FDFGHJMERTGHJ AFDFGHJMERTGHJ AFDFGHJMERTGHJ AFDFGHJMERTGHJ AFDFGHJMERTGHJ AFDFGHJMERTGHJ AFDFGHJMERTGHJ', N'638211397931493601.pdf', N'31_05_2023_14_23_13_.pdf', 1, CAST(N'2023-05-31T14:23:13.1531981' AS DateTime2), CAST(N'2023-05-31T14:54:21.3548601' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_propose_agenda_DataDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_prospectus] ON 

INSERT [dbo].[SH_IR_prospectus] ([id], [Link], [created_at], [updated_at]) VALUES (1, N'http://capital.sec.or.th/webapp/corp_fin2/cgi-bin/result69c.php?comp_id=0764', CAST(N'2023-05-31T18:08:47.9380614' AS DateTime2), CAST(N'2023-05-31T18:09:05.1777768' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_prospectus] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_Report_Meeting] ON 

INSERT [dbo].[SH_IR_Report_Meeting] ([id], [titleTH], [titleENG], [detailsTitleTH], [detailsTitleENG], [created_at], [updated_at]) VALUES (1, N'AFE', N'FAF', N'AF', N'EF', CAST(N'2023-05-31T14:22:00.4253843' AS DateTime2), CAST(N'2023-05-31T14:22:00.4255878' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_Report_Meeting] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_Report_Meeting_DataDetails] ON 

INSERT [dbo].[SH_IR_Report_Meeting_DataDetails] ([id], [titleTH], [titleENG], [file_name], [file_name_ENG], [active_status], [year], [reportMeeting_id], [created_at], [updated_at]) VALUES (1, N'ADFE', N'AFEF', N'638211397134860056.pdf', N'31_05_2023_14_21_53_.pdf', 1, CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-05-31T14:21:53.4907815' AS DateTime2), CAST(N'2023-05-31T14:21:53.4909588' AS DateTime2))
INSERT [dbo].[SH_IR_Report_Meeting_DataDetails] ([id], [titleTH], [titleENG], [file_name], [file_name_ENG], [active_status], [year], [reportMeeting_id], [created_at], [updated_at]) VALUES (2, N'AFE', N'AFE', N'638211397338230891.pdf', N'31_05_2023_14_22_13_.pdf', 1, CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-05-31T14:22:13.8397228' AS DateTime2), CAST(N'2023-05-31T14:22:13.8397243' AS DateTime2))
INSERT [dbo].[SH_IR_Report_Meeting_DataDetails] ([id], [titleTH], [titleENG], [file_name], [file_name_ENG], [active_status], [year], [reportMeeting_id], [created_at], [updated_at]) VALUES (3, N'AFEF', NULL, N'638211415661644522.pdf', N'31_05_2023_14_52_46_.pdf', 1, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 2, CAST(N'2023-05-31T14:52:46.1801693' AS DateTime2), CAST(N'2023-05-31T14:52:46.1802636' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_Report_Meeting_DataDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[SH_IR_Report_MeetingData] ON 

INSERT [dbo].[SH_IR_Report_MeetingData] ([id], [titleTH], [titleENG], [year], [active_status], [created_at], [updated_at]) VALUES (1, N'ASDFADF', N'ADFAFEF', CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-05-31T14:21:16.2027515' AS DateTime2), CAST(N'2023-05-31T14:21:16.2028863' AS DateTime2))
INSERT [dbo].[SH_IR_Report_MeetingData] ([id], [titleTH], [titleENG], [year], [active_status], [created_at], [updated_at]) VALUES (2, N'AFE', N'AFE', CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-05-31T14:52:31.7165704' AS DateTime2), CAST(N'2023-05-31T14:52:31.7166504' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SH_IR_Report_MeetingData] OFF
GO
SET IDENTITY_INSERT [dbo].[ShareHolder] ON 

INSERT [dbo].[ShareHolder] ([Id], [TitleTH], [TitleENG], [detailsTitleTH], [detailsTitleENG], [detailsTH], [detailsENG], [nameTitleTH], [nameTitleENG], [amountTitleTH], [amountTitleENG], [percentTitleTH], [percentTitleENG], [created_at], [updated_at]) VALUES (1, N'ข้อมูลสำหรับผู้ถือหุ้น', N'ข้อมูลสำหรับผู้ถือหุ้น ENG', N'ผู้ถือหุ้นรายใหญ่', N'ผู้ถือหุ้นรายใหญ่', N'โครงสร้างผู้ถือหุ้น ณ วันที่ 2022-05-03', N'โครงสร้างผู้ถือหุ้น ณ วันที่ 2022-05-03 ENG', N'รายชื่อ', N'รายชื่อ ENG', N'จำนวนหุ้น', N' จำนวนหุ้น ENG', N'สัดส่วนร้อยละของหุ้นที่ถือ', N'สัดส่วนร้อยละของหุ้นที่ถือ ENG', CAST(N'2023-05-31T14:48:02.6467426' AS DateTime2), CAST(N'2023-05-31T14:48:02.6469995' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ShareHolder] OFF
GO
SET IDENTITY_INSERT [dbo].[ShareHolder_DataDetails] ON 

INSERT [dbo].[ShareHolder_DataDetails] ([Id], [nameTH], [nameENG], [amount], [percentPerAmount], [created_at], [updated_at]) VALUES (1, N'ADF', N'ADF', CAST(2345.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), CAST(N'2023-05-31T14:18:24.7309361' AS DateTime2), CAST(N'2023-05-31T14:18:24.7312500' AS DateTime2))
INSERT [dbo].[ShareHolder_DataDetails] ([Id], [nameTH], [nameENG], [amount], [percentPerAmount], [created_at], [updated_at]) VALUES (2, N'ADF', N'mr. sarnai lertsakorn', CAST(1234.00 AS Decimal(18, 2)), CAST(234.00 AS Decimal(18, 2)), CAST(N'2023-05-31T14:42:42.2088198' AS DateTime2), CAST(N'2023-05-31T14:42:42.2089301' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ShareHolder_DataDetails] OFF
GO
