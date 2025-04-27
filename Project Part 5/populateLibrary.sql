USE libraryDatabase;

-- LOAD DATA
LOAD DATA 
    LOCAL
    INFILE './LibraryData/User.csv'
    INTO TABLE User
    FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
    IGNORE 1 ROWS;

LOAD DATA 
    LOCAL
    INFILE './LibraryData/Loan.csv'
    INTO TABLE Loan
    FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
    IGNORE 1 ROWS;

LOAD DATA 
    LOCAL
    INFILE './LibraryData/Librarian.csv'
    INTO TABLE Librarian
    FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
    IGNORE 1 ROWS;

LOAD DATA 
    LOCAL
    INFILE './LibraryData/Administrator.csv'
    INTO TABLE Administrator
    FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
    IGNORE 1 ROWS;

LOAD DATA 
    LOCAL
    INFILE './LibraryData/Author.csv'
    INTO TABLE Author
    FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
    IGNORE 1 ROWS;

LOAD DATA 
    LOCAL
    INFILE './LibraryData/Publisher.csv'
    INTO TABLE Publisher
    FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
    IGNORE 1 ROWS;

LOAD DATA 
    LOCAL
    INFILE './LibraryData/Book.csv'
    INTO TABLE Book
    FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
    IGNORE 1 ROWS;

LOAD DATA 
    LOCAL
    INFILE './LibraryData/AddsBook.csv'
    INTO TABLE AddsBook
    FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
    IGNORE 1 ROWS;

LOAD DATA 
    LOCAL
    INFILE './LibraryData/DeletesBook.csv'
    INTO TABLE DeletesBook
    FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
    IGNORE 1 ROWS;

LOAD DATA 
    LOCAL
    INFILE './LibraryData/AddsUser.csv'
    INTO TABLE AddsUser
    FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
    IGNORE 1 ROWS;

LOAD DATA 
    LOCAL
    INFILE './LibraryData/DeletesUser.csv'
    INTO TABLE DeletesUser
    FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
    IGNORE 1 ROWS;

LOAD DATA 
    LOCAL
    INFILE './LibraryData/LoanContains.csv'
    INTO TABLE LoanContains
    FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
    IGNORE 1 ROWS;

LOAD DATA 
    LOCAL
    INFILE './LibraryData/Checkin.csv'
    INTO TABLE ChecksIn
    FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
    IGNORE 1 ROWS;