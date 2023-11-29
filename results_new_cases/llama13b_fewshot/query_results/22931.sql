SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Action', tb.genres) > 0
AND FIND_IN_SET('War', tb.genres) > 0
AND (SELECT COUNT(*) FROM title_ratings tr WHERE tr.title = tb.primaryTitle AND tr.averageRating > 7) > 5