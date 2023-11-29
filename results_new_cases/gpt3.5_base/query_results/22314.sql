SELECT tb.primaryTitle, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' 
AND tb.primaryTitle != 'Flatliners  (2017)'
AND tr.averageRating >= 8
ORDER BY tr.averageRating DESC
LIMIT 10