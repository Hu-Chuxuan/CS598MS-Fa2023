SELECT title_basics.title, title_basics.primaryTitle, title_basics.genres, name_basics.primaryName, name_basics.knownForTitles
FROM title_basics
JOIN name_basics ON title_basics.tconst = name_basics.nconst
WHERE title_basics.genres LIKE '%Summer%' AND title_basics.startYear <= '1984' AND title_basics.endYear >= '1979'
AND name_basics.knownForTitles LIKE '%Girls Trip%' OR name_basics.knownForTitles LIKE '%A Nightmare on Elm Street%'
OR name_basics.knownForTitles LIKE '%Jigsaw%' OR name_basics.knownForTitles LIKE '%Friday the 13th%'
ORDER BY title_basics.startYear DESC, title_basics.primaryTitle ASC