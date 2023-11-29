SELECT tconst, primaryTitle, genres, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND genres LIKE '%Comedy%'
AND (
  SELECT AVG(rating)
  FROM title_ratings
  WHERE tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle LIKE '%La La Land%' OR primaryTitle LIKE '%Hairspray%' OR primaryTitle LIKE '%Dreamgirls%')
) > (SELECT AVG(rating) FROM title_ratings WHERE tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle LIKE '%La La Land%'))
ORDER BY averageRating DESC, numVotes DESC