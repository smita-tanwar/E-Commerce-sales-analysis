

select * from [dbo].[ecommerce_sales]

---------Total Sales by Product Category----------------
select
     Product_category, sum(Sales) as Total_sales 
	 from [dbo].[ecommerce_sales]
	 Group by Product_Category;


-----------Monthly Sales Trend------------
select
      Month, sum(sales) as Monthly_sales
	  FROM ecommerce_sales
      GROUP BY month;



----------Top 5 Customers by Sales---------
select Top 5 Customer_ID,
sum(sales) as total_spent
FROM ecommerce_sales
GROUP BY Customer_ID
Order by total_spent Desc;


--------Sales by Region-----------
select Region,
sum(sales) as Total_Sales 
FROM ecommerce_sales
GROUP BY Region
Order by Total_Sales Desc;

-----------Products with Low Profit Margin--------
 SELECT
    product_name,
    sales,
    profit,
    profit * 1.0 / sales AS profit_margin
FROM ecommerce_sales
WHERE sales > 0
  AND (profit * 1.0 / sales) < 0.10;

