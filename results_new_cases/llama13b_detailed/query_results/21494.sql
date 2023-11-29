SELECT 
title_basics.title, 
title_basics.primaryTitle, 
title_basics.genres, 
title_crew.directors, 
title_crew.writers, 
title_principals.characters
FROM 
title_basics 
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE 
title_basics.genres LIKE '%Science Fiction' AND 
title_principals.category = 'actor' AND 
title_principals.job ='star'
AND title_ratings.averageRating > (
    SELECT 
    AVG(rating)
    FROM 
    title_ratings
    WHERE 
    title = title_basics.title
)
AND title_basics.startYear > 2000
AND title_basics.endYear IS NULL
ORDER BY 
title_basics.primaryTitle ASC