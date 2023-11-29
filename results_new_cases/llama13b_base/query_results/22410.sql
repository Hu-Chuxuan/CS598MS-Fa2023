SELECT title_basics.title, title_basics.primaryTitle, name_basics.primaryName, title_ratings.averageRating, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Comedy'
AND title_ratings.numVotes > 1000
AND title_principals.job = 'Actor'
AND title_principals.characters LIKE '%comedy%'
AND NOT EXISTS (SELECT 1 FROM title_basics WHERE title_basics.tconst = title_principals.tconst AND title_basics.endYear > 2010)

ORDER BY title_ratings.averageRating DESC, title_basics.startYear ASC