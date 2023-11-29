SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Dumb and Dumber' LIMIT 1), tb.genres) > 0
       OR FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Superbad' LIMIT 1), tb.genres) > 0
       OR FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Click' LIMIT 1), tb.genres) > 0)
AND NOT FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'You Don\'t Mess with the Zohan' LIMIT 1), tb.genres) > 0
AND tb.startYear > 2009
AND tb.startYear < 2021