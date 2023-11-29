SELECT 
title_basics.title,
title_basics.primaryTitle,
title_basics.originalTitle,
title_basics.isAdult,
title_basics.startYear,
title_basics.endYear,
title_basics.runtimeMinutes,
title_ratings.averageRating,
title_ratings.numVotes,
name_basics.primaryName,
name_basics.birthYear,
name_basics.deathYear,
name_basics.primaryProfession,
name_basics.knownForTitles
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
WHERE title_basics.genres = 'Comedy'
AND title_basics.isAdult = 0
AND title_ratings.averageRating > (
    SELECT AVG(title_ratings.averageRating)
    FROM title_ratings
    WHERE title_ratings.tconst IN (
        SELECT title_basics.tconst
        FROM title_basics
        WHERE title_basics.genres = 'Stoner Comedy'
    )
)
AND title_basics.startYear BETWEEN 2000 AND 2020
AND title_basics.runtimeMinutes < 120
AND name_basics.primaryName IN (
    SELECT name_basics.primaryName
    FROM name_basics
    WHERE name_basics.knownForTitles IN (
        SELECT title_basics.title
        FROM title_basics
        WHERE title_basics.genres = 'Stoner Comedy'
    )
)
ORDER BY title_basics.startYear DESC, title_ratings.averageRating DESC