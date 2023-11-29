SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
JOIN title_basics tb2 ON tb1.genres = tb2.genres
JOIN title_ratings tr2 ON tb2.tconst = tr2.tconst
WHERE tb2.primaryTitle IN ('Ace Ventura: Pet Detective (1994)', 'Dumb and Dumber (1994)')
AND tb1.primaryTitle NOT IN ('Dumb and Dumber (1994)', 'Superbad  (2007)', 'Fight Club (1999)', 'Pulp Fiction (1994)', 'Deadpool  (2016)')
AND tb1.startYear >= 1990
AND tb1.titleType = 'movie'
ORDER BY tr2.averageRating DESC, tr2.numVotes DESC
LIMIT 5