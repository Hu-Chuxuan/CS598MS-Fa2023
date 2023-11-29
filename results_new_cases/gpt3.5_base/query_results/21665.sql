SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Fargo', 'The Usual Suspects', 'Reservoir Dogs', 'Pulp Fiction', 'Oldboy')
ORDER BY tr.averageRating DESC
LIMIT 5