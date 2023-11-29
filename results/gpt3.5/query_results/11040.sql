SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes, tb.originalTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Action%'
AND tb.tconst NOT IN ('tt3890160', 'tt1013752')  -- Exclude 'Baby Driver' and 'Fast & Furious'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10