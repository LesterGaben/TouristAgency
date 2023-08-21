CREATE TABLE [dbo].[Hotel/RoomType] (
    [HotelId]    INT   NOT NULL,
    [RoomTypeId] INT   NOT NULL,
    [DayPrice]   MONEY NOT NULL,
    PRIMARY KEY CLUSTERED ([HotelId] ASC, [RoomTypeId] ASC),
    CONSTRAINT [FK_HotelRoomType_Hotel] FOREIGN KEY ([HotelId]) REFERENCES [dbo].[Hotel] ([Id]),
    CONSTRAINT [FK_HotelRoomType_RoomType] FOREIGN KEY ([RoomTypeId]) REFERENCES [dbo].[RoomType] ([Id])
);

