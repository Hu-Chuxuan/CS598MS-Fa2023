SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND primaryTitle NOT IN ('The Hangover Part II', 'The Hangover Part III', 'Ghostbusters', '50 First Dates', 'Billy Madison', 'Ghostbusters II', 'Click') 
AND genres LIKE '%Comedy%' 
ORDER BY averageRating DESC, numVotes DESC 
LIMIT 5