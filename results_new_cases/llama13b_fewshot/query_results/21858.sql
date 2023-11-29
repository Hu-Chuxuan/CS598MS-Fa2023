SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Dumb and Dumber' LIMIT 1), tb.genres) > 0
AND FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Superbad' LIMIT 1), tb.genres) > 0
AND EXISTS (
  SELECT 1
  FROM title_basics tb2
  WHERE tb2.primaryTitle = tb.primaryTitle
  AND FIND_IN_SET(tb2.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Iron Man' LIMIT 1)) > 0
)
AND EXISTS (
  SELECT 1
  FROM title_basics tb2
  WHERE tb2.primaryTitle = tb.primaryTitle
  AND FIND_IN_SET(tb2.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Deadpool' LIMIT 1)) > 0
)