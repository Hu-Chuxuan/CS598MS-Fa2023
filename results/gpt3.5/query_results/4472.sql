SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Adventure%' OR tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Action%'
AND tb.startYear >= 2010
AND tb.primaryTitle != 'Jumanji  (2017)'
ORDER BY tr.averageRating DESC
LIMIT 10