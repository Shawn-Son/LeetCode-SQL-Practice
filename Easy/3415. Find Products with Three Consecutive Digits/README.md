# 3198. Find Cities in Each State

## Problem Description

You are given a table `cities` containing:

| Column Name | Type    |
|-------------|---------|
| state       | varchar |
| city        | varchar |

- `(state, city)` is the primary key (unique combination).
- Each row contains the **state name** and a **city** in that state.

You must:
- Find **all cities** in each state.
- Combine them into a **single comma-separated string**.
- Return results ordered by `state` in ascending order, and within each state, cities in ascending order.

---

## Example

### Input

**cities** table:
| state       | city          |
|-------------|---------------|
| California  | Los Angeles   |
| California  | San Francisco |
| California  | San Diego     |
| Texas       | Houston       |
| Texas       | Austin        |
| Texas       | Dallas        |
| New York    | New York City |
| New York    | Buffalo       |
| New York    | Rochester     |

### Output

| state       | cities                                |
|-------------|---------------------------------------|
| California  | Los Angeles, San Diego, San Francisco |
| New York    | Buffalo, New York City, Rochester     |
| Texas       | Austin, Dallas, Houston               |

---

## Explanation

- **California** → `"Los Angeles, San Diego, San Francisco"`
- **New York** → `"Buffalo, New York City, Rochester"`
- **Texas** → `"Austin, Dallas, Houston"`

Cities are listed in alphabetical order within each state.

---