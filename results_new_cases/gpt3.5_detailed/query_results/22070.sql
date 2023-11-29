SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Animals%' 
AND tb.genres NOT LIKE '%Sad%' 
AND tb.startYear > 1984 
AND tb.primaryTitle NOT IN ('Hachi: A Dog\'s Tale (2009)', 'Goodfellas (1990)', 'The Terminator (1984)') 
ORDER BY tr.averageRating DESC, tr.numVotes DESC 
LIMIT 5