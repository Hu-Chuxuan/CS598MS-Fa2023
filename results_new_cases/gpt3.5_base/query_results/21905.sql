SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_principals AS tp1 ON tb1.tconst = tp1.tconst
JOIN title_basics AS tb2 ON tp1.nconst = tb2.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear >= 1980
AND tb1.genres LIKE CONCAT('%',tb2.genres,'%')
AND tb2.primaryTitle = 'A Nightmare on Elm Street'
AND tb1.primaryTitle NOT IN ('Friday the 13th','A Nightmare on Elm Street')
GROUP BY tb1.primaryTitle
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5