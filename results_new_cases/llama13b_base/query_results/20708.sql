SELECT 
    title_basics.title,
    title_basics.primaryTitle,
    title_ratings.averageRating,
    title_crew.directors,
    title_principals.characters
FROM 
    title_basics
    JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
    JOIN title_crew ON title_basics.tconst = title_crew.tconst
    JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE 
    title_basics.genres LIKE '%comedy%' AND 
    title_basics.genres LIKE '%action%' AND 
    title_ratings.numVotes > 10000 AND 
    title_ratings.averageRating > 7
AND (
    title_principals.category = 'actor' AND 
    title_principals.job = 'leading' AND 
    title_principals.characters LIKE '%Ryan Reynolds%'
)
OR (
    title_principals.category = 'director' AND 
    title_principals.job = 'directing' AND 
    title_principals.characters LIKE '%Tim Miller%'
)
ORDER BY 
    title_ratings.averageRating DESC