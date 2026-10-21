-- Question 1: Top 10 highest rated books (ignoring broken rows)
SELECT title, authors, average_rating
FROM books
WHERE average_rating GLOB '[0-9]*'
ORDER BY CAST(average_rating AS REAL) DESC
LIMIT 10;

-- Question 2: Top rated books with more than 10,000 ratings
SELECT title, authors, average_rating, ratings_count
FROM books
WHERE average_rating GLOB '[0-9]*'
  AND CAST(ratings_count AS INTEGER) > 10000
ORDER BY CAST(average_rating AS REAL) DESC
LIMIT 10;

-- Question 3: Authors with the most books
SELECT authors, COUNT(*) AS number_of_books
FROM books
WHERE average_rating GLOB '[0-9]*'
GROUP BY authors
ORDER BY number_of_books DESC
LIMIT 10;