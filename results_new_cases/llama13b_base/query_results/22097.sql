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
    title_basics.isAdult = 0  -- exclude adult movies
    AND title_ratings.numVotes > 1000  -- only consider movies with more than 1000 votes
    AND title_ratings.averageRating > 7.5  -- only consider movies with high average rating
    AND name_basics.birthYear = '1980'  -- only consider movies with directors/writers born in 1980 or later
    AND title_principals.category = 'actor'  -- only consider movies with actors in leading roles
    AND title_principals.job = 'leading'  -- only consider movies with leading actors
    AND title_principals.characters LIKE '%superhero%'  -- only consider movies with superhero characters
    AND title_basics.startYear > 2010  -- only consider movies released after 2010

