SELECT 
title_basics.title_id,
title_basics.title,
title_basics.primaryTitle,
title_basics.originalTitle,
title_basics.isAdult,
title_basics.startYear,
title_basics.endYear,
title_basics.runtimeMinutes,
title_basics.genres,
title_ratings.averageRating,
title_ratings.numVotes,
name_basics.primaryName,
name_basics.birthYear,
name_basics.deathYear,
name_basics.primaryProfession,
name_basics.knownForTitles
FROM title_basics
JOIN title_ratings ON title_basics.title_id = title_ratings.title_id
JOIN name_basics ON title_basics.title_id = name_basics.title_id
WHERE title_basics.genres LIKE '%historical%'
AND title_ratings.averageRating > (
    SELECT AVG(title_ratings.averageRating)
    FROM title_ratings
    WHERE title_ratings.title_id IN (
        SELECT title_id
        FROM title_basics
        WHERE primaryTitle = 'The Lost Boys (1987)'
        OR primaryTitle = 'Bram Stoker\'s Dracula (1992)'
    )
)
ORDER BY title_ratings.averageRating DESC