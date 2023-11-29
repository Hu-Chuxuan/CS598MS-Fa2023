SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Ant-Man' AND startYear = 2015 LIMIT 1), tb.genres) > 0
AND tconst NOT IN ('tt2395427', 'tt4154796', 'tt5463162')