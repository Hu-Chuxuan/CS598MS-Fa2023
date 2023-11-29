SELECT tb.primaryTitle AS recommended_movie, tr.averageRating 
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sport%' 
AND tb.titleType = 'movie'
AND (
    (tb.primaryTitle != 'Friday Night Lights (2004)' AND tb.originalTitle != 'Friday Night Lights (2004)') 
    OR tb.startYear != 2004
)
AND (
    (tb.primaryTitle != 'Rudy (1993)' AND tb.originalTitle != 'Rudy (1993)') 
    OR tb.startYear != 1993
)
ORDER BY tr.averageRating DESC
LIMIT 5