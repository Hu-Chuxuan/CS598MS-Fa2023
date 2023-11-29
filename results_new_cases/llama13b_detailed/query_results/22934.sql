SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, knownForTitles
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND (
    (primaryTitle LIKE '%Stephen King%' OR originalTitle LIKE '%Stephen King%')
    AND (name_basics.primaryName NOT LIKE '%Stephen King%' AND name_basics.knownForTitles NOT LIKE '%Stephen King%')
    AND (title_principals.category NOT LIKE '%Director%' AND title_principals.job NOT LIKE '%Director%')
    AND (title_crew.directors NOT LIKE '%Stephen King%' AND title_crew.writers NOT LIKE '%Stephen King%')
)
ORDER BY runtimeMinutes DESC, startYear DESC