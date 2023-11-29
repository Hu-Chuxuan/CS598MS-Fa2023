SELECT 
title_basics.title, 
title_basics.primaryTitle, 
title_basics.originalTitle, 
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
WHERE title_basics.primaryTitle = 'Interview with the Vampire'
AND title_ratings.averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE primaryTitle = 'Interview with the Vampire')
AND title_basics.genres LIKE '%Drama%'
AND title_basics.genres LIKE '%Horror%'
AND title_basics.startYear BETWEEN 1980 AND 1990
AND title_basics.endYear IS NULL
AND name_basics.primaryName = 'Brad Pitt'
AND name_basics.knownForTitles LIKE '%National Lampoon%s Vacation'
AND name_basics.knownForTitles LIKE '%Porky%s (1981)'
AND name_basics.knownForTitles LIKE '%Animal House (1978)%'
ORDER BY title_ratings.averageRating DESC