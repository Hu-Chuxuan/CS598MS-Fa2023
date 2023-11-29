SELECT tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2017
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN (
    SELECT tconst
    FROM title_basics
    WHERE primaryTitle IN ('Ghostbusters (1984)', 'A Bad Moms Christmas (2017)')
)
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5