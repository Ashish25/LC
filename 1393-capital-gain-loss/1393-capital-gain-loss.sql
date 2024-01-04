# Write your MySQL query statement below

Select stock_name,
    sum(case when operation = "Buy" then price*(-1) Else price End) as capital_gain_loss
From Stocks
Group by stock_name