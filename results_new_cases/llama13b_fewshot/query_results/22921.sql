SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Animated', tb.genres) > 0
AND FIND_IN_SET('Disney', tb.genres) > 0
AND startYear > 1980
AND startYear < 2016
AND NOT (tb.primaryTitle = 'Frozen' OR tb.primaryTitle = 'The Witch')