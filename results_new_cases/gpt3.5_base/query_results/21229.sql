SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Romance%' 
AND tb.startYear < 2023 
AND tr.averageRating >= 7 
AND tb.primaryTitle NOT IN ('The Avengers (2012)') 
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 10