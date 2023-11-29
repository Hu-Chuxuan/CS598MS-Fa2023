SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Musical%'
AND tb.startYear >= 2010
AND tb.startYear <= 2020
AND tb.primaryTitle != 'La La Land'
AND tb.primaryTitle NOT IN ('Notebook')
ORDER BY tr.averageRating DESC
LIMIT 5