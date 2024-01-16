
/*This code uses basic sql to see which department is having lower sales compared to other product categories*/
/*
SELECT products AS Products, SUM(revenue) AS Revenue, YEAR(STR_TO_DATE(`date`, '%d-%m-%Y')) AS Year
FROM new_schema.retail_sales_dataset_new
GROUP BY products, Year
Having Year = 2023 
ORDER BY Products DESC;
*/
/*
We need to figure out the difference between the revenue of beauty and other catogries 
Select products,SUM(CASE WHEN products = 'Electronics' THEN revenue ELSE 0 END) - SUM(CASE WHEN products = 'Beauty' THEN revenue ELSE 0 END) 
AS Revenue_DifferenceBeauty_electronics FROM new_schema.retail_sales_dataset_new;
*/

/*Now we know that the beauty products have had lower sales(-13390) within 2023 lets expand on that
Select products as Product_Catogaries,DATE_FORMAT(STR_TO_DATE(`date`, '%d-%m-%Y'), '%Y-%m') AS Dates,count(customers) AS Total_Customers,sum(quantity)as Amount,sum(revenue) as Revenue
from new_schema.retail_sales_dataset_new
group by products,dates
Having products='Beauty' AND dates<2024
ORDER by dates ASC;
*/

/*+++++From this data we can summaries that the customer count and the order date didnt change which only leaves one conclusion.
either the season called for low customers(unlikely due to simialr customer numbers) or a layout change casued lower value products to be sold,
 resulting in lower profits(very likely)This has to be further investigated by the store and a more consise layout plan has to be used similar to other dates such as 2023/12 which saw similar customers
but higher revenue.+++++/*




