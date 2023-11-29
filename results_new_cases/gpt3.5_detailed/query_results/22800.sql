SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1980
AND tb.startYear < 1990
AND tb.genres LIKE '%Horror%'
AND tb.tconst NOT IN ('tt0093437') -- Excluding The Lost Boys (1987)
AND tb.tconst NOT IN ('tt0093437', 'tt0100405', 'tt0053125') -- Excluding The Lost Boys (1987), Pretty Woman (1990), and North by Northwest (1959)
ORDER BY tr.numVotes DESC
LIMIT 5