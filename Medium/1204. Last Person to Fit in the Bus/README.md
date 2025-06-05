# LeetCode 1204. Last Person to Fit in the Bus

This repository contains the solution and explanation for the LeetCode problem [1204. Last Person to Fit in the Bus](https://leetcode.com/problems/last-person-to-fit-in-the-bus/).

## Problem Description

There is a queue of people waiting to board a bus. Each person has a specific weight, and the bus has a weight limit of **1000 kilograms**. People board the bus one by one, in order of their `turn`. Only one person can board the bus per turn.

Write a SQL query to find the **name of the last person who can get on the bus** without exceeding the weight limit.

- If adding a person's weight would exceed 1000 kg, they cannot board.
- You are guaranteed that the first person does not exceed the weight limit.

The table schema is as follows:

| Column Name | Type    | Description                                              |
|-------------|---------|---------------------------------------------------------|
| person_id   | int     | Unique ID for each person                               |
| person_name | varchar | Name of the person                                      |
| weight      | int     | Weight of the person in kilograms                       |
| turn        | int     | Order in which the person boards the bus (1 = first)    |

## Example

### Input

Queue table:

| person_id | person_name | weight | turn |
|-----------|-------------|--------|------|
| 5         | Alice       | 250    | 1    |
| 4         | Bob         | 175    | 5    |
| 3         | Alex        | 350    | 2    |
| 6         | John Cena   | 400    | 3    |
| 1         | Winston     | 500    | 6    |
| 2         | Marie       | 200    | 4    |

### Output

| person_name |
|-------------|
| John Cena   |

#### Explanation

- The bus boards as follows (ordered by `turn`):

| Turn | Name      | Weight | Cumulative Weight |
|------|-----------|--------|-------------------|
| 1    | Alice     | 250    | 250               |
| 2    | Alex      | 350    | 600               |
| 3    | John Cena | 400    | 1000              | ← Last person who fits
| 4    | Marie     | 200    | 1200              | (cannot board)

## Solution Approach

- Sort people by `turn`.
- Keep a running sum of the weights as people board the bus.
- The last person whose cumulative sum does not exceed 1000 kg is the answer.