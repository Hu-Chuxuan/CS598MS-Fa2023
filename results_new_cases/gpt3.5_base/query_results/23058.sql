SELECT tb.primaryTitle, tb.startYear, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.primaryTitle NOT IN ('Fight Club (1999)', 'Bambi (1942)')
AND (tb.genres LIKE '%Drama%' OR tb.genres LIKE '%Thriller%')
AND tr.averageRating >= 8
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10