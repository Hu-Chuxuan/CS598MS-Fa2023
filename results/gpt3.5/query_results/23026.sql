SELECT primaryTitle 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
JOIN name_basics ON title_principals.nconst = name_basics.nconst 
WHERE title_basics.titleType = 'movie' 
AND title_basics.startYear <= 1983 
AND title_ratings.averageRating >= 7 
AND name_basics.primaryName = "Jamie Lee Curtis"
AND title_basics.primaryTitle NOT IN ('A Fish Called Wanda (1988)', 'Trading Places (1983)')
ORDER BY title_ratings.numVotes DESC
LIMIT 5