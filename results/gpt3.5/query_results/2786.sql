SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.averageRating >= 7
AND tb.genres NOT LIKE '%Comedy%'
AND tb.genres NOT LIKE '%Action%'
AND tb.tconst NOT IN ('tt1838556', 'tt2283362')  -- Excluding movies in user preference history
ORDER BY tr.numVotes DESC
LIMIT 5