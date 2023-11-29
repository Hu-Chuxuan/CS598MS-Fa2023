SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Sci-Fi%'
AND tb.genres NOT LIKE '%Horror%'
AND tb.tconst NOT IN ('tt1392170', 'tt0790636', 'tt1259571', 'tt1731142') -- excluding user's historical preferences
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5