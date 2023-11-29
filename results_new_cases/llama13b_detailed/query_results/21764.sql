SELECT 
title_basics.tconst, 
title_basics.primaryTitle, 
title_basics.genres, 
title_principals.nconst, 
title_principals.job
FROM 
title_basics, 
title_crew, 
title_principals
WHERE 
title_basics.tconst = title_crew.tconst
AND title_basics.tconst = title_principals.tconst
AND (
    title_basics.genres LIKE '%Mystery%'
OR
    title_principals.category = 'writer'
OR
    title_principals.category = 'director'
)
AND title_ratings.tconst NOT IN (
    SELECT 
    tconst
    FROM 
    title_ratings
    WHERE 
    user_id = <user_id> -- replace with the user's ID
)
AND title_principals.nconst NOT IN (
    SELECT 
    nconst
    FROM 
    title_principals
    WHERE 
    title_id = (
        SELECT 
        title_id
        FROM 
        title_ratings
        WHERE 
        user_id = <user_id> -- replace with the user's ID
    )
)
ORDER BY 
title_basics.primaryTitle, title_principals.job