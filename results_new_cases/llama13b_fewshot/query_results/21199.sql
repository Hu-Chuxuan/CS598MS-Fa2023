SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Zootopia' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'The Incredibles' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Wreck-It Ralph' LIMIT 1)) > 0
AND NOT EXISTS (SELECT 1 FROM title_basics tb2 WHERE tb2.primaryTitle = tb.primaryTitle AND tb2.startYear < 2015)