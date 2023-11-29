SELECT title_basics.title, title_basics.primaryTitle, title_ratings.averageRating, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.primaryName = name_basics.primaryName
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'romantic comedy' AND title_ratings.averageRating > 7 AND title_basics.startYear > 1990 AND title_basics.endYear < 2010
AND NOT EXISTS (SELECT * FROM title_basics WHERE title_basics.tconst = title_principals.tconst AND title_basics.primaryName = name_basics.primaryName)
LIMIT 5
