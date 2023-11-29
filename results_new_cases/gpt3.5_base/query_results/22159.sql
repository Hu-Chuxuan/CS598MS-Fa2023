SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Superhero%'
AND tr.averageRating >= 7
AND tb.primaryTitle NOT IN ('Love Stinks  (1999)', 'True Romance (1993)')
ORDER BY tr.averageRating DESC
LIMIT 10