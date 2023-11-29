SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE (tb1.genres LIKE '%Action%' OR tb1.genres LIKE '%Thriller%')
AND tb1.startYear < 1990
AND tr.numVotes > 1000
AND tb1.tconst NOT IN ('tt2279353', 'tt2704998', 'tt1499658')
ORDER BY tr.averageRating DESC
LIMIT 5