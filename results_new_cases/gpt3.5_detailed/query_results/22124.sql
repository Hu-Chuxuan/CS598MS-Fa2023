SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Action%'
AND tb1.startYear > 2017
AND tb1.tconst NOT IN ('tt0054215', 'tt0414993')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5