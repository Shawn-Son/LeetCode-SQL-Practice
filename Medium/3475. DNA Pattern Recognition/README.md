# LeetCode 3475. DNA Pattern Recognition

## Problem Statement

Given a table `Samples` with the following schema:

| Column Name  | Type    |
|--------------|---------|
| sample_id    | int     |
| dna_sequence | varchar |
| species      | varchar |

- Each row contains a DNA sequence (characters: A, T, G, C) and the species it was collected from.
- `sample_id` is the unique key.

Biologists want to identify the following patterns in the DNA sequences:

1. **Sequences that start with `ATG`** (a common start codon).
2. **Sequences that end with either `TAA`, `TAG`, or `TGA`** (stop codons).
3. **Sequences containing the motif `ATAT`** (a simple repeated pattern).
4. **Sequences that have at least 3 consecutive Gs** (e.g., `GGG`, `GGGG`).

Write a SQL solution to report each sample's patterns:

- Add four columns:
  - `has_start`: 1 if the sequence starts with `ATG`, else 0.
  - `has_stop`: 1 if the sequence ends with `TAA`, `TAG`, or `TGA`, else 0.
  - `has_atat`: 1 if the sequence contains `ATAT`, else 0.
  - `has_ggg`: 1 if the sequence contains at least 3 consecutive Gs, else 0.

Return the result table **ordered by `sample_id` ascending**.

---

## Example

**Input:**

| sample_id | dna_sequence     | species   |
|-----------|------------------|-----------|
| 1         | ATGCTAGCTAGCTAA  | Human     |
| 2         | GGGTCAATCATC     | Human     |
| 3         | ATATATCGTAGCTA   | Human     |
| 4         | ATGGGGTCATCATAA  | Mouse     |
| 5         | TCAGTCAGTCAG     | Mouse     |
| 6         | ATATCGCGCTAG     | Zebrafish |
| 7         | CGTATGCGTCGTA    | Zebrafish |

**Output:**

| sample_id | dna_sequence     | species   | has_start | has_stop | has_atat | has_ggg |
|-----------|------------------|-----------|-----------|----------|----------|---------|
| 1         | ATGCTAGCTAGCTAA  | Human     | 1         | 1        | 0        | 0       |
| 2         | GGGTCAATCATC     | Human     | 0         | 0        | 0        | 1       |
| 3         | ATATATCGTAGCTA   | Human     | 0         | 0        | 1        | 0       |
| 4         | ATGGGGTCATCATAA  | Mouse     | 1         | 1        | 0        | 1       |
| 5         | TCAGTCAGTCAG     | Mouse     | 0         | 0        | 0        | 0       |
| 6         | ATATCGCGCTAG     | Zebrafish | 0         | 1        | 1        | 0       |
| 7         | CGTATGCGTCGTA    | Zebrafish | 0         | 0        | 0        | 0       |

---