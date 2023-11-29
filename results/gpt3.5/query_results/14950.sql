SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%' 
AND tb.startYear >= 1990
AND tb.originalTitle NOT LIKE '%Broadchurch%'
AND tb.originalTitle NOT LIKE '%Sense and Sensibility%'
AND tb.titleType = 'movie'
ORDER BY tr.averageRating DESC
LIMIT 5