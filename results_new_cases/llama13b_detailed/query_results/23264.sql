SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.isAdult = 0
AND tr.averageRating > 5
AND nb.primaryProfession LIKE '%actor%'
AND nb.knownForTitles LIKE '%The Purge (2013)%'
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = tb.tconst AND tp.category = 'actor' AND tp.job = 'Blacksmith'
)
JOIN (
  SELECT nconst, AVG(rating) AS avg_rating
  FROM title_ratings
  WHERE titleType ='movie' AND isAdult = 0 AND rating > 5
  GROUP BY nconst
) AS rated_movies ON tb.nconst = rated_movies.nconst
WHERE rated_movies.avg_rating > 5
ORDER BY rated_movies.avg_rating DESC