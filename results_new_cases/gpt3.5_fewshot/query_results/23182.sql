SELECT tb.primaryTitle
FROM title_basics tb
WHERE 
    FIND_IN_SET('Crime', tb.genres) > 0
    AND startYear > 2010
    AND avgRating > 7
    AND numVotes > 50000