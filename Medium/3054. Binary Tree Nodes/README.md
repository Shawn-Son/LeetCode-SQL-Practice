# LeetCode 3054. Binary Tree Nodes

## Problem Statement

You are given the following table:

### Tree

| Column Name | Type |
|-------------|------|
| N           | int  |
| P           | int  |

- `N` is the unique value of a node in a Binary Tree.  
- `P` represents the parent of node `N`.  
- If `P` is `NULL`, then the node is a root.

---

## Task

Write a SQL query to determine the **type** of each node in the Binary Tree.  
A node can be classified as:
- **Root** → if the node has no parent (`P IS NULL`).  
- **Leaf** → if the node does not appear as a parent of any other node.  
- **Inner** → if the node is neither root nor leaf (i.e., it has a parent and is also a parent itself).  

Return the result table ordered by `N` in ascending order.

---

## Example

### Input

**Tree table:**

| N | P    |
|---|------|
| 1 | 2    |
| 3 | 2    |
| 6 | 8    |
| 9 | 8    |
| 2 | 5    |
| 8 | 5    |
| 5 | null |

### Output

| N | Type  |
|---|-------|
| 1 | Leaf  |
| 2 | Inner |
| 3 | Leaf  |
| 5 | Root  |
| 6 | Leaf  |
| 8 | Inner |
| 9 | Leaf  |

---

## Explanation

- **Node 5** → Root (no parent).  
- **Nodes 1, 3, 6, 9** → Leaf (no children).  
- **Nodes 2, 8** → Inner (they have a parent and also act as parents).  

---