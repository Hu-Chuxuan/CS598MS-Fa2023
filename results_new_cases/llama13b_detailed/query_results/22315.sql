SELECT tconst, primaryTitle, genres, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_ratings.nconst = name_basics.nconst
WHERE genres LIKE '%Documentary%' AND genres LIKE '%Drama%'
AND (directors OR writers) IN (
  SELECT nconst
  FROM name_basics
  WHERE primaryProfession LIKE '%Doctor%'
)
AND averageRating > (
  SELECT AVG(averageRating)
  FROM title_ratings
  WHERE tconst IN (
    SELECT tconst
    FROM title_basics
    WHERE genres LIKE '%Documentary%' AND genres LIKE '%Drama%'
  )
)
ORDER BY averageRating DESC, numVotes DESC