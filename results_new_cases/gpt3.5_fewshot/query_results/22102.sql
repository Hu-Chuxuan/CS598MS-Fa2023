SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Snow', tb.genres) > 0