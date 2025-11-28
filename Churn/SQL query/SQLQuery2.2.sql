select Customer_Status, 
count(Customer_Status) as Total_count,
sum(Total_Revenue) as Total_rev,
sum(Total_Revenue) /(select sum(Total_Revenue) from stg_churn) * 100 as revpercentage 
from stg_churn
group by Customer_Status

SELECT 
    State,
    COUNT(State) AS TotalCount,
    ROUND( COUNT(State) * 100.0 / (SELECT COUNT(*) FROM stg_churn), 2 ) AS Percentage
FROM stg_churn
GROUP BY State
Order by Percentage desc;

select distinct(Internet_Type) from stg_churn