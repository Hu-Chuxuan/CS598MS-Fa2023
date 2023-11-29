SELECT primaryTitle 
FROM title_basics 
JOIN title_crew ON title_basics.tconst = title_crew.tconst
WHERE title_crew.directors LIKE '%James Cameron%' 
AND title_basics.primaryTitle != 'Titanic'
AND title_basics.startYear >= 2000
AND title_basics.genres LIKE '%Romance%'
ORDER BY title_basics.startYear DESC
LIMIT 5