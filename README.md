# SQL Internship - Task 5

## 📌 Topic: SQL Joins (Inner, Left, Right, Full)

This task focuses on understanding and applying various types of SQL JOINs to combine data from multiple tables. The goal was to explore how relational databases manage connections between tables and how data can be merged efficiently.

---

## ✅ What I Did

1. **Created two related tables:**
   - `Customer` (holds customer info)
   - `Orders` (holds customer order info)
2. **Established a foreign key relationship** between `Orders.customer_id` and `Customer.customer_id`.
3. Populated both tables with sample data, including cases where:
   - Customers have multiple orders
   - Some customers have no orders
   - Some orders have no valid customer (for join testing)
4. **Executed different types of JOIN queries** to explore how they retrieve data:
   - `INNER JOIN`
   - `LEFT JOIN`
   - `RIGHT JOIN` *(if supported)*
   - `FULL OUTER JOIN` *(using UNION workaround)*
   - `CROSS JOIN`

---

## 🧠 Concepts Practiced

| JOIN Type         | Description                                                            |
|-------------------|------------------------------------------------------------------------|
| `INNER JOIN`      | Returns only matching rows from both tables                            |
| `LEFT JOIN`       | Returns all rows from the left table and matched rows from the right   |
| `RIGHT JOIN`      | Returns all rows from the right table and matched rows from the left   |
| `FULL OUTER JOIN` | Returns all rows when there is a match in one of the tables (via UNION)|
| `CROSS JOIN`      | Returns Cartesian product (all combinations of rows)                   |
| `ON` clause       | Used to define the join condition                                      |
| `UNION`           | Combines two result sets (used to simulate FULL OUTER JOIN)            |
