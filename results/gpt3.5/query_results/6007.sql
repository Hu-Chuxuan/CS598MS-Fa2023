SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Animation%' OR tb.genres LIKE '%Family%')
AND tb.startYear >= 2010
AND tb.startYear <= 2017
AND tb.tconst NOT IN ('tt2948356', 'tt1753383', 'tt3470600')  -- Excluding user preference history
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10