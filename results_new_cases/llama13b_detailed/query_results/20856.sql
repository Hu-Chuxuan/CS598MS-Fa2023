SELECT *
FROM (
  SELECT tconst, averageRating, numVotes, genres, directors, writers
  FROM title_basics
  WHERE titleType ='movie' AND primaryTitle = 'Get Out'
  UNION
  SELECT nconst, job, characters
  FROM title_principals
  WHERE category = 'actor' AND job = 'Lupita Nyong'o'
  UNION
  SELECT nconst, profession
  FROM name_basics
  WHERE primaryName = 'Lupita Nyong'o'
) AS recommended_movies
WHERE NOT exists (
  SELECT 1
  FROM title_ratings
  WHERE tconst = recommended_movies.tconst
)
ORDER BY recommended_movies.averageRating DESC