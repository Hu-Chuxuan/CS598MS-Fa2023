SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Crime%' 
AND tb.startYear >= 1990 
AND tb.primaryTitle NOT IN ('Forrest Gump (1994)', 'Big Fish (2003)') 
ORDER BY tr.averageRating DESC