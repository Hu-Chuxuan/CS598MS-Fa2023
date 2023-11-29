SELECT 
title_basics.title,
title_basics.primaryTitle,
title_basics.originalTitle,
title_basics.isAdult,
title_basics.startYear,
title_basics.endYear,
title_basics.runtimeMinutes,
title_ratings.averageRating,
title_ratings.numVotes,
name_basics.primaryName,
name_basics.birthYear,
name_basics.deathYear,
name_basics.primaryProfession,
name_basics.knownForTitles
FROM 
title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.tconst = name_basics.tconst
WHERE 
title_basics.title LIKE '%Young Guns%'  -- User input
AND title_ratings.averageRating > 6.5  -- User preference history
AND title_basics.startYear BETWEEN 1980 AND 1995  -- User preference history
AND title_basics.genres LIKE '%Comedy%'  -- User preference history
GROUP BY 
title_basics.title,
title_basics.primaryTitle,
title_basics.originalTitle,
title_basics.isAdult,
title_basics.startYear,
title_basics.endYear,
title_basics.runtimeMinutes,
title_ratings.averageRating,
title_ratings.numVotes,
name_basics.primaryName,
name_basics.birthYear,
name_basics.deathYear,
name_basics.primaryProfession,
name_basics.knownForTitles
HAVING 
COUNT(DISTINCT title_basics.tconst) > 3  -- User preference history
ORDER BY 
title_basics.startYear DESC,
title_ratings.averageRating DESC