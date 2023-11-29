SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' 
AND tb.startYear >= 2010 
AND tr.averageRating > 7 
AND tb.tconst NOT IN ('tt5580390', 'tt0118880', 'tt0057115', 'tt1485796', 'tt4555426') 
ORDER BY tr.averageRating DESC
LIMIT 5