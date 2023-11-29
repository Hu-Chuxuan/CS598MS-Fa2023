SELECT primaryTitle, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryTitle != 'Shaun of the Dead' -- exclude the input movie
AND primaryTitle != 'Hot Fuzz' -- exclude the mentioned movie
AND primaryTitle != 'Whiplash' -- exclude from user preferences
AND primaryTitle != 'Brooklyn' -- exclude from user preferences
AND primaryTitle != 'Children of Men' -- exclude from user preferences
AND primaryTitle != 'Inception' -- exclude from user preferences
AND primaryTitle != 'Dunkirk' -- exclude from user preferences
AND primaryProfession LIKE '%actor%' -- filter for movies with actors
AND primaryProfession LIKE '%actress%' -- filter for movies with actresses
AND averageRating >= 7.5 -- filter for highly rated movies
AND startYear >= 2000 -- filter for recent movies
GROUP BY primaryTitle
ORDER BY numVotes DESC
LIMIT 5