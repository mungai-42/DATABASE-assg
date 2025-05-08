# Library Management System  

## Project Title  
Library Management System  

## Description  
The Library Management System is a database application designed to help manage library operations efficiently. It allows librarians to organize and track books, authors, members, and loans. The system ensures smooth interactions between users and enables better management of library resources.  

## Features  
- **Author Management**: Add, edit, and remove author records.  
- **Book Management**: Keep track of books, including titles, authors, publication years, and availability.  
- **Member Management**: Manage library members, including registration and contact information.  
- **Loan Management**: Record book loans to members and track return dates.  

## Database Schema  
The database consists of the following tables:  
- **Authors**: Stores details about authors.  
- **Books**: Contains book information and links to authors.  
- **Members**: Holds details of library members.  
- **Book_Loans**: Manages the relationship between books and members who borrow them.  

### Entity-Relationship Diagram (ERD)  
![ERD](ERD.png) 

## How to Run/Setup the Project  
1. **Install MySQL**: Ensure that MySQL is installed on your computer.  
2. **Create a Database**:  
   - Open MySQL Workbench (or your preferred MySQL client).  
   - Create a new database (e.g., `library_management`).  

3. **Populate the Database**: Optionally, you can add sample data to test functionalities.  

## Usage  
To interact with the database, you can use SQL queries to:  
- Add new members or authors.  
- Search for books by various criteria.  
- Track loans and returns of books.  

## Contribution  
Contributions to extend or improve this project are welcome! Please fork the repository and create a pull request with your improvements.  

## License  
This project is licensed under the MIT License.  

## Author  
Samuel Mungai (https://github.com/mungai-42) - A short description about you or your role in the project.  

**Feel free to reach out if you have any questions or need assistance!**
