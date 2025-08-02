# LeetCode 3150. Invalid Tweets II

## Problem Statement

Given a table `Tweets` with the following schema:

| Column Name | Type    |
|-------------|---------|
| tweet_id    | int     |
| content     | varchar |

- `tweet_id` is the primary key for this table.
- This table contains all the tweets in a social media app.

A tweet is considered **invalid** if it meets **any** of the following criteria:
- It exceeds **140 characters** in length.
- It has **more than 3 mentions** (mentions are indicated by '@').
- It includes **more than 3 hashtags** (hashtags are indicated by '#').

Write a SQL query to return the `tweet_id` of all invalid tweets, ordered by `tweet_id` in ascending order.

## Example

### Input

**Tweets table:**

| tweet_id | content                                                                           |
|----------|-----------------------------------------------------------------------------------|
| 1        | Traveling, exploring, and living my best life @JaneSmith @SaraJohnson @LisaTaylor |
|          | @MikeBrown #Foodie #Fitness #Learning                                             | 
| 2        | Just had the best dinner with friends! #Foodie #Friends #Fun                      |
| 4        | Working hard on my new project #Work #Goals #Productivity #Fun                    |

### Output

| tweet_id |
|----------|
| 1        |
| 4        |

### Explanation

- `tweet_id = 1` contains **4 mentions** (`@JaneSmith`, `@SaraJohnson`, `@LisaTaylor`, `@MikeBrown`).
- `tweet_id = 4` contains **4 hashtags** (`#Work`, `#Goals`, `#Productivity`, `#Fun`).

Both are invalid. The result should be sorted by `tweet_id` in ascending order.