SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.startYear >= 1980
AND tb.startYear <= 1990
AND tb.primaryTitle != 'Young Guns'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5