SELECT tb2.primaryTitle AS recommended_movie, tb2.startYear AS release_year, tr.averageRating AS average_rating
FROM title_basics AS tb1
JOIN title_ratings AS tr1 ON tb1.tconst = tr1.tconst
JOIN title_basics AS tb2 ON tb1.genres[1] = tb2.genres[1] OR tb1.genres[2] = tb2.genres[2] OR tb1.genres[3] = tb2.genres[3]
JOIN title_ratings AS tr2 ON tb2.tconst = tr2.tconst
WHERE tb1.primaryTitle IN ('Forgetting Sarah Marshall (2008)', 'Knocked Up (2007)')
AND tb2.titleType = 'movie'
AND tb2.startYear >= 2000
AND tr2.numVotes > 1000
AND tr2.averageRating >= 7
AND tb2.tconst != tb1.tconst
ORDER BY tr2.averageRating DESC
LIMIT 5