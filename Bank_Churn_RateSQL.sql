/*----------KPI's----------*/

/*how many countries do we have within the dataset
Select Distinct Geography from `churn modelling`;*/

/* Total customers within three countries
SELECT COUNT( distinct CustomerId) AS Total_Customers FROM churnrate.`churn modelling`;
*/

/* Total males and female users 
Select gender,Count(CustomerId)  AS Total_Customers  FROM churnrate.`churn modelling`
group by gender*/
/* Active Customers
Select Count( CASE when IsActiveMember=1 then 1 else null END) AS Active_Customers FROM churnrate.`churn modelling`*/

/*Exited Customers
Select Count( CASE when Exited=1 then 1 else null END) FROM churnrate.`churn modelling`*/

/* Average Credict Score 
Select AVG(CreditScore) AS AVG_Credict_Score FROM churnrate.`churn modelling`*/

/* Churn Rate percentage
Select Total_exited/Total_Customers*100 AS Churn_rate_percentage
From(
Select 
Count(Case when Exited=1 then 1 else null END) AS Total_exited,
Count( CASE when IsActiveMember=1 then 1 else null END)as Total_Customers
 FROM churnrate.`churn modelling`)
 AS subquery
 */
 
 /*Has a credict card
SELECT Count(CASE when HasCrCard=1 then 1 else null end)
FROM `churnrate`.`churn modelling`;*/

/*----------AGE GROUP ANALYSIS--------*/

/* Exits per Age Group 
Select CASE
WHEN Age BETWEEN 0 AND 15 THEN 'Under 15' 
WHEN Age BETWEEN 15 AND 20 THEN '15-20'
WHEN Age BETWEEN 20 AND 40 THEN '20-40'
WHEN Age BETWEEN 40 AND 60 THEN '40-60'
ELSE '60+'
END AS AgeBucket, Count(Case when Exited=1 then 1 else null END) AS Total_Exited FROM churnrate.`churn modelling`
group by AgeBucket
Order by AgeBucket ASC;
*/

/* Total customers via Age Group
Select CASE
WHEN Age BETWEEN 0 AND 15 THEN 'Under 15' 
WHEN Age BETWEEN 15 AND 20 THEN '15-20'
WHEN Age BETWEEN 20 AND 40 THEN '20-40'
WHEN Age BETWEEN 40 AND 60 THEN '40-60'
ELSE '60+'
END AS AgeBucket, Count(CustomerId) AS Total_Customers FROM churnrate.`churn modelling`
group by AgeBucket
Order by AgeBucket ASC;
*/

/*----------Geographical Analysis----------*/
/*Total Exits ,total Customers Segragated vias Georgraphy 
Select Geography,
Count(Case when Exited=1 then 1 else null END) as Total_Exited,
Count(distinct CustomerId) as Total_Customers
FROM churnrate.`churn modelling`
Group by Geography
*/

/*------Tenure age and estimated salary via age group------
Select CASE
WHEN Age BETWEEN 0 AND 15 THEN 'Under 15' 
WHEN Age BETWEEN 15 AND 20 THEN '15-20'
WHEN Age BETWEEN 20 AND 40 THEN '20-40'
WHEN Age BETWEEN 40 AND 60 THEN '40-60'
ELSE '60+'
END AS AgeBucket, AVG(Tenure) AS AVG_Tenure_Age,AVG(EstimatedSalary) AS AVG_Estimated_Salary FROM churnrate.`churn modelling`
group by AgeBucket
Order by AgeBucket ASC;
*/


    