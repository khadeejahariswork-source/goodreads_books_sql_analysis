# Goodreads Books Analysis (SQL)

Exploring about 11,000 Goodreads books with SQL to find out which books and authors readers love most.

## Data
Goodreads Books dataset from Kaggle:
https://www.kaggle.com/datasets/jealousleopard/goodreadsbooks

## Tools
- SQL (SQLite)
- DB Browser for SQLite
- Power BI dashboard: coming soon

## Questions I answered
1. Which books have the highest ratings?
2. Which books are best rated when at least 10,000 people rated them?
3. Which authors have the most books in the dataset?

## What I found
- Books with a perfect 5.0 rating were rated by very few people, so I added a minimum-ratings filter to make the list fair.
- With at least 10,000 ratings, *The Complete Calvin and Hobbes* ranked #1 (4.82). Calvin and Hobbes books took 5 of the top 10 spots.
- Stephen King and P.G. Wodehouse tied for the most books (40 each).

## Data cleaning
4 of 11,127 rows had commas inside author names, which shifted the columns. I excluded them from my queries.

## Limitations
- Counts only cover books in this dataset, not everything an author has written.
- Books with several authors are counted as separate groups.

## Files
- `01_top_rated_books.sql`: all three queries
- `books.csv`: the data

## Next steps
- Build a Power BI dashboard from this data
