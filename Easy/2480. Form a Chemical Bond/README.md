# LeetCode 2480. Form a Chemical Bond

## Problem Statement

Given the following table:

### Elements

| Column Name | Type    |
|-------------|---------|
| symbol      | varchar |
| type        | enum    |
| electrons   | int     |

- `symbol` is the primary key (unique).
- `type` ∈ {`'Metal'`, `'Nonmetal'`, `'Noble'`}.
- If `type = 'Noble'`, then `electrons = 0`.
- If `type = 'Metal'`, `electrons` is the number of electrons one atom can give.
- If `type = 'Nonmetal'`, `electrons` is the number of electrons one atom needs.

Two elements can form a bond **iff** one is `'Metal'` and the other is `'Nonmetal'`.

Return all pairs of elements that can form a bond, as columns **metal** and **nonmetal**, in any order.

---

## Example

### Input

Elements table:

| symbol | type     | electrons |
|--------|----------|-----------|
| He     | Noble    | 0         |
| Na     | Metal    | 1         |
| Ca     | Metal    | 2         |
| La     | Metal    | 3         |
| Cl     | Nonmetal | 1         |
| O      | Nonmetal | 2         |
| N      | Nonmetal | 3         |

### Output

| metal | nonmetal |
|-------|----------|
| La    | Cl       |
| Ca    | Cl       |
| Na    | Cl       |
| La    | O        |
| Ca    | O        |
| Na    | O        |
| La    | N        |
| Ca    | N        |
| Na    | N        |

Explanation:
- Metals: La, Ca, Na
- Nonmetals: Cl, O, N
- Output contains the Cartesian pairing of every Metal with every Nonmetal.

---