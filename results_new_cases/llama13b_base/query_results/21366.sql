SELECT title_basics.title, title_basics.primaryTitle, name_basics.primaryName, title_ratings.averageRating, title_principals.characters
FROM title_basics
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Drama' AND title_ratings.numVotes > 10000
AND title_principals.job = 'Actor' AND title_principals.characters LIKE '%Tom Hanks%'
AND NOT EXISTS (SELECT 1 FROM title_basics WHERE title_basics.tconst = title_principals.tconst AND title_basics.endYear > 2018)
AND NOT EXISTS (SELECT 1 FROM title_ratings WHERE title_ratings.tconst = title_principals.tconst AND title_ratings.numVotes < 1000)
AND NOT EXISTS (SELECT 1 FROM name_basics WHERE name_basics.nconst = title_principals.nconst AND name_basics.deathYear > 2018)

ORDER BY title_ratings.averageRating DESC, title_basics.startYear ASC