SELECT primaryTitle
FROM title_basics
WHERE FIND_IN_SET('Family', genres) > 0
AND startYear > 2010
AND averageRating > 6.5
AND numVotes > 1000