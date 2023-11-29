SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Baby Driver' LIMIT 1), tb.genres) > 0
AND startYear = 2017
AND tb.tconst != 'tt3890160'  -- Exclude 'Baby Driver' itself
LIMIT 10