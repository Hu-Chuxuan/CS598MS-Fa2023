SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.genres LIKE '%Romance%' 
    AND title_basics.genres LIKE '%Drama%'
    AND title_basics.tconst NOT IN ('tt1663202', 'tt2024514')   -- excluding titles from user's preference history
ORDER BY averageRating DESC
LIMIT 5