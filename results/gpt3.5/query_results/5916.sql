SELECT DISTINCT tb.primaryTitle, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.startYear > 2014
AND tb.primaryTitle NOT IN ('Wonder Woman  (2017)', 'Guardians of the Galaxy  (2014)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5