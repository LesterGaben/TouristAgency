CREATE TABLE [dbo].[City] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [ClimateId] INT            NOT NULL,
    [Name]      NVARCHAR (100) NOT NULL,
    [Country]   NVARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_City_Climate] FOREIGN KEY ([ClimateId]) REFERENCES [dbo].[Climate] ([Id])
);

