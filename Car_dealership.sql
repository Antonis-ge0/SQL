CREATE TABLE Engineer (
  ID INTEGER  NOT NULL  ,
  Name VARCHAR(20)    ,
  Surname VARCHAR(20)      ,
PRIMARY KEY(ID));



CREATE TABLE Seller (
  ID INTEGER  NOT NULL  ,
  Name VARCHAR(20)    ,
  Surname VARCHAR(20)      ,
PRIMARY KEY(ID));



CREATE TABLE Ticket (
  ID INTEGER  NOT NULL  ,
  Import Date VARCHAR(20)    ,
  Delivery Date VARCHAR(20)    ,
  Infrormation VARCHAR(255)    ,
  Price VARCHAR(20)      ,
PRIMARY KEY(ID));



CREATE TABLE Car (
  ID INTEGER  NOT NULL  ,
  Ticket_ID INTEGER  NOT NULL  ,
  Company VARCHAR(20)    ,
  Model VARCHAR(45)    ,
  Colour VARCHAR(20)    ,
  Year_2 VARCHAR(45)    ,
  Serial Number VARCHAR(20)    ,
  Condition CHAR(1)      ,
PRIMARY KEY(ID, Ticket_ID)  ,
  FOREIGN KEY(Ticket_ID)
    REFERENCES Ticket(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE INDEX Car_FKIndex1 ON Car (Ticket_ID);



CREATE TABLE Service (
  IDengineer INTEGER  NOT NULL  ,
  Ticket_ID INTEGER  NOT NULL  ,
  Engineer_ID INTEGER  NOT NULL  ,
  Time VARCHAR(20)    ,
  Information VARCHAR(255)      ,
PRIMARY KEY(IDengineer, Ticket_ID, Engineer_ID)    ,
  FOREIGN KEY(Ticket_ID)
    REFERENCES Ticket(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Engineer_ID)
    REFERENCES Engineer(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE INDEX Service_FKIndex1 ON Service (Ticket_ID);
CREATE INDEX Service_FKIndex2 ON Service (Engineer_ID);



CREATE TABLE Sales_Invoice (
  ID INTEGER  NOT NULL  ,
  Seller_ID INTEGER  NOT NULL  ,
  Car_Ticket_ID INTEGER  NOT NULL  ,
  Car_ID INTEGER  NOT NULL  ,
  Date VARCHAR(20)    ,
  Price VARCHAR(20)      ,
PRIMARY KEY(ID, Seller_ID, Car_Ticket_ID, Car_ID)    ,
  FOREIGN KEY(Seller_ID)
    REFERENCES Seller(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Car_ID, Car_Ticket_ID)
    REFERENCES Car(ID, Ticket_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE INDEX Sales Invoice_FKIndex1 ON Sales_Invoice (Seller_ID);
CREATE INDEX Sales Invoice_FKIndex2 ON Sales_Invoice (Car_ID, Car_Ticket_ID);



CREATE TABLE Customer (
  ID INTEGER  NOT NULL  ,
  Sales_Invoice_ID INTEGER  NOT NULL  ,
  Ticket_ID INTEGER  NOT NULL  ,
  Sales_Invoice_Car_ID INTEGER  NOT NULL  ,
  Sales_Invoice_Car_Ticket_ID INTEGER  NOT NULL  ,
  Sales_Invoice_Seller_ID INTEGER  NOT NULL  ,
  Name VARCHAR(20)    ,
  Surname VARCHAR(20)    ,
  Phone Number VARCHAR(20)    ,
  City VARCHAR(20)    ,
  Postcode VARCHAR(20)    ,
  Address VARCHAR(20)    ,
  Number VARCHAR(20)      ,
PRIMARY KEY(ID, Sales_Invoice_ID, Ticket_ID, Sales_Invoice_Car_ID, Sales_Invoice_Car_Ticket_ID, Sales_Invoice_Seller_ID)    ,
  FOREIGN KEY(Sales_Invoice_ID, Sales_Invoice_Seller_ID, Sales_Invoice_Car_Ticket_ID, Sales_Invoice_Car_ID)
    REFERENCES Sales_Invoice(ID, Seller_ID, Car_Ticket_ID, Car_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Ticket_ID)
    REFERENCES Ticket(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);


CREATE INDEX Customer_FKIndex1 ON Customer (Sales_Invoice_ID, Sales_Invoice_Seller_ID, Sales_Invoice_Car_Ticket_ID, Sales_Invoice_Car_ID);
CREATE INDEX Customer_FKIndex2 ON Customer (Ticket_ID);





