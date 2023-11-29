SELECT 
title_basics.title,
title_basics.primaryTitle,
title_basics.originalTitle,
title_basics.isAdult,
title_ratings.averageRating,
title_ratings.numVotes,
name_basics.primaryName,
name_basics.birthYear,
name_basics.deathYear,
name_basics.primaryProfession,
title_crew.directors,
title_crew.writers,
title_principals.ordering,
title_principals.category,
title_principals.job,
title_principals.characters

FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.primaryTitle = name_basics.primaryName
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst

WHERE title_basics.isAdult = '0' -- exclude adult movies
AND title_ratings.averageRating > 7 -- only consider movies with high ratings
AND title_ratings.numVotes > 1000 -- only consider movies with a large number of votes
AND name_basics.primaryProfession = 'Director' -- only consider movies directed by well-known directors
AND title_crew.directors = 'Pixar' -- only consider movies directed by Pixar
AND title_principals.category = 'Animation' -- only consider animated movies
AND title_principals.job = 'Voice Actor' -- only consider movies with voice actors
AND title_principals.characters = 'Kids' -- only consider movies with kids as main characters

ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC

LIMIT 5