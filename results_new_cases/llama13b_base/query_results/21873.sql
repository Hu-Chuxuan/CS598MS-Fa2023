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
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
WHERE title_basics.genres = 'Comedy'
AND title_ratings.averageRating > 6.5
AND title_basics.startYear > 2000
AND title_basics.endYear < 2020
AND name_basics.primaryProfession = 'Actor'
AND name_basics.knownForTitles LIKE '%Superbad%'
OR name_basics.knownForTitles LIKE '%Kick-Ass%'
OR title_basics.title LIKE '%Superbad%'
OR title_basics.title LIKE '%Kick-Ass%'
AND title_basics.tconst NOT IN (SELECT tconst FROM title_basics WHERE startYear < 2000)
AND title_basics.tconst NOT IN (SELECT tconst FROM title_basics WHERE endYear > 2020)
AND title_ratings.numVotes > 10000
ORDER BY title_ratings.averageRating DESC