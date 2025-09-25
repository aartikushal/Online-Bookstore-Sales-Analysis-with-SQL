📚 Online Bookstore Sales Analysis with SQL
📌 Project Overview

This mini project demonstrates how to analyze an online bookstore database using SQL.
The goal is to derive meaningful insights about books, customers, orders, and revenue.

The dataset consists of three main tables:

Books → book details (title, genre, author, price, stock, published year)

Customers → customer details (name, country, city)

Orders → order details (customer, book, quantity, total amount, order date)

⚙️ Technologies Used

SQL (MySQL / PostgreSQL)

Joins, Aggregations, Grouping, Window Functions

GitHub for project sharing

🗂️ Project Structure
📁 Online-Bookstore-SQL-Analysis
│── 📄 Online Bookstore Sales Analysis.sql   # SQL queries
│── 📄 Mini Project_ Online Bookstore Sales Analysis with SQL.docx  # Problem statement & guidelines
│── 📄 README.md   # Documentation

🔍 Analysis Tasks & Queries
🔹 Basic Level

Retrieve all books in the Fiction genre

Find books published after 1950

List all customers from Canada

Show orders placed in November 2023

Retrieve the total stock of books available

Find details of the most expensive book

Show all customers who ordered more than 1 quantity of a book

Retrieve all orders where total amount exceeds $20

List all distinct genres in the bookstore

Find the book with the lowest stock available

Calculate the total revenue from all orders

🔹 Intermediate Level

Retrieve the total number of books sold for each genre

Find the average price of books in the Fantasy genre

List customers who placed at least 2 orders

Find the most frequently ordered book

Show the top 3 most expensive Fantasy books

🔹 Advanced Level

Retrieve the total quantity of books sold by each author

List the cities of customers who spent more than $30

Find the top-spending customer

Calculate the remaining stock after fulfilling all orders

🗺️ ER Diagram

Here’s a simple ER diagram of the bookstore database:

erDiagram
    Books {
        int book_id PK
        varchar title
        varchar author
        varchar genre
        decimal price
        int stock
        int published_year
    }
    Customers {
        int customer_id PK
        varchar name
        varchar country
        varchar city
    }
    Orders {
        int order_id PK
        int customer_id FK
        int book_id FK
        int quantity
        decimal total_amount
        date order_date
    }

    Customers ||--o{ Orders : places
    Books ||--o{ Orders : contains

📊 Expected Outcomes

Basic level: Filtering, sorting, and simple aggregations

Intermediate level: Joins, grouping, HAVING clause

Advanced level: Customer insights, revenue analysis, stock management

🚀 How to Run

Import the database schema & data into MySQL/PostgreSQL

Run queries from Online Bookstore Sales Analysis.sql

Interpret the results to uncover insights

📌 Future Enhancements

Add visualizations (Power BI, Tableau, or Python Matplotlib/Seaborn)

Create stored procedures for recurring reports

Build a dashboard for real-time bookstore analytics
