--all from oprahs
Select * from oprahs

--all from new_york_times

Select * from new_york_times

--Select * from book_description

Select * from book_description

--Select all titles in english less than 500 pages with a avg_rating greater than 4

SELECT *
FROM book_description
WHERE avg_rating >= 4

-- Select books with matching isbn

SELECT *
FROM book_description b, new_york_times n
Where n.isbn = b.isbn

SELECT *
FROM book_description b, oprahs o
Where b.isbn = o.isbn

--Select books that appear in all three tables

SELECT b.title, b.avg_rating, o.bookclub_year, n.bestseller_year
FROM book_description b, oprahs o, new_york_times n
Where b.isbn = o.isbn
and b.isbn = n.isbn

