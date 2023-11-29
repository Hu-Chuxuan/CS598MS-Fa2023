SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_ratings.averageRating, title_ratings.numVotes, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, title_crew.directors, title_crew.writers, title_principals.ordering, title_principals.category, title_principals.job, title_principals.characters
FROM title_basics
INNER JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
INNER JOIN name_basics ON title_basics.primaryTitle = name_basics.primaryName
INNER JOIN title_crew ON title_basics.tconst = title_crew.tconst
INNER JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.isAdult = '0'
AND title_ratings.averageRating > (
    SELECT AVG(title_ratings.averageRating)
    FROM title_ratings
    WHERE title_ratings.tconst IN (SELECT title_basics.tconst FROM title_basics WHERE primaryTitle = 'Super Troopers (2001)' OR primaryTitle = 'American Pie (1999)')
)
AND title_basics.startYear BETWEEN 1990 AND 2010
AND title_basics.runtimeMinutes > 80
ORDER BY title_ratings.averageRating DESC