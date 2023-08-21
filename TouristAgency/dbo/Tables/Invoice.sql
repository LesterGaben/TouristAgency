CREATE TABLE [dbo].[Invoice] (
    [Id]         INT   IDENTITY (1, 1) NOT NULL,
    [ClientId]   INT   NOT NULL,
    [EmployeeId] INT   NOT NULL,
    [IsPaid]     BIT   NOT NULL,
    [Amount]     MONEY NOT NULL,
    [Date]       DATE  NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Incoice_Employee] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[Employee] ([Id]),
    CONSTRAINT [FK_Invoice_City] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Client] ([Id])
);

