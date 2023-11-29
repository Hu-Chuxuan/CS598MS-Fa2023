SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' 
AND tb.genres LIKE '%Superhero%'
AND tb.startYear > 1990
AND tb.titleType = 'movie'
AND tr.numVotes > 1000
AND tb.primaryTitle NOT IN ('Love Stinks  (1999)', 'True Romance (1993)')
ORDER BY tr.averageRating DESC
LIMIT 10