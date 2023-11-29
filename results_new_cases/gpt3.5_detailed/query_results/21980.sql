SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear < 1986
AND startYear > 1980
AND genres LIKE '%Drama%'
AND tconst != 'tt0092005'  -- excluding Stand by Me
ORDER BY averageRating DESC
LIMIT 5