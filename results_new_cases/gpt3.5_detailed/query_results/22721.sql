SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Animation%' 
AND tb.startYear >= 2010
AND tb.startYear <= 2015
AND tr.averageRating > 7
AND tb.tconst NOT IN ('tt2294629', 'tt6066650', 'tt5013056', 'tt4555426')