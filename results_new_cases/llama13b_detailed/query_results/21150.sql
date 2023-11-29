SELECT * FROM title_basics
WHERE primaryTitle LIKE '%romantic comedy%'
AND genres LIKE '%comedy%'
AND genres LIKE '%romance%'
AND startYear > 2000
AND runtimeMinutes < 120
AND (directors OR writers) IN (
  SELECT nconst
  FROM name_basics
  WHERE primaryProfession LIKE '%actor%'
  AND knownForTitles LIKE '%Fast Times at Ridgemont High%'
  AND knownForTitles LIKE '%The Breakfast Club (1985)%'
)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 10