SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Horror%' 
AND tb.genres LIKE '%Thriller%'
AND tb.genres LIKE '%Mystery%'
AND tb.runtimeMinutes < 120
AND tr.numVotes > 1000
AND tb.primaryTitle NOT IN ('The Shining', 'Insidious')
ORDER BY tr.averageRating DESC
LIMIT 5