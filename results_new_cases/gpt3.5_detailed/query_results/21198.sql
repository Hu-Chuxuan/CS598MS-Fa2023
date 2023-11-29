SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.startYear = 2018
AND tb.titleType = 'movie'
AND tb.tconst NOT IN ('tt2948356', 'tt0317705', 'tt9806192')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5