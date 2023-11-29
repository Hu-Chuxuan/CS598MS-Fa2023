SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.genres LIKE '%Thriller%'
AND nb.primaryName = 'James DeMonaco'
AND tb.startYear > 2013
AND tr.averageRating > 7
AND tb.primaryTitle NOT IN ('The Purge (2013)', 'Fight Club (1999)', 'The Dark Knight  (2008)', 'Natural Born Killers (1994)')
GROUP BY tb.primaryTitle
ORDER BY tr.numVotes DESC
LIMIT 5