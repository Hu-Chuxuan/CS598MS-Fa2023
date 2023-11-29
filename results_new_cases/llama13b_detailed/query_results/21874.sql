SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       AVG(r.rating) AS avgRating, COUNT(r.rating) AS numVotes
       FROM title_basics t
       JOIN title_ratings r ON t.tconst = r.tconst
       WHERE t.titleType ='movie' AND t.isAdult = 0
       GROUP BY t.tconst
    ) AS recommendedTitles
WHERE exists (
  SELECT 1 FROM name_basics n
  JOIN title_principals tp ON n.nconst = tp.nconst
  WHERE n.primaryProfession = 'actor' AND tp.category = 'actor'
  AND n.knownForTitles @> 'Along Came Polly'
  AND n.knownForTitles @> 'Pretty Woman (1990)'
  AND n.knownForTitles @> 'Bridget Jones''s Diary  (2001)'
)
ORDER BY avgRating DESC, numVotes DESC