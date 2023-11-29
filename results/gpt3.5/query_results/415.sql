SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' AND tb.genres LIKE '%Drama%'
AND tb.primaryTitle LIKE '%Princess%' AND tb.primaryTitle LIKE '%Commoner%'
AND tb.startYear >= 1980 AND tb.titleType = 'movie'
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC
LIMIT 10