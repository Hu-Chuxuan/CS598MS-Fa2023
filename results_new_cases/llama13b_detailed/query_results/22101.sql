SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND (genres LIKE '%found footage%' OR title_ratings.averageRating > 6)
AND (name_basics.primaryName NOT IN ('Bruce Willis', 'Milla Jovovich', 'Sigourney Weaver') OR (name_basics.primaryProfession LIKE '%actor%' AND name_basics.knownForTitles NOT IN ('The Thing (1982)', 'The Thing (2011)', 'Elf (2003)', 'National Lampoon\'s Christmas Vacation (1989)'))
GROUP BY tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
HAVING COUNT(DISTINCT name_basics.primaryName) > 1
ORDER BY startYear DESC, runtimeMinutes DESC