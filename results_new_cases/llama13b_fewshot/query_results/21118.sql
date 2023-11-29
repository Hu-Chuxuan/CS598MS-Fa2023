SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Mystery', tb.genres) > 0
AND FIND_IN_SET('Memento (2000)', tb.genres) > 0