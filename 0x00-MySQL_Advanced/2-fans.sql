-- SQL Script to rank country origins of bands by number of fans

-- Select Origin (country) and sum of nb_fans, ordered by sum of nb_fans descending
SELECT origin, SUM(nb_fans) AS nb_fans
FROM bands
GROUP BY origin
ORDER BY nb_fans DESC;
