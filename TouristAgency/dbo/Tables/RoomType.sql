CREATE TABLE [dbo].[RoomType] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (100) NOT NULL,
    [NumOfRooms] INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [CK_RoomType_NumOfRooms] CHECK ([NumOfRooms]>=(1))
);

