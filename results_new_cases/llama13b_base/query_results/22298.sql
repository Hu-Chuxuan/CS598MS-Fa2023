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
WHERE title_basics.primaryTitle IN ('Bridesmaids', 'Pitch Perfect')
AND title_ratings.averageRating > 6.5
AND title_basics.genres LIKE '%comedy%'
AND name_basics.primaryProfession LIKE '%actress%'
AND name_basics.knownForTitles LIKE '%Rush Hour%'
OR name_basics.knownForTitles LIKE '%X-Men%'
GROUP BY title_basics.title
HAVING COUNT(DISTINCT title_basics.title) > 2
ORDER BY averageRating DESC