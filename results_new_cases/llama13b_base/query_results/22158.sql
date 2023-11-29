SELECT 
title_basics.title, title_basics.primaryTitle, title_ratings.averageRating, title_crew.directors, title_principals.characters
FROM 
title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE 
title_basics.genres = 'Horror'
AND title_ratings.numVotes > 1000
AND title_crew.directors NOT IN (SELECT nconst FROM name_basics WHERE primaryProfession = 'Actor')
AND title_principals.job NOT IN (SELECT nconst FROM name_basics WHERE primaryProfession = 'Actor')
AND title_principals.category NOT IN (SELECT nconst FROM name_basics WHERE primaryProfession = 'Actor')
AND title_basics.startYear BETWEEN 1970 AND 2020
AND title_basics.endYear BETWEEN 1970 AND 2020
AND title_basics.runtimeMinutes > 80
AND title_basics.isAdult = 0

