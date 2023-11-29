SELECT 
    title_basics.title,
    title_basics.primaryTitle,
    title_basics.originalTitle,
    title_ratings.averageRating,
    title_principals.characters
FROM 
    title_basics 
    JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
    JOIN name_basics ON title_basics.primaryTitle = name_basics.primaryName 
    JOIN title_crew ON title_basics.tconst = title_crew.tconst 
    JOIN title_principals ON title_basics.tconst = title_principals.tconst 
WHERE 
    title_basics.genres = 'Crime' 
    AND title_basics.startYear = 1995 
    AND title_basics.endYear = 2018 
    AND title_ratings.numVotes > 1000 
    AND title_principals.category = 'Actors' 
    AND title_principals.job = 'Lead' 
    AND title_principals.characters LIKE '%detective%' 
    AND title_basics.primaryTitle NOT IN (SELECT primaryTitle FROM name_basics WHERE birthYear = 1968) 
    AND title_basics.primaryTitle NOT IN (SELECT primaryTitle FROM name_basics WHERE deathYear = 2018) 
ORDER BY 
    title_ratings.averageRating DESC