SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Kung-Fu%'
AND tb.startYear >= 2000
AND tb.startYear <= 2004
AND tb.primaryTitle != 'The Last Dragon'
ORDER BY tr.averageRating DESC
LIMIT 5