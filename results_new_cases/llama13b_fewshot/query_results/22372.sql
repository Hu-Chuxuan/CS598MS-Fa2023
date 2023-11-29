SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'The Wolverine' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Logan' LIMIT 1)) > 0
AND EXISTS (
  SELECT 1
  FROM name_basics nb
  WHERE nb.primaryName = 'Hugh Jackman'
  AND nb.knownForTitles = tb.primaryTitle
)
