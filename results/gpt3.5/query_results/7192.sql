SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND startYear <= 2010
AND startYear >= 2000
AND primaryTitle != 'Shutter Island'
AND primaryTitle NOT IN ('Inception', 'Nightcrawler', 'Twisted')
ORDER BY averageRating DESC
LIMIT 5