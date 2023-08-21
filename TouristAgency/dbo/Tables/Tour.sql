CREATE TABLE [dbo].[Tour] (
    [Id]               INT IDENTITY (1, 1) NOT NULL,
    [HotelId]          INT NOT NULL,
    [TransportationId] INT NOT NULL,
    [DurationInDays]   INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [CK_Tour_DurationInDays] CHECK ([DurationInDays]>=(1)),
    CONSTRAINT [FK_Tour_Hotel] FOREIGN KEY ([HotelId]) REFERENCES [dbo].[Hotel] ([Id]),
    CONSTRAINT [FK_Tour_Transportation] FOREIGN KEY ([TransportationId]) REFERENCES [dbo].[Transportation] ([Id])
);

