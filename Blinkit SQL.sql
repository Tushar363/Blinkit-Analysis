use Blinkitdb


SELECT * FROM blinkit_data;

update blinkit_data
set Item_Fat_Content =
case
when Item_Fat_Content in ('LF','low fat') then 'Low Fat'
when Item_Fat_Content = 'reg' then 'Regular'
else Item_Fat_Content
end

select Concat(CAST(sum(sales)/1000000 as decimal (10,2)),' M') as Total_Sales from blinkit_data;

select CAST(AVG(sales) as decimal(10,1)) as Avg_Sales from blinkit_data;

select count(*) as Number_Of_Items from blinkit_data;

select Concat(CAST(sum(sales)/1000000 as decimal (10,2)),' M') as Total_Sales from blinkit_data where Item_Fat_Content = 'Low Fat';

select CAST(AVG(Rating) as decimal (10,2)) as Avg_Rating from blinkit_data;

select Item_Fat_Content,
CAST(sum(sales)/1000 as decimal (10,2)) as Total_Sales_Thousands,
CAST(AVG(sales) as decimal(10,1)) as Avg_Sales,
CAST(AVG(Rating) as decimal (10,2)) as Avg_Rating,
COUNT(*) as Number_Of_Items
from blinkit_data 
group by Item_Fat_Content 
order by Total_Sales_Thousands desc;

select TOP 5 Item_Type,
CAST(sum(sales) as decimal (10,2)) as Total_Sales,
CAST(AVG(sales) as decimal(10,1)) as Avg_Sales,
CAST(AVG(Rating) as decimal (10,2)) as Avg_Rating,
COUNT(*) as Number_Of_Items
from blinkit_data 
group by Item_Type
order by Total_Sales asc;

select Outlet_Location_Type, Item_Fat_Content,
CAST(sum(sales) as decimal (10,2)) as Total_Sales
from blinkit_data 
group by Outlet_Location_Type, Item_Fat_Content
order by Total_Sales asc;

SELECT Outlet_Location_Type, 
ISNULL([Low Fat], 0) AS Low_Fat, 
ISNULL([Regular], 0) AS Regular
FROM
( 
SELECT Outlet_Location_Type, Item_Fat_Content, 
CAST(SUM(sales) AS DECIMAL (10,2)) AS Total_Sales 
FROM blinkit_data 
GROUP BY Outlet_Location_Type, Item_Fat_Content 
) AS SourceTable
PIVOT
( 
SUM(Total_Sales) 
FOR Item_Fat_Content IN ([Low Fat], [Regular]) 
) AS PivotTable ORDER BY Outlet_Location_Type;


select Outlet_Establishment_Year,
CAST(sum(sales) as decimal (10,2)) as Total_Sales,
CAST(AVG(sales) as decimal(10,1)) as Avg_Sales,
CAST(AVG(Rating) as decimal (10,2)) as Avg_Rating,
COUNT(*) as Number_Of_Items
from blinkit_data 
group by Outlet_Establishment_Year
order by Outlet_Establishment_Year asc;
 
select Outlet_Location_Type,
CAST(sum(sales) as decimal (10,2)) as Total_Sales
from blinkit_data 
group by Outlet_Location_Type
order by Total_Sales desc;

select Outlet_Type,
CAST(sum(sales) as decimal (10,2)) as Total_Sales,
CAST(AVG(sales) as decimal(10,1)) as Avg_Sales,
CAST(AVG(Rating) as decimal (10,2)) as Avg_Rating,
COUNT(*) as Number_Of_Items
from blinkit_data 
group by Outlet_Type
order by Total_Sales desc;