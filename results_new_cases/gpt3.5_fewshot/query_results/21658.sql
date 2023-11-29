SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'The Matrix' AND startYear = 1999 LIMIT 1), tb.genres) > 0
OR FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Pan\'s Labyrinth' AND startYear = 2006 LIMIT 1), tb.genres) > 0