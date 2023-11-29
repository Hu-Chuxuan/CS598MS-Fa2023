SELECT primaryTitle
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Action%'
AND tconst != 'tt2094766' # exclude Assassin's Creed (2016)
ORDER BY averageRating DESC
LIMIT 5