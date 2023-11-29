SELECT 
    title_basics.title, title_basics.primaryTitle, title_basics.originalTitle,
    title_ratings.averageRating, title_ratings.numVotes,
    name_basics.primaryName, name_basics.birthYear, name_basics.deathYear,
    title_crew.directors, title_crew.writers,
    title_principals.ordering, title_principals.category, title_principals.job,
    title_principals.characters
FROM 
    title_basics
    JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
    JOIN name_basics ON title_basics.primaryTitle = name_basics.primaryName
    JOIN title_crew ON title_basics.tconst = title_crew.tconst
    JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE 
    title_basics.genres LIKE '%Action%' AND title_basics.genres LIKE '%Comedy%'
    AND title_ratings.averageRating > 7 AND title_ratings.numVotes > 1000
    AND name_basics.birthYear > 1970 AND name_basics.deathYear < 2020
    AND title_crew.directors LIKE '%Pennywise%'
    AND title_principals.category = 'Actor' AND title_principals.job = 'Lead'
    AND title_principals.characters LIKE '%Pennywise%'