SELECT tb.primaryTitle 
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Animation%' 
AND tb.startYear > 2010 
AND tb.startYear < 2020
AND tr.averageRating >= 7
AND tb.tconst NOT IN ('tt0112735', 'tt0183523')