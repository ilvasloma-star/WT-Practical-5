CREATE DATABASE wt;
USE wt;

CREATE TABLE ebookshop (
  book_id VARCHAR(10),
  book_title VARCHAR(50),
  book_author VARCHAR(50),
  book_price INT,
  quantity INT
);

INSERT INTO ebookshop VALUES 
('1','Java Basics','James Gosling',500,10),
('2','Servlet Guide','Oracle',600,5),
('3','Web Dev','John Doe',450,8);
