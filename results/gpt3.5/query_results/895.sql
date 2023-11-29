SELECT tconst, primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND startYear <= 1994 
AND genres LIKE '%Crime%' 
AND tconst NOT IN ('tt3460252', 'tt0110912', 'tt0120194', 'tt0120647', 'tt0120646', 'tt0111414', 'tt0120389', 'tt0162720', 'tt0110512', 'tt0120689', 'tt0120363')
ORDER BY numVotes DESC 
LIMIT 5