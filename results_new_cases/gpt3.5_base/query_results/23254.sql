SELECT DISTINCT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_ratings tr1 ON tb1.tconst = tr1.tconst
JOIN title_principals tp1 ON tp1.tconst = tb1.tconst
JOIN title_basics tb2 ON tb2.primaryTitle = 'Ferdinand'
JOIN title_basics tb3 ON tb3.primaryTitle = 'The Secret Life of Pets'
WHERE tp1.nconst IN (tb2.tconst, tb3.tconst)
AND tb1.titleType = 'movie'
AND tb1.startYear >= 2013
AND tb1.startYear <= 2017
AND tb1.tconst NOT IN ('tt4094724', 'tt5052448')  -- Exclude movies Ferdinand (2017) and The Secret Life of Pets (2016)
ORDER BY tr1.averageRating DESC, tr1.numVotes DESC
LIMIT 5