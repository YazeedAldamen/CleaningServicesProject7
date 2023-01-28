
CREATE TABLE Bookings
(
  BookingID INT NOT NULL,
  ClientName VARCHAR NOT NULL,
  ClientPhone NUMERIC(10) NOT NULL,
  Address VARCHAR(Max) NOT NULL,
  EmployeeID VARCHAR ,
  Status VARCHAR(50) NOT NULL,
  ClientEmail VARCHAR(255) NOT NULL,
  CityID INT NOT NULL,
  PRIMARY KEY (BookingID),
  FOREIGN KEY (CityID) REFERENCES Cities(CityID),
  UNIQUE (ClientEmail)
);

CREATE TABLE Intermediates
(
  ServiceID INT NOT NULL,
  BookingID INT NOT NULL,
  FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID),
  FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);


CREATE TABLE Services
(
  ServiceID INT NOT NULL,
  ServiceName VARCHAR(50) NOT NULL,
  PRIMARY KEY (ServiceID)
);


CREATE TABLE Ratings
(
  Rating INT NOT NULL,
  RatingID INT NOT NULL,
  Comment Text,
  BookingID INT NOT NULL,
  PRIMARY KEY (RatingID),
  FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);


CREATE TABLE Cities
(
  CityID INT NOT NULL,
  CityName VARCHAR NOT NULL,
  PRIMARY KEY (CityID)
);


CREATE TABLE Employees
(
  EmployeeID INT NOT NULL,
  EmployeeName INT NOT NULL,
  EmployeePhone INT NOT NULL,
  EmployeeEmail INT NOT NULL,
  Password INT NOT NULL
);