SELECT primaryTitle, startYear, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Social%'
AND startYear > 2010
AND tconst NOT IN ('tt5052448')  -- Exclude 'Get Out (2017)'
ORDER BY averageRating DESC
LIMIT 5