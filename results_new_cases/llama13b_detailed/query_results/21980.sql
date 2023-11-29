SELECT * FROM title_basics tb
JOIN (
  SELECT nconst, averageRating, numVotes
  FROM title_ratings
  WHERE tconst = 'tt0053137' -- Stand by Me (1986)
) tr ON tb.tconst = tr.tconst
JOIN (
  SELECT nconst, job
  FROM title_principals
  WHERE tconst = 'tt0053137' -- Stand by Me (1986)
) tp ON tb.tconst = tp.tconst
JOIN (
  SELECT nconst, knownForTitles
  FROM name_basics
  WHERE nconst = 'nm0005690' -- Rob Reiner (director of Stand by Me)
) nb ON tb.tconst = nb.knownForTitles
WHERE tb.genres LIKE '%Drama%'
AND tb.startYear BETWEEN 1950 AND 1989
AND tb.runtimeMinutes > 90
ORDER BY tr.averageRating DESC, tb.primaryTitle ASC