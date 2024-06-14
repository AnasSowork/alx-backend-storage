-- Script to list Glam rock bands ranked by their longevity

-- Select band_name and calculated lifespan for bands with Glam rock style
-- Order the results by lifespan in descending order
SELECT 
    band_name, 
    CASE 
        WHEN split IS NULL THEN 2022 - formed
        ELSE split - formed
    END AS lifespan
FROM 
    metal_bands
WHERE 
    main_style = 'Glam rock'
ORDER BY 
    lifespan DESC;
