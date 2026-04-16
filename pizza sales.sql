use pizza;
select*from pizza_sales;
select SUM(total_price) AS Total_Revenue FROM pizza_sales ;
select (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_order_Value FROM pizza_sales;
select SUM(quantity) AS Total_pizza_sold FROM pizza_sales;
select COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales; 
select CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))
AS Avg_Pizzas_per_order
FROM pizza_sales;
select SUM(quantity)  AS Avg_Pizza_Sales FROM pizza_sales;
select COUNT(order_id) FROM pizza_sales;
select DATENAME(WEEKDAY,order_date) AS day_name , COUNT(order_id) AS total_orders FROM pizza_sales
GROUP BY DATENAME(WEEKDAY,order_date);
select DATENAME(MONTH,order_date) AS Month_Name,COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales
GROUP BY DATENAME(MONTH,order_date);
select pizza_category,CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_Revenue ,CAST (SUM(total_price)*100/(select SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) AS PCT FROM pizza_sales
GROUP BY pizza_category ;
select pizza_size,CAST(SUM(total_price) AS DECIMAL(10,2)) As total_revenue, CAST(SUM(total_price)*100/(select SUM(total_price) FROM pizza_sales)
AS DECIMAL(10,2)) AS PCT 
FROM pizza_sales 
GROUP BY pizza_size
ORDER BY pizza_size
select pizza_category,SUM(quantity) AS total_quantity_sold FROM pizza_sales WHERE MONTH(order_date) = 2 
GROUP BY pizza_category
ORDER BY total_quantity_sold;
select TOP 5 pizza_name ,SUM(total_price) AS total_revenue FROM pizza_sales 
GROUP BY pizza_name
ORDER BY total_revenue DESC;
select TOP 5 pizza_name ,SUM(total_price) AS total_revenue FROM pizza_sales 
GROUP BY pizza_name
ORDER BY total_revenue ASC;
select TOP 5 pizza_name ,SUM(quantity)  AS total_pizza_sold FROM pizza_sales 
GROUP BY pizza_name
ORDER BY total_pizza_sold DESC ;
select TOP 5 pizza_name ,SUM(quantity)  AS total_pizza_sold FROM pizza_sales 
GROUP BY pizza_name
ORDER BY total_pizza_sold ASC ;
select TOP 5 pizza_name,COUNT(DISTINCT order_id) AS total_orders FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_orders DESC;
select TOP 5 pizza_name,COUNT(DISTINCT order_id) AS total_orders FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_orders DESC;
select TOP 5 pizza_name,COUNT(DISTINCT order_id) AS total_orders FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_orders ASC;




