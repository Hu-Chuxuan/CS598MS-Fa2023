SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.tconst != 'tt0451279' -- exclude Wonder Woman (2017)
AND tb.tconst != 'tt0089530' -- exclude Mad Max Beyond Thunderdome (1985)
AND tb.startYear <= 1985 -- movies released before or in 1985
AND tb.genres LIKE '%Action%' -- movies with Action genre
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5