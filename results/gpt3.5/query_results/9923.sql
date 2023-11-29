SELECT tb2.primaryTitle AS recommended_movie, tr.averageRating AS rating
FROM title_basics AS tb1
JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
JOIN title_ratings AS tr ON tb2.tconst = tr.tconst
WHERE tb1.primaryTitle = 'Step Brothers'
AND tb1.startYear = 2008
AND tr.numVotes > 1000
AND (tb2.primaryTitle != 'Step Brothers' OR tb2.startYear != 2008)
ORDER BY tr.averageRating DESC
LIMIT 1