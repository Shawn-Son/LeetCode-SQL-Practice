# LeetCode 2837. Total Traveled Distance

## Problem Statement

You are given two tables:

### Users
| Column Name | Type    |
|-------------|---------|
| user_id     | int     |
| name        | varchar |

- `user_id` contains unique values.

### Rides
| Column Name  | Type |
|--------------|------|
| ride_id      | int  |
| user_id      | int  |
| distance     | int  |

- `ride_id` contains unique values.

**Task:** For each user, calculate the **total distance** they have traveled.  
If a user has **no rides**, their total distance should be **0**.  
Return `user_id`, `name`, and `traveled_distance`, ordered by `user_id` ascending.

---

## Example

**Input**

**Users**
| user_id | name    |
|--------:|---------|
| 17      | Addison |
| 14      | Ethan   |
| 4       | Michael |
| 2       | Avery   |
| 10      | Eleanor |

**Rides**
| ride_id | user_id | distance |
|--------:|--------:|---------:|
| 72      | 17      | 160      |
| 42      | 14      | 161      |
| 45      | 4       | 59       |
| 32      | 2       | 197      |
| 15      | 4       | 357      |
| 56      | 2       | 196      |
| 10      | 14      | 25       |

**Output**
| user_id | name    | traveled_distance |
|--------:|---------|-------------------:|
| 2       | Avery   | 393                |
| 4       | Michael | 416                |
| 10      | Eleanor | 0                  |
| 14      | Ethan   | 186                |
| 17      | Addison | 160                |

---