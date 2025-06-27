# 3358. Books with NULL Ratings

## Problem Description

You are given a DataFrame named `books` with the following columns:
- `book_id` (int): The unique identifier for each book.
- `title` (string): The title of the book.
- `author` (string): The author of the book.
- `published_year` (int): The year the book was published.
- `rating` (float or decimal): The book’s rating, which can be NULL (missing).

Write a solution to find all books **that have not been rated yet** (i.e., have a NULL rating).

Return the result as a DataFrame with columns:  
`book_id`, `title`, `author`, `published_year`  
ordered by `book_id` in ascending order.

---

## Example

**Input DataFrame:**

| book_id | title                  | author           | published_year | rating |
|---------|------------------------|------------------|---------------|--------|
| 1       | The Great Gatsby       | F. Scott         | 1925          | 4.5    |
| 2       | To Kill a Mockingbird  | Harper Lee       | 1960          | NULL   |
| 3       | Pride and Prejudice    | Jane Austen      | 1813          | 4.8    |
| 4       | The Catcher in the Rye | J.D. Salinger    | 1951          | NULL   |
| 5       | Animal Farm            | George Orwell    | 1945          | 4.2    |
| 6       | Lord of the Flies      | William Golding  | 1954          | NULL   |

**Output DataFrame:**

| book_id | title                  | author          | published_year |
|---------|------------------------|-----------------|---------------|
| 2       | To Kill a Mockingbird  | Harper Lee      | 1960          |
| 4       | The Catcher in the Rye | J.D. Salinger   | 1951          |
| 6       | Lord of the Flies      | William Golding | 1954          |

**Explanation:**  
The books with `book_id` 2, 4, and 6 have NULL ratings.  
These books are included in the result table, which is ordered by `book_id` ascending.

---