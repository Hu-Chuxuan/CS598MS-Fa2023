SELECT 
title_basics.tconst,
title_basics.titleType,
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
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.tconst = name_basics.tconst
WHERE title_basics.genres LIKE '%fantasy' AND title_basics.genres LIKE '%action'
AND NOT EXISTS (
    SELECT 1 
    FROM title_ratings 
    WHERE title_ratings.tconst = title_basics.tconst AND title_ratings.averageRating < 5
)
AND title_basics.tconst NOT IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'Highlander II: The Quickening')

GROUP BY title_basics.tconst, title_basics.titleType, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles

HAVING AVG(title_ratings.averageRating) > AVG(title_ratings.averageRating)

ORDER BY AVG(title_ratings.averageRating) DESC