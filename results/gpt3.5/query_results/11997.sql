SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE (genres LIKE '%Comedy%' OR genres LIKE '%Family%') 
AND startYear >= 1980 
AND startYear <= 2000 
AND tconst NOT IN ('tt0092225', 'tt0099785', 'tt0329200') 
AND primaryTitle != 'Home Alone 4' 
AND (primaryTitle LIKE '%Home Alone%' OR primaryTitle = 'Sixteen Candles')
ORDER BY averageRating DESC
LIMIT 5