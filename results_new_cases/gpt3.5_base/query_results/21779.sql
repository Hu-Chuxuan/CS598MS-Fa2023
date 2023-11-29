SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Science%' 
AND tb.startYear = 2015 
AND tb.primaryTitle != 'The Martian' 
AND tb.primaryTitle NOT IN ('Black Panther (2018)', 'Deadpool 2 (2018)') 
ORDER BY tr.averageRating DESC 
LIMIT 5