SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Groundhog Day' LIMIT 1)) > 0
AND EXISTS (
  SELECT 1
  FROM title_crew
  WHERE tc.tconst = tb.tconst
  AND tc.directors = 'nm0085156'
)