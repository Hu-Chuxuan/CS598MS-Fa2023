SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Sci-Fi%' 
AND tb.startYear <= 1982 
AND tr.averageRating >= 7 
AND tb.tconst NOT IN ('tt2387433', 'tt1289401') 
ORDER BY tr.averageRating DESC, tb.startYear DESC 
LIMIT 5