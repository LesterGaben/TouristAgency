CREATE TABLE [dbo].[Invoice/Tour] (
    [InvoiceId] INT NOT NULL,
    [TourId]    INT NOT NULL,
    PRIMARY KEY CLUSTERED ([InvoiceId] ASC, [TourId] ASC),
    CONSTRAINT [FK_InvoiceTour_Invoice] FOREIGN KEY ([InvoiceId]) REFERENCES [dbo].[Invoice] ([Id]),
    CONSTRAINT [FK_InvoiceTour_Tour] FOREIGN KEY ([TourId]) REFERENCES [dbo].[Tour] ([Id])
);

