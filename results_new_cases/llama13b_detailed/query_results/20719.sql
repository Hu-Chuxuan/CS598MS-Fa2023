SELECT * FROM title_basics
WHERE (genres LIKE '%Action%' AND genres LIKE '%Comedy%' AND runtimeMinutes <= 120)
OR (directors AND writers) IN (
    SELECT nconst, name_basics.primaryName
    FROM name_basics
    WHERE (name_basics.primaryProfession LIKE '%Actor%' AND name_basics.knownForTitles LIKE '%Action%' AND name_basics.knownForTitles LIKE '%Comedy%')
)
ORDER BY averageRating DESC, numVotes DESC