# 1683. Invalid Tweets

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, String, Filtering, Length

---

## 🧾 Problem Description

Table: Tweets

| Column Name | Type    |
|-------------|---------|
| tweet_id    | int     |
| content     | varchar |

- `tweet_id` is the **Primary Key** (unique for each tweet).
- `content` consists of alphanumeric characters, `'!'`, and spaces.
- No other special characters are included.
- Each row represents a tweet posted on the social media app.

---

## 🎯 Goal

> Return the `tweet_id` of tweets where the number of characters in `content` is **strictly greater than 15**.

- The result can be in **any order**.

---

## 🔍 Explanation
- LENGTH(content) calculates how many characters the tweet uses.
- WHERE LENGTH(content) > 15 filters out valid tweets and returns only invalid ones.
- Only the tweet_id column is selected, as required by the problem.