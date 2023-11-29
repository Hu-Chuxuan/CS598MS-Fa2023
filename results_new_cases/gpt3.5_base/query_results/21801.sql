SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_ratings tr1 ON tb1.tconst = tr1.tconst
JOIN title_basics tb2 ON tb2.primaryTitle = 'Kiss the Girls' AND tb1.startYear = tb2.startYear
WHERE tb1.titleType = 'movie'
AND tr1.averageRating > 7
AND tb1.primaryTitle NOT IN ('Bio-Dome (1996)', "Can't Hardly Wait", "My Best Friend's Wedding (1997)", 'Happy Gilmore (1996)')
ORDER BY tr1.averageRating DESC, tr1.numVotes DESC
LIMIT 5