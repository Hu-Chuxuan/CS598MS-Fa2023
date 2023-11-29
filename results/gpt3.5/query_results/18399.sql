SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Drama%'
AND tr.numVotes > 1000
AND (tb.primaryTitle != 'Love, Simon' OR tb.startYear != 2018)
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5