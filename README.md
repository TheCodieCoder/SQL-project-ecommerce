**PROJECT**: E-Commerce SQL Analytics System

**OBJECTIVE**: Simple system to Analyze customer behaviour and order data using SQL

**DATABASE DESIGN**: 
TABLES: Customers ( customer_id INT PK, name VARCHAR),
        Orders (order_id INT PK, customer_id INT FK, order_date DATE)
        Order_Items (item_id INT PK, order_id INT FK, product_name VARCHAR,                         amount INT)

**KEY QUERIES & INSIGHTS**
1. Customers with no Orders
   - Using *Left Join*, identified customers who never ordered
   Insights: Helps target inactive users for engagement campaigns

2. Total Spending per customer
   - Using *Joins* & *Group By* clause, evaluated customer-wise total amount spend
   Insights: Reavealed high-value customers contributing most to revenue

3. Top 2 highest-spending customers
   - Using *Inner Join*, *Group By* & *Order By*, got top 2 customers contributing the most to revenue
   Insights: Useful for loyalty programs and premium targeting

4. Average order value
   - Using *Aggregate Functions* & *Subqueries*, evaluated Average order value
   Insights: Helps understand typical customer purchase behaviour

5. Revenue per order
   - Using *Group By*, calculated total revenue for each order
   Insights: Useful to indentify high-value transactions

6. Ranking Orders per Customer
  - Using *Window Functions* & *Sub-query* logic, implemented system to rank orders per customer
Insights: Useful to know, where a user spend the most

7. Customers with total spent more than overall average spent
   - Using *Sub-query* logic, evaluated customers who spent more than overall average
   Insights: Useful to know customers contributing more than average to revenue
