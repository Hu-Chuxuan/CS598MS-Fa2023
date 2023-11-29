SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND (genres LIKE '%Noir%' OR genres LIKE '%Mystery%')
AND startYear > 1940
AND startYear < 2005
AND primaryTitle NOT IN ('Brick', 'Nightcrawler', 'Touch of Evil', 'Chinatown', 'The Maltese Falcon')
ORDER BY averageRating DESC
LIMIT 5