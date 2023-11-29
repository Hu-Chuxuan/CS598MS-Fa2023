SELECT 
    title_basics.title, 
    title_ratings.averageRating, 
    title_crew.directors, 
    title_principals.characters 
FROM 
    title_basics 
INNER JOIN 
    title_ratings ON title_basics.tconst = title_ratings.tconst 
INNER JOIN 
    title_crew ON title_basics.tconst = title_crew.tconst 
INNER JOIN 
    title_principals ON title_basics.tconst = title_principals.tconst 
WHERE 
    title_basics.titleType = 'feature film' 
    AND title_ratings.numVotes > 1000 
    AND title_crew.directors LIKE '%Jim Carrey%' 
    AND title_principals.characters LIKE '%Kirsten Dunst%' 
    AND title_basics.startYear BETWEEN 1990 AND 2018 
    AND title_basics.endYear BETWEEN 1990 AND 2018 
    AND title_basics.runtimeMinutes BETWEEN 80 AND 120 
    AND title_basics.genres LIKE '%comedy%' 
    AND NOT EXISTS ( 
        SELECT 
            * 
        FROM 
            title_basics 
        WHERE 
            title_basics.tconst = title_principals.tconst 
            AND title_basics.title LIKE '%Black Panther%' 
    ) 
ORDER BY 
    title_ratings.averageRating DESC, 
    title_basics.startYear DESC