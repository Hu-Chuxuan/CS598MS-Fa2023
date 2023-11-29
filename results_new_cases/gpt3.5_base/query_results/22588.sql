SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Sci-Fi%'
AND tb.tconst NOT IN ('tt1234567', 'tt2345678', 'tt3456789') -- Exclude user's historical preferences
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10