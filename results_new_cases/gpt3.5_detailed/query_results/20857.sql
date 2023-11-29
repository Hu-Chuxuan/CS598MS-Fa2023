SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE (genres LIKE '%Romance%' OR genres LIKE '%Horror%')
AND primaryTitle NOT IN ('Coco  (2017)', 'Click  (2010)')
ORDER BY averageRating DESC
LIMIT 10