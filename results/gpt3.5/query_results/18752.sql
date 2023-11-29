SELECT title_basics.primaryTitle, title_basics.startYear, title_basics.runtimeMinutes, title_basics.genres, title_ratings.averageRating
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND title_basics.genres LIKE '%Drama%'
AND title_basics.primaryTitle NOT IN ('Star Wars  (1977)', 'Not Another Happy Ending (2013)')
AND (title_crew.writers LIKE '%nm1234567%' OR name_basics.primaryProfession LIKE '%writer%')
ORDER BY title_ratings.averageRating DESC
LIMIT 5