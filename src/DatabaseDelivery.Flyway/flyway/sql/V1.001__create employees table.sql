CREATE TABLE [dbo].[employee](
	[id] int NOT NULL Identity(1,1),
	[name] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[phone] [nvarchar](50) NULL,
	Primary Key (id)
)

