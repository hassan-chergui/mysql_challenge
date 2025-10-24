-- Switching to Bookstore
USE Bookstore;

-- Insert 3 authors
INSERT INTO Authors (name, country) VALUES ('J.K. Rowling', 'UK');
INSERT INTO Authors (name, country) VALUES ('George R.R. Martin', 'USA');
INSERT INTO Authors (name, country) VALUES ('Haruki Murakami', 'Japan');

-- inserting 4 books
INSERT INTO Books (title, published_year, author_id) VALUES ('Harry Potter and the Philosopher''’s Stone',1997,(SELECT author_id FROM Authors WHERE name = 'J.K. Rowling'));
INSERT INTO Books (title, published_year, author_id) VALUES ('A Game of Thrones',1996,(SELECT author_id FROM Authors WHERE name = 'George R.R. Martin'));
INSERT INTO Books (title, published_year, author_id) VALUES ('Kafka on the Shore',2002,(SELECT author_id FROM Authors WHERE name = 'Haruki Murakami'));
INSERT INTO Books (title, published_year, author_id) VALUES ('Norwegian Wood',1987,(SELECT author_id FROM Authors WHERE name = 'Haruki Murakami'));

-- display all authors and books
select * from Authors;
select * from Books;

-- display titles of books published after 1990
SELECT title FROM Books WHERE published_year > 1990;

-- display books written by Haruki Murakami
SELECT Books.* FROM Books JOIN Authors ON Books.author_id=Authors.author_id WHERE Authors.name='Haruki Murakami';

-- Change published year to 1989
UPDATE Books SET published_year = 1989 WHERE title='Norwegian Wood';

-- update country name to united kingdom
UPDATE Authors SET country = 'United Kingdom' WHERE name='J.K. Rowling';

-- remove the book: Kafka on the Shore
DELETE FROM Books WHERE title='Kafka on the Shore';

-- remove author: George R.R. Martin
DELETE FROM Books WHERE title='A Game of Thrones';
DELETE FROM Authors WHERE name='George R.R. Martin';
