SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.primaryTitle != 'Closer' 
AND tb.startYear <= 2004 
AND genres LIKE '%Drama%'
ORDER BY tr.averageRating DESC
LIMIT 5