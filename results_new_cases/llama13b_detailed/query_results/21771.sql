SELECT 
    title_basics.title, 
    title_basics.primaryTitle, 
    title_basics.originalTitle, 
    title_basics.genres, 
    title_ratings.averageRating, 
    title_ratings.numVotes, 
    name_basics.primaryName, 
    name_basics.knownForTitles
FROM 
    title_basics 
INNER JOIN 
    title_crew ON title_basics.tconst = title_crew.tconst 
INNER JOIN 
    title_principals ON title_basics.tconst = title_principals.tconst 
INNER JOIN 
    title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE 
    title_basics.primaryTitle LIKE '%Marshall%' 
    AND title_basics.genres LIKE '%Comedy%' 
    AND title_ratings.averageRating > 6 
    AND title_ratings.numVotes > 1000 
    AND name_basics.primaryName NOT LIKE 'Fred Astaire%' 
    AND name_basics.knownForTitles NOT LIKE 'Carmencita%'
GROUP BY 
    title_basics.title, 
    title_basics.primaryTitle, 
    title_basics.originalTitle, 
    title_basics.genres, 
    title_ratings.averageRating, 
    title_ratings.numVotes, 
    name_basics.primaryName, 
    name_basics.knownForTitles
ORDER BY 
    title_ratings.averageRating DESC