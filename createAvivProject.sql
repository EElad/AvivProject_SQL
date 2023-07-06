DROP DATABASE Aviv_Project;
CREATE DATABASE Aviv_Project;
USE Aviv_Project;

-- Table 1: customers

CREATE TABLE customers (
   ID INT(20) PRIMARY KEY,
   First_name VARCHAR(50),
   Last_name VARCHAR(50),
   ContactID INT(20) 
   -- ,
   -- FOREIGN KEY (ContactID) REFERENCES contact_list(ContactID)

);

-- Table 2: contact list

CREATE TABLE contact_list (
   ContactID INT(20) PRIMARY KEY,
   CustomerID INT(20),
   Phone VARCHAR(20),
   AddressID INT(20) -- ,
   -- FOREIGN KEY (CustomerID) REFERENCES customers(ID),
   -- FOREIGN KEY (Phone) REFERENCES phones(Phone),
   -- FOREIGN KEY (AddressID) REFERENCES address(AddressID)

);

-- Table 3: phones

CREATE TABLE phones (
   Phone VARCHAR(20) PRIMARY KEY,
   Mobile_number VARCHAR(15),
   Mobile_area_code VARCHAR(10),
   Mobile_country_code VARCHAR(10),
   Home_number VARCHAR(15),
   Home_area_code VARCHAR(10),
   Home_country_code VARCHAR(10),
   FAX_number VARCHAR(15),
   FAX_area_code VARCHAR(10),
   FAX_country_code VARCHAR(10)
);

-- Table 4: address

CREATE TABLE address (
   AddressID INT(20) PRIMARY KEY,
   CustomerID INT(20),
   Street_name VARCHAR(100),
   Building_number VARCHAR(20),
   City VARCHAR(50),
   Country VARCHAR(50),
   ZIP_code VARCHAR(20) -- ,
 --  FOREIGN KEY (CustomerID) REFERENCES customers(ID)

);



--
-- Dumping data for table `customers`
--

INSERT INTO customers (ID, First_name, Last_name, ContactID)
VALUES 
(1, 'John', 'Doe', 1),
(2, 'Jane', 'Smith', 2);

-- --------------------------------------------------------
--
-- Dumping data for table `contact_list`
--

INSERT INTO contact_list (ContactID, CustomerID, Phone, AddressID)
VALUES (1, 1, '123-456-7890', 1),
(2, 2, '987-654-3210', 2);

-- --------------------------------------------------------
--
-- Dumping data for table `phones`
--

INSERT INTO phones (Phone, Mobile_number, Mobile_area_code, Mobile_country_code)
VALUES ('123-456-7890', '555-1234', '555', '1');

INSERT INTO phones (Phone, Home_number, Home_area_code, Home_country_code)
VALUES ('987-654-3210', '555-4321', '555', '1');


-- --------------------------------------------------------
--
-- Dumping data for table `address`
--

INSERT INTO address (AddressID, CustomerID, Street_name, Building_number, City, Country, ZIP_code)
VALUES (1, 1, '123 Main St', '1A', 'New York', 'USA', '12345');

INSERT INTO address (AddressID, CustomerID, Street_name, Building_number, City, Country, ZIP_code)
VALUES (2, 2, '456 Elm St', '2B', 'Los Angeles', 'USA', '67890');

-- --------------------------------------------------------
--
-- Dumping data for table `TABLE`
--

-- --------------------------------------------------------
--
-- Inserting a customer with contact information and address
-- Inserting a customer
INSERT INTO customers (ID, First_name, Last_name, ContactID)
VALUES (3, 'David', 'The-King', 33);

-- Inserting contact information
INSERT INTO contact_list (ContactID, CustomerID, Phone, AddressID)
VALUES (33, 3, '097658435', 333);

-- Inserting phone details
INSERT INTO phones (Phone, Mobile_number, Mobile_area_code, Mobile_country_code)
VALUES ('097658435', '0507658435', '+1', 'US');

-- Inserting address details
INSERT INTO address (AddressID, CustomerID, Street_name, Building_number, City, Country, ZIP_code)
VALUES (333, 3, 'King-George', '23', 'Tel-Aviv', 'ISR', '33333');

-- Inserting a customer with contact information but without an address
-- Inserting data into customers table
INSERT INTO customers (ID, First_name, Last_name, ContactID)
VALUES (4, 'Michael', 'Brown', 4);

-- Inserting data into contact_list table
INSERT INTO contact_list (ContactID, CustomerID, Phone, AddressID)
VALUES (4, 4, '1111111111', NULL);

-- Inserting data into phones table
INSERT INTO phones (Phone, Mobile_number, Mobile_area_code, Mobile_country_code)
VALUES ('1111111111', '1111111111', '111', '1');

-- Inserting a customer with multiple contact information and address
-- Inserting data into customers table
INSERT INTO customers (ID, First_name, Last_name, ContactID)
VALUES (5, 'Jane', 'Smith', 5);

-- Inserting data into contact_list table for the first contact
INSERT INTO contact_list (ContactID, CustomerID, Phone, AddressID)
VALUES (5, 5, '9876543510', 5);

-- Inserting data into contact_list table for the second contact
INSERT INTO contact_list (ContactID, CustomerID, Phone, AddressID)
VALUES (5, 5, '5555555555', 5);

-- Inserting data into phones table
INSERT INTO phones (Phone, Mobile_number, Mobile_area_code, Mobile_country_code)
VALUES ('9876543510', '9876543510', '987', '1');

-- Inserting data into phones table
INSERT INTO phones (Phone, Home_number, Home_area_code, Home_country_code)
VALUES ('5555555555', '5555555555', '555', '1');

-- Inserting data into address table for the first address
INSERT INTO address (AddressID, CustomerID, Street_name, Building_number, City, Country, ZIP_code)
VALUES (5, 5, 'First Avenue', '456', 'Los Angeles', 'USA', '54351');

-- Inserting data into address table for the second address
INSERT INTO address (AddressID, CustomerID, Street_name, Building_number, City, Country, ZIP_code)
VALUES (5, 5, 'Second Street', '789', 'Chicago', 'USA', '67890');

-- --------------------------------------------------------
--
--To retrieve all customers with their information from all tables
--By using LEFT JOIN, it ensures 
--that even if a customer does not have contact or address information,
-- they will still be included in the result set.
--

-- SELECT c.ID, c.First_name, c.Last_name, cl.Phone, cl.AddressID, p.Mobile_number, p.Home_number, p.FAX_number, a.Street_name, a.Building_number, a.City, a.Country, a.ZIP_code
-- FROM customers c
-- LEFT JOIN contact_list cl ON c.ContactID = cl.ContactID
-- LEFT JOIN phones p ON cl.Phone = p.Phone
-- LEFT JOIN address a ON cl.AddressID = a.AddressID;
