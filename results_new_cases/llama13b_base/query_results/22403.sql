SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_ratings.averageRating, title_ratings.numVotes, name_basics.primaryName, name_basics.knownForTitles, title_crew.directors, title_principals.category, title_principals.job, title_principals.characters 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
JOIN name_basics ON title_basics.tconst = name_basics.tconst 
JOIN title_crew ON title_basics.tconst = title_crew.tconst 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
WHERE title_basics.genres = 'Comedy' AND title_ratings.averageRating > 7 AND title_principals.category = 'Parody' AND name_basics.knownForTitles LIKE '%Scary Movie%'
ORDER BY title_ratings.averageRating DESC, title_principals.job ASC