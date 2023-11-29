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
WHERE title_basics.genres LIKE '%crime%'
AND title_ratings.averageRating > (SELECT AVG(title_ratings.averageRating) FROM title_ratings WHERE title_ratings.tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'Pulp Fiction (1994)'))
AND title_basics.startYear BETWEEN (SELECT MIN(startYear) FROM title_basics WHERE primaryTitle = 'Toy Story (1995)') AND (SELECT MAX(endYear) FROM title_basics WHERE primaryTitle = 'Toy Story (1995)')
AND NOT EXISTS (SELECT 1 FROM title_basics WHERE primaryTitle = 'Peter Rabbit (2018)')
ORDER BY title_ratings.averageRating DESC, title_basics.startYear DESC