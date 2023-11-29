SELECT * FROM (
  SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
    AVG(rating) AS averageRating, COUNT(rating) AS numVotes
    FROM title_ratings
    JOIN title_basics ON title_ratings.tconst = title_basics.tconst
    WHERE titleType ='movie' AND isAdult = 0 AND startYear = 2004
    GROUP BY tconst
  ) AS top_movies
  JOIN name_basics ON top_movies.tconst = name_basics.nconst
  JOIN title_crew ON top_movies.tconst = title_crew.tconst
  JOIN title_principals ON top_movies.tconst = title_principals.tconst
  WHERE name_basics.primaryProfession = 'actor' AND name_basics.knownForTitles = 'tt0053137,tt00319'
  AND title_crew.directors = 'nm0005690'
  AND title_principals.category = 'actor'
  AND title_principals.job = 'actor'
  AND title_principals.characters!= '[''Assistant''']'
  AND title_principals.characters!= '[''Blacksmith''']'
  ORDER BY averageRating DESC, numVotes DESC