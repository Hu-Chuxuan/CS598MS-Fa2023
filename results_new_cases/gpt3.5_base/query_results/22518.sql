SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle IN ('Coco', 'The Incredibles')
AND tb1.titleType = 'movie'
AND tb1.startYear > 2004
AND tb1.primaryTitle NOT IN ('Coco', 'The Incredibles', 'Casino', 'Guardians of the Galaxy', 'Goodfellas', 'The Avengers')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5