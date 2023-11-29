SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE (genres LIKE '%Action%' OR genres LIKE '%Adventure%') 
    AND (genres NOT LIKE '%Adult%')
    AND primaryTitle NOT IN ('It (1990)', 'It  (2017)', 'Mama  (2013)')
    AND averageRating > 7
ORDER BY averageRating DESC
LIMIT 2