SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Science Fiction', tb.genres) > 0
AND FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Guardians of the Galaxy' LIMIT 1), tb.genres) > 0
AND EXISTS (SELECT 1 FROM title_basics tb2 WHERE tb2.primaryTitle = tb.primaryTitle AND tb2.startYear > 2010)