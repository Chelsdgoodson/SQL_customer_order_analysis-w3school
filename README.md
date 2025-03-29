##Business Problem
The sales manager needs to streamline the process of assigning customer accounts to new sales representatives. To do so, it is essential to understand the number of orders placed by each customer. By determining this metric, the manager can allocate accounts more effectively, ensuring that high-value or high-activity customers are paired with experienced sales reps, while newer or lower-activity accounts are assigned to less experienced ones. This will optimize the overall sales team's performance and improve customer management.

##Dataset
    • Source: W3Schools’ SQL Tryit Editor and Tutorial Database ( SQL Tryit Editor v1.6 )
    • Tables:
        ◦ Customers (CustomerID, CustomerName)
        ◦ Orders (OrderID, CustomerID)

##SQL Queries & Analysis
In this project, the focus is on analyzing customer order data to determine the customers who have placed the most orders. The key query used is as follows:
    • Top customers by order count: Identifies customers who have placed the highest number of orders. This query is useful for understanding customer activity and ensuring that high-value or high-activity customers are assigned to the proper sales representative by the sales manager.  
###Example Query:
SELECT 
    Customers.CustomerID,
    Customers.CustomerName,
    COUNT(Orders.OrderID) AS TotalOrders
FROM Customers
    INNER JOIN Orders
        ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID, Customers.CustomerName
ORDER BY COUNT(Orders.OrderID) DESC; 

##Insights & Findings
    • Top Customers by Order Frequency: 
        ◦ Ernst Handel (10 orders), QUICK-Stop, Wartian Herkku, and Rattlesnake Canyon Grocery (7 orders each) are the top four customers. Assigning these customers to experienced reps can leverage their familiarity with the customer to maintain and grow business relationships.
    • Customer Segmentation: 
        ◦ Customers with 5-6 orders may be mid-tier in terms of engagement. These customers can be assigned to mid-level sales representatives who can focus on improving their order frequency and customer satisfaction.
        ◦ Customers with 4 orders or less are likely regular but less engaged buyers. They may benefit from being assigned to junior sales representatives who can focus on nurturing the relationship and increasing order volume.
    • Long Tail of Customers:
        ◦ A substantial number of customers placed 2 or fewer orders, indicating that while there are many one-time or infrequent buyers, the top 20 customers are generating a disproportionate amount of order activity. These customers may require introductory attention from sales representatives who can reach out, understand their needs, and work to increase repeat business.
    • Sales Representative Strategy:
        ◦ Given the clear drop-off in order frequency, sales managers can use this data to prioritize high-order customers for immediate attention while strategizing ways to convert moderate-frequency customers to higher tiers.
    • Sales Growth and Targeting:
        ◦ Lower-order customers (2-4 orders) could provide opportunities for sales growth. The data suggests that assigning these customers to representatives that specialize in relationship-building may increase their ordering frequency by addressing their specific needs.

##Visualizations
    • Histogram: Customer Segmentation Based on Order Frequency (X-axis: Total Orders, Y-axis: Customers)
    • Combo Chart: Order Distribution-Identifying High-Volume Customers (X-axis: Total Orders, Y-axis: Customer Name, Secondary Axis: Percentage of Total Orders)

##How to Run the Project
    1. Open W3Schools SQL Tryit Editor v1.6
    2. Copy and paste the SQL queries provided in queries.sql.
    3. Run queries and analyze the results.

##Next Steps
    • Enhance the SQL queries by incorporating additional tables such as OrderDetails to analyze total revenue per customer.
    • Identify seasonal trends in order placement.
    • Automate reporting with a dashboard in Tableau or Power BI.

##Contact
For questions, reach out via chelsdgoodson@gmail.com or connect on www.linkedin.com/in/chelsea-goodson-777b14278