SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Animation%' 
OR tb.genres LIKE '%Adventure%' 
OR tb.genres LIKE '%Comedy%'
AND tb.startYear > 2010
AND tr.averageRating > 7.5
AND tb.tconst NOT IN ('tt0114709', 'tt0093010', 'tt0119094')
LIMIT 10