SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND tb.startYear > 2010
AND tr.averageRating > 7
ORDER BY tr.averageRating DESC