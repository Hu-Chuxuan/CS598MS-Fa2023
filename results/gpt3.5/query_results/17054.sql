SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1980
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Drama%'
AND tb.tconst NOT IN ('tt0080319', 'tt0109830', 'tt0098384', 'tt0095953')
ORDER BY tr.numVotes DESC
LIMIT 5