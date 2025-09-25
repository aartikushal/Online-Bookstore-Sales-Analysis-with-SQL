------------
----Basic Level
--1.	Retrieve all books in the “Fiction” genre.
------------

select * from books where genre = 'Fiction';

-------------
2.	Find books published after the year 1950.
-------------
select * from books where published_year >1950;

-------------
3.	List all customers from Canada.
-------------
select * from customers where upper(country) = upper('Canada');

--------------
4.	Show orders placed in November 2023.
--------------
select * from orders 
where order_date between '2023-11-01' and '2023-11-30';

--------------
5.	Retrieve the total stock of books available.
--------------
select sum(stock) from books where stock != 0;

--------------
6.	Find the details of the most expensive book.
--------------
select * from books where price = (select max(price) from books);

--------------
7.	Show all customers who ordered more than 1 quantity of a book.
--------------
select b.* 
from books b,
customers c,
orders o
where b.book_id = o.book_id
and c.customer_id = o.customer_id
and o.quantity > 1;

--------------
8.	Retrieve all orders where the total amount exceeds $20.
---------------
select * from orders where total_amount >20;

--------------
9.	List all distinct genres in the bookstore.
--------------
select distinct genre from books;

--------------
10.	Find the book with the lowest stock available.
--------------
select * from books where stock <2;

-------------
11.	Calculate the total revenue from all orders.
-------------
select sum(total_amount) from orders;

-------------
12.	Retrieve the total number of books sold for each genre.
-------------
select count(book_id),genre
from books 
group by genre;

--------------
13.	Find the average price of books in the “Fantasy” genre.
--------------
select avg(price)
from books 
where genre = 'Fantasy';

---------------
14.	List customers who have placed at least 2 orders.
---------------
select c.name,count(o.customer_id)
from customers c,
orders o
where c.customer_id = o.customer_id
group by c.name
having count(o.customer_id)>2;


-----------------
15.	Find the most frequently ordered book.
-----------------
SELECT b.book_id, 
       b.title, 
       COUNT(od.book_id) AS order_count
FROM Orders od
JOIN Books b ON od.book_id = b.book_id
GROUP BY b.book_id, b.title
ORDER BY order_count DESC
LIMIT 1;

-------------------
16.	Show the top 3 most expensive books of the “Fantasy” genre.
---------------
SELECT book_id, title, genre, price
FROM Books
WHERE genre = 'Fantasy'
ORDER BY price DESC
LIMIT 3;

-----------------
17.	Retrieve the total quantity of books sold by each author.
-----------------
SELECT b.author,
       SUM(od.quantity) AS total_books_sold
FROM Orders od
JOIN Books b ON od.book_id = b.book_id
GROUP BY b.author
ORDER BY total_books_sold DESC;

-------------
18.	List the cities of customers who spent over $30.
---------------
SELECT c.city,name,SUM(o.total_amount)
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.city,name
HAVING SUM(o.total_amount) > 30;

--------------
19.	Find the customer who spent the most on orders.
--------------
SELECT c.name,
       SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 1;

--------------
20.	Calculate the stock remaining after fulfilling all orders.
--------------
SELECT b.book_id,
       b.title,
       b.stock - COALESCE(SUM(od.quantity), 0) AS remaining_stock
FROM Books b
LEFT JOIN Orders od ON b.book_id = od.book_id
GROUP BY b.book_id, b.title, b.stock;

