SELECT 
    title_basics.title, title_basics.primaryTitle, title_basics.genres, 
    title_crew.directors, title_crew.writers, 
    title_principals.category, title_principals.job, title_principals.characters 
FROM 
    title_basics 
INNER JOIN 
    title_crew ON title_basics.tconst = title_crew.tconst 
INNER JOIN 
    title_principals ON title_basics.tconst = title_principals.tconst 
WHERE 
    title_basics.primaryTitle LIKE '%romance%' AND 
    title_basics.genres LIKE '%comedy%' AND 
    title_principals.category LIKE 'actor' AND 
    title_principals.job LIKE 'lead'
ORDER BY 
    title_basics.primaryTitle ASC