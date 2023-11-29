SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Dumb and Dumber' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Super Troopers' LIMIT 1)) > 0
AND EXISTS (SELECT 1 FROM title_basics tb2 WHERE tb2.primaryTitle = tb.primaryTitle AND tb2.startYear > 1980 AND tb2.startYear < 2005)