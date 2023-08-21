BULK INSERT Client
   FROM 'C:\Users\ARTEM\Desktop\Data\Clients.txt'
   WITH
      (
         FIELDTERMINATOR = '|'
         , ROWTERMINATOR = '\n'
      );

BULK INSERT Position
   FROM 'C:\Users\ARTEM\Desktop\Data\Positions.txt'
   WITH
      (
         FIELDTERMINATOR = '|'
         , ROWTERMINATOR = '\n'
      );

BULK INSERT Employee
   FROM 'C:\Users\ARTEM\Desktop\Data\Employers.txt'
   WITH
      (
         FIELDTERMINATOR = '|'
         , ROWTERMINATOR = '\n'
      );
	  
BULK INSERT Invoice
   FROM 'C:\Users\ARTEM\Desktop\Data\Invoices.txt'
   WITH
      (
         FIELDTERMINATOR = '|'
         , ROWTERMINATOR = '\n'
      );

BULK INSERT [Invoice/Tour]
   FROM 'C:\Users\ARTEM\Desktop\Data\InvoiceToursSmall.txt'
   WITH
      (
         FIELDTERMINATOR = '|'
         , ROWTERMINATOR = '\n'
      );

BULK INSERT Tour
   FROM 'C:\Users\ARTEM\Desktop\Data\Tours.txt'
   WITH
      (
         FIELDTERMINATOR = '|'
         , ROWTERMINATOR = '\n'
      );

BULK INSERT Transportation
   FROM 'C:\Users\ARTEM\Desktop\Data\Transportations.txt'
   WITH
      (
         FIELDTERMINATOR = '|'
         , ROWTERMINATOR = '\n'
      );

BULK INSERT Hotel
	FROM 'C:\Users\ARTEM\Desktop\Data\Hotels.txt'
	WITH
	    (
	      FIELDTERMINATOR = '|'
	      , ROWTERMINATOR = '\n'
	    );

BULK INSERT City
	FROM 'C:\Users\ARTEM\Desktop\Data\Cities.txt'
	WITH
	    (
	      FIELDTERMINATOR = '|'
	      , ROWTERMINATOR = '\n'
	    );
BULK INSERT Climate
	FROM 'C:\Users\ARTEM\Desktop\Data\Climates.txt'
	WITH
	    (
	      FIELDTERMINATOR = '|'
	      , ROWTERMINATOR = '\n'
	    );
BULK INSERT RoomType
	FROM 'C:\Users\ARTEM\Desktop\Data\RoomTypes.txt'
	WITH
	    (
	      FIELDTERMINATOR = '|'
	      , ROWTERMINATOR = '\n'
	    );
BULK INSERT [Hotel/RoomType]
	FROM 'C:\Users\ARTEM\Desktop\Data\HotelRoomTypes.txt'
	WITH
	    (
	      FIELDTERMINATOR = '|'
	      , ROWTERMINATOR = '\n'
	    );


