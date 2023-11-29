SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%'
AND tb.startYear >= 2010
AND tb.startYear <= 2017
AND tb.tconst NOT IN ('tt0451279', 'tt0372784', 'tt1431045', 'tt0458339')
ORDER BY tr.averageRating DESC
LIMIT 5