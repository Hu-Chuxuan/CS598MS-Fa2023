SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.genres NOT LIKE '%stupid%'
AND tb.genres LIKE '%Parody%'
AND tb.startYear > 1991
AND tb.primaryTitle NOT IN ('Superbad (2007)', 'The 40-Year-Old Virgin (2005)', 'The Naked Gun 2½: The Smell of Fear (1991)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10