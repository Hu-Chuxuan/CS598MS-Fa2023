SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Comedy%'
AND tb1.startYear >= 1990
AND tb1.startYear < 2000
AND tr.averageRating >= 7
AND tb1.tconst NOT IN ('tt1314652', 'tt1130884', 'tt0167404', 'tt2267998')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5