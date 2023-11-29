SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Animation%' 
AND tb.startYear >= 2010 
AND tb.tconst NOT IN ('tt0478970', 'tt5463162', 'tt1825683', 'tt4154756', 'tt4154796', 'tt1431045', 'tt5463162', 'tt4154746', 'tt4154664') 
ORDER BY tr.averageRating DESC