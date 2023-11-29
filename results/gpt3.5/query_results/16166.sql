SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear = 2006
AND tb.genres LIKE '%Drama%'
AND tb.primaryTitle != 'Blood Diamond'
AND tb.primaryTitle NOT IN ('Baby Driver')
ORDER BY tr.averageRating DESC
LIMIT 5