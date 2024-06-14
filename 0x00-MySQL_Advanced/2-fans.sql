-- Script to rank country origins of bands by the number of fans

-- Select origin and sum of fans, grouped by origin, and ordered by the number of fans in descending order
SELECT origin, SUM(nb_fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
