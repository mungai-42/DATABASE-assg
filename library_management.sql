show databases;
use library_management;
-- Library Management Database Schema  

-- Drop existing tables to avoid conflicts (if running multiple times)  
DROP TABLE IF EXISTS Book_Loans;  
DROP TABLE IF EXISTS Books;  
DROP TABLE IF EXISTS Authors;  
DROP TABLE IF EXISTS Members;  

-- Authors table: stores authors' information  
CREATE TABLE Authors (  
    author_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for authors  
    name VARCHAR(100) NOT NULL, -- Author's name  
    biography TEXT, -- Author's biography  
    date_of_birth DATE, -- Author's date of birth  
    UNIQUE (name) -- Unique constraint on author's name  
);  

-- Books table: stores information about books  
CREATE TABLE Books (  
    book_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for books  
    title VARCHAR(255) NOT NULL, -- Title of the book  
    author_id INT NOT NULL, -- Foreign Key referencing Authors  
    publication_year YEAR, -- Year the book was published  
    isbn VARCHAR(20) UNIQUE, -- ISBN of the book  
    copies_in_stock INT DEFAULT 1, -- Number of copies available  
    FOREIGN KEY (author_id) REFERENCES Authors(author_id) ON DELETE CASCADE -- Foreign Key constraint  
);  

-- Members table: stores information about library members  
CREATE TABLE Members (  
    member_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for members  
    name VARCHAR(100) NOT NULL, -- Member's name  
    membership_date DATE NOT NULL, -- Date member joined  
    email VARCHAR(100) UNIQUE NOT NULL, -- Member's email  
    phone_number VARCHAR(15) -- Member's phone number  
);  

-- Book_Loans table: records the loans of books to members  
CREATE TABLE Book_Loans (  
    loan_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each loan  
    book_id INT NOT NULL, -- Foreign Key referencing Books  
    member_id INT NOT NULL, -- Foreign Key referencing Members  
    loan_date DATE NOT NULL, -- Date the book was loaned  
    return_date DATE, -- Date the book was returned  
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE, -- Foreign Key constraint  
    FOREIGN KEY (member_id) REFERENCES Members(member_id) ON DELETE CASCADE -- Foreign Key constraint  
);