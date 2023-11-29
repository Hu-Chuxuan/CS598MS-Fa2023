SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
JOIN title_principals tp1 ON tb1.tconst = tp1.tconst
JOIN title_basics tb2 ON tb2.primaryTitle = 'Dumb and Dumber'
JOIN title_basics tb3 ON tb3.primaryTitle = 'Superbad'
WHERE tp1.nconst IN (tb2.knownForTitles, tb3.knownForTitles)
AND tb1.titleType = 'movie'
AND tb1.startYear > 2007
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10