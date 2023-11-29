SELECT
title_basics.title,
title_ratings.averageRating,
title_principals.category,
title_principals.job
FROM
title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_ratings.tconst = title_principals.tconst
WHERE
title_basics.titleType ='movie'
AND title_ratings.averageRating > (
    SELECT
    AVG(rating)
    FROM
    title_ratings
    WHERE
    title_basics.tconst = title_ratings.tconst
)
AND title_principals.category IN ('actor', 'director')
AND title_principals.job NOT IN ('self', 'producer')
AND title_basics.isAdult = 0
AND title_basics.startYear > 2000
AND title_basics.endYear IS NULL
AND title_ratings.numVotes > 1000
AND title_ratings.averageRating > 7
AND title_principals.nconst NOT IN (
    SELECT
    nconst
    FROM
    name_basics
    WHERE
    primaryName = 'Fred Astaire'
)
AND title_principals.nconst NOT IN (
    SELECT
    nconst
    FROM
    name_basics
    WHERE
    primaryName = 'Humphrey Bogart'
)
AND title_principals.nconst NOT IN (
    SELECT
    nconst
    FROM
    name_basics
    WHERE
    primaryName = 'Ingrid Bergman'
)
AND title_principals.nconst NOT IN (
    SELECT
    nconst
    FROM
    name_basics
    WHERE
    primaryName = 'Cary Grant'
)
ORDER BY
title_ratings.averageRating DESC, title_basics.primaryTitle ASC
LIMIT 5