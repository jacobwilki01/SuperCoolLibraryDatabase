-- CREATE DATABASE
CREATE DATABASE IF NOT EXISTS libraryDatabase;
USE libraryDatabase;

-- CREATE TABLES
CREATE TABLE User (
    UserID Int,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    UserStatus VARCHAR(10),
    OutstandingFees INT,
    DateOfBirth DATE,
    Email VARCHAR(100),
    PhoneNumber INT,
    UserType VARCHAR(4),
    PRIMARY KEY (UserID)
);

CREATE TABLE Loan (
    LoanID Int,
    UserID Int,
    Issued Date,
    Due Date,
    Returned Date,
    PRIMARY KEY (LoanID),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

CREATE TABLE Librarian (
    LibrarianID Int,
    UserID Int,
    PRIMARY KEY (LibrarianID),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

CREATE TABLE Administrator (
    AdminID Int,
    UserID Int,
    PRIMARY KEY (AdminID),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

CREATE TABLE Author (
    AuthorID Int,
    AuthorName VARCHAR(100),
    DateOfBirth DATE,
    PRIMARY KEY (AuthorID)
);

CREATE TABLE Publisher (
    PublisherID Int,
    PublisherName VARCHAR(100),
    Location VARCHAR(100),
    PRIMARY KEY (PublisherID)
);

CREATE TABLE Book (
    BookID Int,
    Title VARCHAR(100),
    AuthorID Int,
    ISBN VARCHAR(100),
    PublicationYear YEAR,
    TotalCopies INT,
    PublisherID INT,
    Genre VARCHAR(100),
    Available BOOL,
    PRIMARY KEY (BookID),
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID),
    FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID)
);

CREATE TABLE LoanContains (
    BookID Int,
    LoanID Int,
    PRIMARY KEY (BookID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (LoanID) REFERENCES Loan(LoanID)
);

CREATE TABLE AddsUser (
    UserID Int,
    AdminID Int,
    PRIMARY KEY (UserID),
    FOREIGN KEY (UserID) REFERENCES User(UserID),
    FOREIGN KEY (AdminID) REFERENCES Administrator(AdminId)
);

CREATE TABLE DeletesUser (
    UserID Int,
    AdminID Int,
    PRIMARY KEY (UserID),
    FOREIGN KEY (UserID) REFERENCES User(UserID),
    FOREIGN KEY (AdminID) REFERENCES Administrator(AdminId)
);

CREATE TABLE AddsBook (
    BookID Int,
    AdminID Int,
    PRIMARY KEY (BookID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (AdminID) REFERENCES Administrator(AdminId)
);

CREATE TABLE DeletesBook (
    BookID Int,
    AdminID Int,
    PRIMARY KEY (BookID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (AdminID) REFERENCES Administrator(AdminId)
);

CREATE TABLE ChecksIn (
    BookID Int,
    LibrarianID Int,
    PRIMARY KEY (BookID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (LibrarianID) REFERENCES Librarian(LibrarianID)
);