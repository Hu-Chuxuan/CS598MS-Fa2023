SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_ratings tr1 ON tb1.tconst = tr1.tconst
JOIN title_basics tb2 ON tb1.genres = tb2.genres
JOIN title_ratings tr2 ON tb2.tconst = tr2.tconst
WHERE tb1.startYear > 2000 
AND tb1.titleType = 'movie'
AND tb2.primaryTitle = 'Juno'
AND (tb2.primaryTitle NOT IN ('Shakespeare in Love (1998)', 'Citizen Kane (1941)', 'Casablanca (1942)'))
ORDER BY tr1.averageRating DESC, tr1.numVotes DESC
LIMIT 5