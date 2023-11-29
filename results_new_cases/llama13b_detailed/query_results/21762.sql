SELECT
title_basics.tconst, title_basics.titleType, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres,
title_crew.directors, title_crew.writers,
title_principals.ordering, title_principals.nconst, title_principals.category, title_principals.job, title_principals.characters
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.titleType ='movie' AND title_basics.primaryTitle LIKE '%Bill & Ted's Bogus Journey%'
AND title_principals.category IN ('director', 'writer')
AND title_crew.directors IN (SELECT nconst FROM name_basics WHERE primaryName = 'Keanu Reeves')
AND title_crew.writers IN (SELECT nconst FROM name_basics WHERE primaryName = 'Alex Winter')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5