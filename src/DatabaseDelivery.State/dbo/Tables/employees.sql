CREATE TABLE [dbo].[employees] (
    [id]           INT          IDENTITY (1, 1) NOT NULL,
    [title_id]     INT          NOT NULL,
    [phone_number] VARCHAR (20) NULL,
    [name]         VARCHAR (80) NULL,
    [birth_date]   DATETIME     NULL,
    [salary]       INT          NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [employees_titles_title_id] FOREIGN KEY ([title_id]) REFERENCES [dbo].[titles] ([id])
);

