# 3204. Bitwise User Permissions Analysis

## Problem Description

You are given a DataFrame called `user_permissions` with the following columns:
- `user_id` (int): Unique user ID.
- `permissions` (int): User permissions encoded as an integer. Each bit represents a different access level or feature.

Write a solution to compute:
- **common_perms**: The bitwise AND of all users' `permissions` values (i.e., access levels granted to all users).
- **any_perms**: The bitwise OR of all users' `permissions` values (i.e., access levels granted to any user).

Return the result as a single-row DataFrame with columns `common_perms` and `any_perms`.

---

## Example

**Input DataFrame:**

| user_id | permissions |
|---------|-------------|
| 1       | 5           |
| 2       | 12          |
| 3       | 7           |
| 4       | 3           |

**Output DataFrame:**

| common_perms | any_perms |
|--------------|-----------|
| 0            | 15        |

**Explanation:**
- Permissions in binary: 5 (0101), 12 (1100), 7 (0111), 3 (0011)
- `common_perms`: 5 & 12 & 7 & 3 = 0 (binary 0000)
- `any_perms`: 5 | 12 | 7 | 3 = 15 (binary 1111)
