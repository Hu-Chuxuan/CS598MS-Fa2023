SELECT 
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
FROM
    title_basics
INNER JOIN
    title_ratings ON title_basics.tconst = title_ratings.tconst
INNER JOIN
    name_basics ON title_basics.tconst = name_basics.tconst
WHERE
    title_basics.primaryTitle = 'Easy A (2010)'
    AND title_ratings.averageRating > (
        SELECT
            AVG(title_ratings.averageRating)
        FROM
            title_ratings
        WHERE
            title_ratings.tconst IN (
                SELECT
                    title_basics.tconst
                FROM
                    title_basics
                WHERE
                    title_basics.primaryTitle = 'The Waterboy (1998)'
            )
    )
    AND title_basics.genres LIKE '%Comedy%'
    AND name_basics.primaryProfession LIKE '%Actress%'
ORDER BY
    title_ratings.averageRating DESC,
    title_basics.startYear ASC