SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'The Martian' LIMIT 1), tb.genres) > 0
AND (tb.startYear > 2010 OR tb.startYear = 2010) 
AND (tb.startYear < 2015 OR tb.startYear = 2015)