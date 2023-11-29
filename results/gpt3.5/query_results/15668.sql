SELECT tb.primaryTitle, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2005
AND tb.genres LIKE '%Drama%'
AND tb.originalTitle LIKE '%Sense and Sensibility%'
AND tb.primaryTitle != 'Sense and Sensibility'
ORDER BY tr.averageRating DESC
LIMIT 5