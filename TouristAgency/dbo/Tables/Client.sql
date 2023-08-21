CREATE TABLE [dbo].[Client] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [FullName]    NVARCHAR (100) NOT NULL,
    [Email]       NVARCHAR (100) NULL,
    [PhoneNumber] NVARCHAR (100) NOT NULL,
    [Address]     NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([Email] ASC),
    UNIQUE NONCLUSTERED ([PhoneNumber] ASC)
);

