SELECT 
title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.genres, 
title_ratings.averageRating, title_ratings.numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.primaryName
WHERE title_basics.titleType ='movie'
AND title_ratings.averageRating > 7
AND title_basics.genres LIKE '%comedy%'
AND title_basics.primaryTitle NOT LIKE '%slapstick%'
AND name_basics.knownForTitles LIKE '%Memphis Belle%'
AND name_basics.knownForTitles LIKE '%Black Hawk Down%'
GROUP BY title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.genres
HAVING COUNT(DISTINCT title_basics.tconst) > 2
ORDER BY title_basics.averageRating DESC, title_basics.primaryTitle ASC