SELECT * FROM (
  SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
    AVG(rating) AS averageRating, COUNT(rating) AS numVotes
    FROM title_ratings
    JOIN title_basics ON title_ratings.tconst = title_basics.tconst
    WHERE titleType ='movie' AND isAdult = 0
    AND (primaryTitle LIKE '%Coming Home%' OR originalTitle LIKE '%Coming Home%')
    GROUP BY tconst
) AS top_movies
WHERE numVotes > 100
ORDER BY averageRating DESC