CREATE TABLE [dbo].[Transportation] (
    [Id]                        INT            IDENTITY (1, 1) NOT NULL,
    [TransportationCompanyName] NVARCHAR (100) NOT NULL,
    [TransportationType]        NVARCHAR (100) NOT NULL,
    [Amount]                    MONEY          NOT NULL,
    [Class]                     NVARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

