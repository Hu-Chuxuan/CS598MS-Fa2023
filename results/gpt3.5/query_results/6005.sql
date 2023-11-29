SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 1955
AND startYear >= 1939
AND genres LIKE '%Romance%'
AND tconst NOT IN ('tt0031381', 'tt0043014', 'tt0047673', 'tt0046250')
ORDER BY averageRating DESC
LIMIT 5