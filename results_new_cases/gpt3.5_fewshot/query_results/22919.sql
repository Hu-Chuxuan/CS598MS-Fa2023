SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE FIND_IN_SET('Sci-Fi', tb.genres) > 0
AND tb.startYear < 1980
AND tr.averageRating > 7.5