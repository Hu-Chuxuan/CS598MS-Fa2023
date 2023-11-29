SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_ratings.averageRating, title_ratings.numVotes, name_basics.primaryName, name_basics.knownForTitles, title_crew.directors, title_principals.category, title_principals.job, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Comedy'
AND title_ratings.averageRating > (SELECT AVG(title_ratings.averageRating) FROM title_ratings WHERE title_ratings.tconst IN (SELECT title_basics.tconst FROM title_basics WHERE title_basics.genres = 'Comedy'))
AND title_principals.job IN ('Actor', 'Actress')
AND title_principals.characters LIKE '%comedy%'
AND title_basics.startYear <= 2000
AND title_basics.endYear >= 1980
AND title_ratings.numVotes > 1000
ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC