SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Animation%' OR tb.genres LIKE '%Action%')
AND tb.startYear <= 2017
AND tb.tconst NOT IN ('tt3501632', 'tt2096673', 'tt0947798')  -- Exclude movies that the user has already watched
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5