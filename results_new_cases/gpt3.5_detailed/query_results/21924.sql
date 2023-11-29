SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tb.startYear AS release_year
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND (tb.primaryTitle LIKE '%Ace Ventura: Pet Detective%' 
    OR tb.primaryTitle LIKE '%Superbad%') 
AND tb.startYear >= 2000 
AND tb.startYear <= 2010 
AND tb.tconst NOT IN ('tt0247745', 'tt0404032', 'tt1156398')
ORDER BY tr.averageRating DESC
LIMIT 5