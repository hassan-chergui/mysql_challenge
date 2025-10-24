-- creating a database named Bookstore
CREATE DATABASE Bookstore;
-- Switching to Bookstore
USE Bookstore;
-- Table for authors
CREATE TABLE Authors ( author_id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(100) NOT NULL, country VARCHAR(50) );
-- Table for books
CREATE TABLE Books ( book_id INT PRIMARY KEY AUTO_INCREMENT, title VARCHAR(150) NOT NULL, published_year INT, author_id INT, FOREIGN KEY (author_id) REFERENCES Authors(author_id) );
-- Display the structure of the Authors table
DESC Authors;
-- Display the structure of the Books table
DESC Books;
-- Delete the Books table and all its data
DROP TABLE Books;
-- Recreate the Books table
CREATE TABLE Books ( book_id INT PRIMARY KEY AUTO_INCREMENT, title VARCHAR(150) NOT NULL, published_year INT, author_id INT, FOREIGN KEY (author_id) REFERENCES Authors(author_id) );
-- Exiting Bookstore database
USE mysql;
-- Delete Bookstore database
DROP DATABASE Bookstore;
-- Recreate Bookstore database
CREATE DATABASE Bookstore;
-- Create tables Authors and Books
CREATE TABLE Authors ( author_id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(100) NOT NULL, country VARCHAR(50) );
CREATE TABLE Books ( book_id INT PRIMARY KEY AUTO_INCREMENT, title VARCHAR(150) NOT NULL, published_year INT, author_id INT, FOREIGN KEY (author_id) REFERENCES Authors(author_id) );
