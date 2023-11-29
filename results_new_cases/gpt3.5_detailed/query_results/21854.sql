SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 1994
AND tb.genres LIKE '%Comedy%'
AND tb.tconst <> 'tt0109040' -- Excluding Ace Ventura: Pet Detective
AND tb.tconst <> 'tt0109686' -- Excluding Dumb and Dumber
AND tb.primaryTitle NOT IN ('Dumb and Dumber (1994)', 'Superbad  (2007)', 'Fight Club (1999)', 'Pulp Fiction (1994)', 'Deadpool  (2016)')
AND (tc.directors LIKE '%nm0002137%' OR tc.writers LIKE '%nm0002137%') -- Director or Writer of Ace Ventura: Pet Detective
AND (tc.directors LIKE '%nm0000701%' OR tc.writers LIKE '%nm0000701%') -- Director or Writer of Dumb and Dumber
GROUP BY tb.primaryTitle, tr.averageRating, tr.numVotes
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5