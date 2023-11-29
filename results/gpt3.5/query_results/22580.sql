SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS average_rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear > 2001
AND (tb1.genres LIKE '%Comedy%' OR tb1.genres LIKE '%Crime%')
AND tb1.primaryTitle != 'Super Troopers (2001)'
AND tb1.primaryTitle != 'American Pie  (1999)'
ORDER BY tr.averageRating DESC
LIMIT 5