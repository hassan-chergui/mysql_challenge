
-- Join Authors and Books
SELECT a.name AS 'Author Name', b.title AS 'Book Title', a.country AS Country FROM Books b JOIN Authors a ON b.author_id = a.author_id;

-- Count Books per Author
SELECT a.name AS 'Author Name', COUNT(b.book_id) AS 'Book Count' FROM Books b JOIN Authors a ON a.author_id = b.author_id GROUP BY a.author_id;

-- Authors with More Than 1 Book
SELECT a.name AS 'Author Name', COUNT(b.book_id) AS 'Book Count' FROM Books b JOIN Authors a ON a.author_id = b.author_id  GROUP BY a.author_id HAVING COUNT(b.book_id)>1;


-- Oldest Book
SELECT b.title AS 'Book Title', min(b.published_year) AS 'Published Year' FROM Books b JOIN Authors a ON a.author_id = b.author_id;

-- Average Publication Year
SELECT AVG(b.published_year) AS 'Average Publication Year' FROM Books b JOIN Authors a ON a.author_id = b.author_id;

-- Authors per Country
SELECT a.country AS 'Country', COUNT(a.author_id) AS 'Author Count' FROM Authors a GROUP BY a.country;
