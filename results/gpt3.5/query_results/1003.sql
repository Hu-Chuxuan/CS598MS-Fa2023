SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Comedy%'
AND tr.numVotes > 1000
AND tb1.startYear < 1995
AND tb1.startYear > 1980
AND tb1.primaryTitle NOT IN ('Regarding Henry (1991)', 'Sleepless in Seattle (1993)', "Ferris Bueller's Day Off (1986)")
ORDER BY tr.averageRating DESC
LIMIT 5