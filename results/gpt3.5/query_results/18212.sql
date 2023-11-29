SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND (tb.genres LIKE '%Action%' OR tb.genres LIKE '%Adventure%')
AND (tb.startYear >= 1990 OR tb.startYear IS NULL)
AND tb.tconst NOT IN ('tt1825683', 'tt1663662', 'tt0117060')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10