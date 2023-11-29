SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres NOT LIKE '%History%' 
AND tb.primaryTitle != 'Speed  (1994)' 
ORDER BY tr.averageRating DESC
LIMIT 5