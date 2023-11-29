SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Family%'
AND startYear >= 2015
AND averageRating >= 7
AND primaryTitle NOT IN ('Jumanji (1995)', 'Star Wars: Episode VIII – The Last Jedi (2017)')
ORDER BY numVotes DESC
LIMIT 5