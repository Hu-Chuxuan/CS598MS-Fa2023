SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear <= 2022
AND tb.primaryTitle NOT IN ('Knocked Up (2007)', 'Shaun of the Dead (2004)', 'Airplane! (1980)', 'Anchorman ', 'Mr. Magoo  (1997)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10