SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('Game Night (2018)', tb.genres) > 0
AND FIND_IN_SET('Bridesmaids (2011)', tb.genres) > 0
AND FIND_IN_SET('Girls Trip (2017)', tb.genres) > 0
AND NOT FIND_IN_SET('The Revenant (2015)', tb.genres)