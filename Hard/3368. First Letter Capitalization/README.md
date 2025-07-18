# LeetCode 3368. First Letter Capitalization

## Problem Description

Given a table `user_content` containing a unique ID and a text content, write a solution to **transform each content** according to the following rules:

- Convert the **first letter of each word** to uppercase.
- Keep **all other letters in lowercase**.
- **Preserve all existing spaces**.
- There will be **no special character** in `content_text`.

Return the result table that includes both the original text and the converted text.

---

## Example

### Input

| content_id | content_text                      |
|------------|-----------------------------------|
| 1          | hello world of SQL                |
| 2          | the QUICK brown fox               |
| 3          | data science AND machine learning |
| 4          | TOP rated programming BOOKS       |

### Output

| content_id | original_text                     | converted_text                    |
|------------|-----------------------------------|-----------------------------------|
| 1          | hello world of SQL                | Hello World Of Sql                |
| 2          | the QUICK brown fox               | The Quick Brown Fox               |
| 3          | data science AND machine learning | Data Science And Machine Learning |
| 4          | TOP rated programming BOOKS       | Top Rated Programming Books       |

---