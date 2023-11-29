SELECT 
title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, 
title_ratings.averageRating, title_ratings.numVotes, 
name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, 
title_crew.directors, title_crew.writers, 
title_principals.ordering, title_principals.category, title_principals.job, 
title_principals.characters
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
JOIN name_basics ON title_basics.tconst = name_basics.tconst 
JOIN title_crew ON title_basics.tconst = title_crew.tconst 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
WHERE title_basics.genres = 'Comedy' 
AND title_ratings.averageRating > (
    SELECT 
    AVG(title_ratings.averageRating)
    FROM title_ratings
    WHERE title_ratings.tconst IN (
        SELECT 
        tconst
        FROM title_ratings
        WHERE title_ratings.averageRating > 7
    )
)
AND title_principals.category IN (
    SELECT 
    category
    FROM title_principals
    WHERE title_principals.job = 'Actor'
)
AND title_principals.job = 'Actor'
AND title_principals.characters LIKE '%Comedy%'
ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC