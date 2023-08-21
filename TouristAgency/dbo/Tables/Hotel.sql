CREATE TABLE [dbo].[Hotel] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [CityId]     INT            NOT NULL,
    [NumOfStars] INT            NOT NULL,
    [Name]       NVARCHAR (100) NOT NULL,
    [Address]    NVARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [CK_Hotel_NumOfStars] CHECK ([NumOfStars]>=(1) AND [NumOfStars]<=(5)),
    CONSTRAINT [FK_Hotel_City] FOREIGN KEY ([CityId]) REFERENCES [dbo].[City] ([Id])
);

