SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND (FIND_IN_SET((SELECT primaryTitle FROM title_basics WHERE primaryTitle = 'The Lion King (1994)' LIMIT 1), tb.genres) > 0
  OR FIND_IN_SET((SELECT primaryTitle FROM title_basics WHERE primaryTitle = 'The Jungle Book (2016)' LIMIT 1), tb.genres) > 0
  OR FIND_IN_SET((SELECT primaryTitle FROM title_basics WHERE primaryTitle = 'Jungle Book (2018)' LIMIT 1), tb.genres) > 0
  OR FIND_IN_SET((SELECT primaryTitle FROM title_basics WHERE primaryTitle = 'Shrek (2001)' LIMIT 1), tb.genres) > 0)