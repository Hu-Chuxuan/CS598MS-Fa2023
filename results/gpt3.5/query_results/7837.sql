SELECT tb.tconst, tb.primaryTitle, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres NOT LIKE '%Action%'
AND tb.genres NOT LIKE '%Adventure%'
AND tb.tconst NOT IN ('tt3748528', 'tt3501632')
AND tb.tconst NOT IN ('tt0451279', 'tt0800369')
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10