-- Script to rank countries of band origins by the number of non-unique fans

-- Import the metal_bands table from the provided dump
-- Use this script after importing the table dump

-- Calculate the number of fans per country and order by number of fans in descending order
SELECT 
    origin, 
    SUM(nb_fans) AS nb_fans
FROM 
    metal_bands
GROUP BY 
    origin
ORDER BY 
    nb_fans DESC;
