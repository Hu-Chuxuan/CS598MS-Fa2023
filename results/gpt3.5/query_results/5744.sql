SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2022
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Adventure%'
AND tb.genres NOT LIKE '%Adult%'
AND tb.tconst NOT IN ('tt0451279', 'tt0120903') -- excluding Wonder Woman and X-Men
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5