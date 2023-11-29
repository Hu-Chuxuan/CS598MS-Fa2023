SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr on tb.tconst = tr.tconst
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND FIND_IN_SET('Mystery', tb.genres) > 0
AND tr.averageRating > 6.5