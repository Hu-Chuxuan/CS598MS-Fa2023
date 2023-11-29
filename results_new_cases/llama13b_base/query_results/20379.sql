SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres,
       AVG(rating) AS avg_rating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.primaryTitle = name_basics.primaryName
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE isAdult = 0  -- exclude adult movies
AND (primaryGenre = 'Musical' OR secondaryGenre = 'Musical')  -- only include movies with musical genre
AND AVG(rating) > (SELECT AVG(rating) FROM title_ratings WHERE tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'The Waterboy (1998)'))  -- exclude movies with lower average rating than The Waterboy
AND AVG(rating) < (SELECT AVG(rating) FROM title_ratings WHERE tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'Les Misérables (2012)'))  -- exclude movies with higher average rating than Les Misérables
GROUP BY tconst
ORDER BY avg_rating DESC