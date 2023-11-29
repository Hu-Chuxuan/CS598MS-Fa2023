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
JOIN name_basics ON title_basics.tconst = name_basics.tconst

WHERE title_basics.title LIKE '%mystery%' OR title_basics.title LIKE '%action%'
AND title_ratings.averageRating > (
    SELECT AVG(title_ratings.averageRating)
    FROM title_ratings
    WHERE title_ratings.tconst IN (SELECT tconst FROM title_basics WHERE title_basics.primaryTitle = 'Black Panther (2018)' OR title_basics.primaryTitle = 'Ant-Man and the Wasp (2018)' OR title_basics.primaryTitle = 'Avengers: Infinity War (2018)' OR title_basics.primaryTitle = 'Deadpool  (2016)')
)

GROUP BY title_basics.tconst

ORDER BY averageRating DESC