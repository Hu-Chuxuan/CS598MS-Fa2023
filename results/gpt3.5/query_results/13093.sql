SELECT tb1.primaryTitle, tb1.startYear, tb1.runtimeMinutes, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.startYear = 2017
AND tb1.titleType = 'movie'
AND (tb1.genres LIKE '%Action%' OR tb1.genres LIKE '%Adventure%')
AND tb1.tconst != 'tt0451279'
AND tb1.tconst NOT IN ('tt2527336')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5