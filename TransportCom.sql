USE [TransportCom]
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 10/04/2016 20:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Worker](
	[Worker_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](70) NULL,
	[DOB] [date] NULL,
	[Designation] [varchar](25) NULL,
	[Licence_No] [varchar](25) NULL,
	[JoinedDate] [date] NULL,
	[Address] [varchar](500) NULL,
	[Contact_No] [varchar](25) NULL,
 CONSTRAINT [PK_Worker] PRIMARY KEY CLUSTERED 
(
	[Worker_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 10/04/2016 20:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vehicle](
	[Vehicle_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Vehicle_No] [varchar](20) NULL,
	[Model] [varchar](50) NULL,
	[Manufacture] [varchar](50) NULL,
	[RC_No] [varchar](30) NULL,
	[Insurance_Start] [date] NULL,
	[Insurance_End] [date] NULL,
	[FC_End] [date] NULL,
	[Colour] [varchar](15) NULL,
	[Loading_Capacity] [int] NULL,
	[NoOfTyre] [smallint] NULL,
	[NoOfGear] [smallint] NULL,
	[Permit_Type] [varchar](50) NULL,
	[Incharge_Name] [varchar](50) NULL,
	[Vehicle_Location] [varchar](50) NULL,
	[Seating_Capacity] [smallint] NULL,
	[Fuel_Type] [varchar](15) NULL,
	[Vehicle_Type] [varchar](20) NULL,
	[Vehicle_Cost] [decimal](12, 2) NULL,
	[Permit_End] [date] NULL,
	[Roadtax_End] [date] NULL,
 CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED 
(
	[Vehicle_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TripExp]    Script Date: 10/04/2016 20:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TripExp](
	[Trip_Exp] [int] IDENTITY(1,1) NOT NULL,
	[Trip_Id] [int] NULL,
	[ExpDate] [date] NULL,
	[Type] [varchar](50) NULL,
	[Location] [varchar](100) NULL,
	[Spare_Id] [smallint] NULL,
	[CurrentKM] [int] NULL,
	[Amount] [decimal](10, 2) NULL,
 CONSTRAINT [PK_TripExp] PRIMARY KEY CLUSTERED 
(
	[Trip_Exp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TripAllowance]    Script Date: 10/04/2016 20:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TripAllowance](
	[Allowance_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[From_Location] [varchar](100) NULL,
	[To_Location] [varchar](100) NULL,
	[Allowance_Amount] [decimal](10, 2) NULL,
 CONSTRAINT [PK_TripAllowance] PRIMARY KEY CLUSTERED 
(
	[Allowance_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Trip]    Script Date: 10/04/2016 20:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Trip](
	[Trip_Id] [int] IDENTITY(1,1) NOT NULL,
	[Vehicle_Id] [smallint] NULL,
	[Customer_Id] [int] NULL,
	[Driver_Id] [smallint] NULL,
	[Cleaner_Id] [smallint] NULL,
	[From_Location] [varchar](50) NULL,
	[To_Location] [varchar](50) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Starting_KM] [int] NULL,
	[End_KM] [int] NULL,
	[Goods_Type] [varchar](60) NULL,
	[DC_No] [int] NULL,
	[NoOfTon] [smallint] NULL,
	[Ton_Rate] [decimal](10, 2) NULL,
	[Good_Comm] [smallint] NULL,
	[Good_Dis] [smallint] NULL,
	[Trip_Amount] [decimal](12, 2) NULL,
	[Trip_Comm] [smallint] NULL,
	[Trip_Dis] [smallint] NULL,
	[Net_Amount] [decimal](12, 2) NULL,
	[Fuel_Quantity] [smallint] NULL,
 CONSTRAINT [PK_Trip] PRIMARY KEY CLUSTERED 
(
	[Trip_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sparepart]    Script Date: 10/04/2016 20:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sparepart](
	[Spare_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Sparepart_Name] [varchar](120) NULL,
 CONSTRAINT [PK_Sparepart] PRIMARY KEY CLUSTERED 
(
	[Spare_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Salary]    Script Date: 10/04/2016 20:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Salary](
	[Salary_Id] [int] IDENTITY(1,1) NOT NULL,
	[Worker_Id] [smallint] NULL,
	[Allowance_Id] [smallint] NULL,
	[Vehicle_Id] [smallint] NULL,
	[Salary_Name] [varchar](50) NULL,
	[Detail] [varchar](500) NULL,
	[SalaryDate] [date] NULL,
	[Amount] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Salary] PRIMARY KEY CLUSTERED 
(
	[Salary_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Maintenance]    Script Date: 10/04/2016 20:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Maintenance](
	[Maintenance_Id] [int] IDENTITY(1,1) NOT NULL,
	[Vehicle_Id] [smallint] NULL,
	[Type] [varchar](50) NULL,
	[Workshop] [varchar](100) NULL,
	[Location] [varchar](100) NULL,
	[Spare_Id] [smallint] NULL,
	[CurrentKM] [int] NULL,
	[MaintenanceDate] [date] NULL,
	[Amount] [decimal](10, 2) NULL,
	[Remaining_KM] [int] NULL,
 CONSTRAINT [PK_Maintenance] PRIMARY KEY CLUSTERED 
(
	[Maintenance_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login]    Script Date: 10/04/2016 20:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[UserName] [varchar](30) NOT NULL,
	[Password] [varchar](25) NULL,
	[Status] [varchar](15) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoanPaid]    Script Date: 10/04/2016 20:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoanPaid](
	[LoanPaid_Id] [int] IDENTITY(1,1) NOT NULL,
	[Loan_Id] [smallint] NULL,
	[PaidAmount] [decimal](12, 2) NULL,
	[PaidDate] [date] NULL,
	[Receipt_No] [int] NULL,
 CONSTRAINT [PK_LoanPaid] PRIMARY KEY CLUSTERED 
(
	[LoanPaid_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loan]    Script Date: 10/04/2016 20:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Loan](
	[Loan_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Vehicle_Id] [smallint] NULL,
	[Source] [varchar](120) NULL,
	[Principle_Amount] [decimal](12, 2) NULL,
	[Due_Amount] [decimal](12, 2) NULL,
	[LoanDate] [date] NULL,
 CONSTRAINT [PK_Loan] PRIMARY KEY CLUSTERED 
(
	[Loan_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FuelFill]    Script Date: 10/04/2016 20:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FuelFill](
	[FuelFill_Id] [int] IDENTITY(1,1) NOT NULL,
	[Vehicle_Id] [smallint] NULL,
	[Worker_Id] [smallint] NULL,
	[FillDate] [date] NULL,
	[Fuel_Type] [varchar](25) NULL,
	[Quantity] [smallint] NULL,
	[Current_KM] [int] NULL,
	[Bunk_Name] [varchar](100) NULL,
	[Amount] [decimal](12, 2) NULL,
	[Payment] [varchar](9) NULL,
 CONSTRAINT [PK_FuelFill] PRIMARY KEY CLUSTERED 
(
	[FuelFill_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/04/2016 20:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](100) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](40) NULL,
	[District] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Pincode] [varchar](6) NULL,
	[Pho_No] [varchar](30) NULL,
	[Mob_No] [varchar](10) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Customer_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Alert]    Script Date: 10/04/2016 20:57:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alert](
	[Alert_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Vehicle_Id] [smallint] NULL,
	[Spare_Id] [smallint] NULL,
	[Alert_KM] [int] NULL,
	[Doc_Name] [varchar](15) NULL,
	[Alert_Date] [date] NULL,
 CONSTRAINT [PK_Alert] PRIMARY KEY CLUSTERED 
(
	[Alert_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
