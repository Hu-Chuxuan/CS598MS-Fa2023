SELECT tb.primaryTitle
FROM title_basics tb
WHERE (
    FIND_IN_SET('Animation', tb.genres) > 0 
    OR FIND_IN_SET('Adventure', tb.genres) > 0
    OR FIND_IN_SET('Family', tb.genres) > 0
)
AND (tb.startYear > 1990)
AND (tb.averageRating > 7.5)
AND (tb.numVotes > 5000)