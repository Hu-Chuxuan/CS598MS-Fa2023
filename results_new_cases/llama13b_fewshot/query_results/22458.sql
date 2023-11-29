SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Pineapple Express' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = '21 Jump Street' LIMIT 1)) > 0
AND NOT EXISTS (SELECT 1 FROM title_basics WHERE primaryTitle = tb.primaryTitle AND startYear < 2000)