SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'West Side Story' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'The Man in the Iron Mask' LIMIT 1)) > 0