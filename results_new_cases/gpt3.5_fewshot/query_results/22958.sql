SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET('War', tb.genres) > 0
       OR tb.primaryTitle = 'Dunkirk'
       OR tb.primaryTitle = 'Saving Private Ryan')
AND tb.startYear < 1990