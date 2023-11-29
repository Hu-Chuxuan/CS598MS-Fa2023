SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' 
AND tb.genres LIKE '%Ghost%'
AND tb.tconst NOT IN ('tt0093437', 'tt0230600', 'tt0078767') -- excluding the user's preference history
ORDER BY tr.averageRating DESC
LIMIT 10