SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Comedy%'
AND averageRating >= 7
AND primaryTitle NOT LIKE '%Ace Ventura%'
AND primaryTitle NOT LIKE '%Jim Carrey%'
AND primaryTitle != '50 First Dates (2004)'
ORDER BY startYear DESC