SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres != 'Horror' 
AND tb.tconst NOT IN ('Avengers: Infinity War (2018)') 
ORDER BY tr.averageRating DESC 
LIMIT 10