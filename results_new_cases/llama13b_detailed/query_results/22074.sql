SELECT * FROM (
  SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
  AVG(rating) AS averageRating, COUNT(rating) AS numVotes
  FROM title_ratings
  JOIN title_basics ON title_ratings.tconst = title_basics.tconst
  WHERE titleType ='movie' AND isAdult = 0 AND startYear <= 2011 AND endYear >= 2011
  GROUP BY tconst
) AS titles
JOIN name_basics ON titles.tconst = name_basics.nconst
WHERE name_basics.primaryProfession = 'actor' AND name_basics.knownForTitles!= ''
AND titles.averageRating > (
  SELECT AVG(rating)
  FROM title_ratings
  JOIN title_basics ON title_ratings.tconst = title_basics.tconst
  WHERE titleType ='movie' AND isAdult = 0 AND startYear <= 2011 AND endYear >= 2011
)
ORDER BY titles.averageRating DESC, titles.numVotes DESC