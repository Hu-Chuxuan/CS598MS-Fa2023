SELECT tb.primaryTitle 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Comedy%' 
AND (tb.startYear BETWEEN 2000 AND 2010) 
AND tb.primaryTitle != 'Super Troopers' 
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5