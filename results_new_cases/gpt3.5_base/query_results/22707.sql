SELECT tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE (tb1.genres LIKE '%Comedy%' OR tb1.genres LIKE '%Animation%') 
AND tb1.startYear BETWEEN 1990 AND 2017 
AND tb1.tconst <> 'tt0317705'  -- Exclude The Incredibles (2004)
AND tb1.tconst NOT IN ('tt6193408', 'tt0083131', 'tt0910936', 'tt1567113', 'tt0114908', 'tt0083131', 'tt0077975', 'tt0116778')  -- Exclude historical preferences
ORDER BY tr.averageRating DESC
LIMIT 5