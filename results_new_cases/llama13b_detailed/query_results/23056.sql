SELECT * FROM title_basics
JOIN title_crew
ON title_basics.tconst = title_crew.tconst
JOIN title_principals
ON title_crew.tconst = title_principals.tconst
JOIN title_ratings
ON title_principals.nconst = title_ratings.nconst
WHERE title_basics.genres = 'Action'
AND title_ratings.averageRating > 7
AND title_principals.category = 'actor'
AND title_principals.job ='star'
AND title_crew.directors = 'nm0085156'
AND title_crew.writers = 'nm0085156'
AND title_basics.startYear > 2000
AND title_basics.endYear < 2020
ORDER BY title_ratings.averageRating DESC