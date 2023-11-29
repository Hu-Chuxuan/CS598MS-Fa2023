SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1980
AND tb.genres LIKE '%Action%'
AND tb.tconst NOT IN 
  (SELECT DISTINCT tp.tconst
  FROM title_principals tp
  JOIN name_basics nb ON tp.nconst = nb.nconst
  WHERE nb.primaryName = 'The Karate Kid (1984)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5