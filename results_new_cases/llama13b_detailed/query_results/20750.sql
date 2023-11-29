SELECT * FROM (
  SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
    AVG(rating) AS avgRating, COUNT(*) AS numVotes
    FROM title_ratings
    JOIN title_basics ON title_ratings.tconst = title_basics.tconst
    WHERE titleType ='movie' AND isAdult = 0 AND startYear <= 2004 AND endYear >= 1997
    GROUP BY tconst
) AS top_movies
JOIN name_basics ON top_movies.tconst = name_basics.nconst
JOIN title_crew ON top_movies.tconst = title_crew.tconst
JOIN title_principals ON top_movies.tconst = title_principals.tconst
WHERE name_basics.primaryName = 'Leonardo DiCaprio'
ORDER BY avgRating DESC, numVotes DESC