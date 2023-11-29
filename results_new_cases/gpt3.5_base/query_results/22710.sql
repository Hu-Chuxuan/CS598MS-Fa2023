SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE (tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Animation%') 
AND tb.tconst NOT IN ('Bridesmaids  (2011)') 
AND tb.titleType = 'movie' 
AND tr.numVotes > 1000 
ORDER BY tr.averageRating DESC 
LIMIT 10