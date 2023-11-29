SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Dumb and Dumber' LIMIT 1), tb.genres) > 0
  AND FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Superbad' LIMIT 1), tb.genres) > 0
  AND tb.primaryTitle NOT IN ('Hot Tub Time Machine', 'Office Space', 'Superbad', 'The 40-Year-Old Virgin', 'Dumb and Dumber')