# Write your MySQL query statement below







select x  , y  , z, (case when x+y> z && x+z> y && y+z >x =1 then "Yes" else "No" end) triangle
from 
Triangle