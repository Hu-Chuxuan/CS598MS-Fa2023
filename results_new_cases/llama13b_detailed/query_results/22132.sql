SELECT 
title_basics.titleType,
title_basics.primaryTitle,
title_basics.runtimeMinutes,
title_basics.genres,
title_crew.directors,
title_principals.characters
FROM 
title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE 
title_basics.titleType ='movie'
AND title_basics.primaryTitle NOT IN (SELECT title FROM title_basics WHERE isAdult = 1)
AND title_principals.category = 'actor'
AND title_principals.job ='star'
AND title_crew.directors = ANY (
    SELECT 
        nconst
    FROM 
        name_basics
    WHERE 
        primaryProfession = 'actor'
        AND knownForTitles = ANY (
            SELECT 
                tconst
            FROM 
                title_basics
            WHERE 
                titleType ='movie'
                AND primaryTitle = 'A Low Down Dirty Shame (1994)'
        )
    )
)
AND title_basics.runtimeMinutes > 60
AND title_basics.genres LIKE '%Animation%'
AND title_principals.characters LIKE '%kids%'
ORDER BY 
title_basics.primaryTitle, title_principals.characters