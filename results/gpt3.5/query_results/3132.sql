SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Drama%'
AND startYear < 2010
AND startYear > 2005
AND primaryTitle NOT IN ('Going in Style  (2017)', 'Gran Torino (2008)')
ORDER BY averageRating DESC
LIMIT 5