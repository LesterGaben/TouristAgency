CREATE TABLE [dbo].[Employee] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [PositionId]  INT            NOT NULL,
    [FullName]    NVARCHAR (100) NOT NULL,
    [PhoneNumber] NVARCHAR (100) NOT NULL,
    [Address]     NVARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Employee_Position] FOREIGN KEY ([PositionId]) REFERENCES [dbo].[Position] ([Id]),
    UNIQUE NONCLUSTERED ([PhoneNumber] ASC)
);

