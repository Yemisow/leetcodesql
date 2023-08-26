# Write your MySQL query statement below

select x,y,z ,

CASE (x+y> z AND x+z>y AND  y+z>x )

    WHEN 1 THEN "Yes"
    WHEN 0 THEN "No"
    
END
as triangle  from Triangle