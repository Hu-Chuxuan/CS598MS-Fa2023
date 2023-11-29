SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.startYear = 2000 
AND tb.primaryTitle NOT LIKE 'The Hunger Games%' 
AND tb.primaryTitle NOT LIKE 'Tangled%' 
AND tb.genres LIKE '%Comedy%' 
ORDER BY tr.averageRating DESC, tr.numVotes DESC 
LIMIT 5