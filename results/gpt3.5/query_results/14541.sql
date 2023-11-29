SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND (tb.primaryTitle LIKE '%animal%' OR tb.primaryTitle LIKE '%creature%')
AND tb.startYear >= 1980
AND tb.tconst NOT IN ('tt0073195', 'tt1663202', 'tt5052448', 'tt0073195')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 1