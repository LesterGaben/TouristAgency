CREATE TABLE [dbo].[Position] (
    [Id]     INT            IDENTITY (1, 1) NOT NULL,
    [Name]   NVARCHAR (100) NOT NULL,
    [Salary] MONEY          NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [CK_Position_Salary] CHECK ([Salary]>=(0))
);

