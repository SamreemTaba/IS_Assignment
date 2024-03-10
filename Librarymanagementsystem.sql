-- Create a database named "library_management_system"
CREATE DATABASE library_management_system1;

-- Use the newly created database
USE library_management_system1;

-- Create tables in the database
CREATE TABLE Books1 (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(100),
    PublicationYear INT,
    ISBN VARCHAR(20) UNIQUE,
    Quantity INT,
    AvailableQuantity INT,
    Genre VARCHAR(50)
);

CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(15),
    Address VARCHAR(255)
);

CREATE TABLE BorrowHistory (
    BorrowID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,
    MemberID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);