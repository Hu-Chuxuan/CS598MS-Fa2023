SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS average_rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND (tb.genres LIKE '%Crime%' OR tb.genres LIKE '%Thriller%')
AND tb.startYear > 2001
AND tr.averageRating > 7
AND tb.primaryTitle != 'Gravity'
AND tb.primaryTitle != 'Tomorrowland'
ORDER BY tr.averageRating DESC
LIMIT 5