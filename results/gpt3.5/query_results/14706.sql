SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Action%' 
AND (tb.primaryTitle NOT IN ('Black Panther (2018)', 'Ant-Man and the Wasp (2018)') 
OR tb.startYear < 2018) 
ORDER BY tr.averageRating DESC 
LIMIT 10