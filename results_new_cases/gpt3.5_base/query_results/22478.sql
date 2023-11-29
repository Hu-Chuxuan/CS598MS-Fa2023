SELECT tb.primaryTitle 
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Animation%'
AND tb.primaryTitle != 'Coco'
AND (tb.primaryTitle IN ('The Incredibles', 'Brave', 'Tangled', 'Finding Dory', 'The Little Prince'))
ORDER BY tr.averageRating DESC
LIMIT 5