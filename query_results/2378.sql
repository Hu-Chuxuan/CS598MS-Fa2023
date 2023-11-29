SELECT * FROM 
    ( SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres
       , ratingAverage, count(*) AS voteCount
      from imdbdata GROUP BY tconst ) AS T
WHERE ((primaryTitle LIKE '%The%') AND (originalTitle NOT LIKE '%The%' OR originalTitle IS NULL)) AND (isAdult = FALSE)