SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Family%' AND tb.genres LIKE '%Fantasy%'
AND tb.startYear >= 2010 
AND tb.averageRating >= 7
AND tb.primaryTitle NOT IN ('Skyfall (2012)', 'Spectre  (2015)')
ORDER BY tr.averageRating DESC
LIMIT 5