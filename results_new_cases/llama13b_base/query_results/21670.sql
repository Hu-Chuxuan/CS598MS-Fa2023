SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_ratings.averageRating, title_ratings.numVotes, name_basics.primaryName, name_basics.knownForTitles, title_crew.directors, title_principals.category, title_principals.job, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Superhero'
AND title_ratings.averageRating > 7
AND title_ratings.numVotes > 1000
AND name_basics.primaryName NOT IN ('George Lucas', 'James Cameron')
AND title_crew.directors NOT IN ('George Lucas', 'James Cameron')
AND title_principals.category NOT IN ('Actor', 'Actress')
AND title_principals.job NOT IN ('Director', 'Writer')
AND title_principals.characters NOT IN ('Han Solo', 'Darth Vader')
ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC
LIMIT 10