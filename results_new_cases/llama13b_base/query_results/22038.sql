SELECT 
title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.genres, title_ratings.averageRating, title_ratings.numVotes, name_basics.primaryName, name_basics.knownForTitles
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.tconst = name_basics.tconst
WHERE title_basics.startYear = 1985 AND title_basics.endYear = 1986 AND title_basics.genres LIKE '%Drama%'
AND title_ratings.averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'The Color Purple'))
AND NOT EXISTS (SELECT 1 FROM title_principals WHERE title_basics.tconst = title_principals.tconst AND category = 'Actress' AND job = 'Lead')
ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC
LIMIT 5