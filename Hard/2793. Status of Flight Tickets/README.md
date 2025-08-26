# LeetCode 2793. Status of Flight Tickets

## Problem Statement

You are given two tables:

### Flights

| Column Name | Type |
|-------------|------|
| flight_id   | int  |
| capacity    | int  |

- `flight_id` contains distinct values.  
- Each row contains the ID of a flight and its seating capacity.

### Passengers

| Column Name  | Type     |
|--------------|----------|
| passenger_id | int      |
| flight_id    | int      |
| booking_time | datetime |

- `passenger_id` contains distinct values.  
- `booking_time` values are distinct.  
- Each row represents one passenger booking a ticket for a flight at a given time.

---

## Task

When a passenger books a ticket:
- If the number of confirmed passengers is **less than the flight capacity**, their ticket is **Confirmed**.
- If the flight has already reached full capacity, the passenger is placed on the **Waitlist**.

Write a SQL query to determine the **status of each passenger’s ticket**.

Return the result table ordered by `passenger_id` in ascending order.

---

## Example

### Input

**Flights table:**

| flight_id | capacity |
|-----------|----------|
| 1         | 2        |
| 2         | 2        |
| 3         | 1        |

**Passengers table:**

| passenger_id | flight_id | booking_time        |
|--------------|-----------|---------------------|
| 101          | 1         | 2023-07-10 16:30:00 |
| 102          | 1         | 2023-07-10 17:45:00 |
| 103          | 1         | 2023-07-10 12:00:00 |
| 104          | 2         | 2023-07-05 13:23:00 |
| 105          | 2         | 2023-07-05 09:00:00 |
| 106          | 3         | 2023-07-08 11:10:00 |
| 107          | 3         | 2023-07-08 09:10:00 |

### Output

| passenger_id | Status    |
|--------------|-----------|
| 101          | Confirmed |
| 102          | Waitlist  |
| 103          | Confirmed |
| 104          | Confirmed |
| 105          | Confirmed |
| 106          | Waitlist  |
| 107          | Confirmed |

---

## Explanation

- **Flight 1** capacity = 2.  
  - Passengers 103 and 101 booked first → **Confirmed**.  
  - Passenger 102 booked later when seats were full → **Waitlist**.

- **Flight 2** capacity = 2.  
  - Passengers 105 and 104 both booked within the limit → **Confirmed**.

- **Flight 3** capacity = 1.  
  - Passenger 107 booked first → **Confirmed**.  
  - Passenger 106 booked later when no seats left → **Waitlist**.

---