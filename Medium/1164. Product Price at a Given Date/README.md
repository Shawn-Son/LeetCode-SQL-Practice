# LeetCode 1164. Product Price at a Given Date

This repository contains the solution for [LeetCode 1164: Product Price at a Given Date](https://leetcode.com/problems/product-price-at-a-given-date/).

## Problem Description

You are given a table `Products` which records every price change of various products, with each row representing a new price set at a specific date.  
Your task is to find the price of **all products on 2019-08-16**.

- If there was no price change before or on that date for a product, its price is **assumed to be 10**.
- Each `(product_id, change_date)` pair is unique.

### Table: Products

| Column Name | Type | Description                      |
|-------------|------|----------------------------------|
| product_id  | int  | Product identifier               |
| new_price   | int  | New price at that date           |
| change_date | date | Date of the price change         |

## Example

### Input

| product_id | new_price | change_date |
|------------|-----------|-------------|
| 1          | 20        | 2019-08-14  |
| 2          | 50        | 2019-08-14  |
| 1          | 30        | 2019-08-15  |
| 1          | 35        | 2019-08-16  |
| 2          | 65        | 2019-08-17  |
| 3          | 20        | 2019-08-18  |

### Output

| product_id | price |
|------------|-------|
| 2          | 50    |
| 1          | 35    |
| 3          | 10    |

#### Explanation

- Product 1: Last price before or on 2019-08-16 is 35.
- Product 2: Last price before or on 2019-08-16 is 50.
- Product 3: No price change before or on that date → default price 10.

## Approach

1. For each product, find the latest price change **on or before** 2019-08-16.
2. If there is no such price change for a product, return 10 as its price.
