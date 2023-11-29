SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Bridesmaids' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Pitch Perfect' LIMIT 1)) > 0
AND NOT EXISTS (SELECT 1 FROM title_basics WHERE primaryTitle = tb.primaryTitle AND startYear < 2015)