SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'The Incredibles' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Incredibles 2' LIMIT 1)) > 0
AND (tb.startYear > 2000 OR tb.primaryTitle LIKE '%Animation%')