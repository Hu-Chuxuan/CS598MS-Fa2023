SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr
ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' AND tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('Guardians of the Galaxy  (2014)', 'Thor', 'The Avengers  (2012)', 'The Dark Knight  (2008)')
ORDER BY tr.averageRating DESC
LIMIT 5