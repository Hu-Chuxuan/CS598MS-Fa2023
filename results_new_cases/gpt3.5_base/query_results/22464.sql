SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'The Incredibles'
AND tb1.titleType = 'movie'
AND tb1.startYear > 2004
AND tb1.averageRating > 7
AND tb1.numVotes > 1000
AND tb1.primaryTitle NOT IN ('The Incredibles', 'Moana', 'Coco', 'The Boss Baby', 'Inside Out', 'Ice Age', 'Despicable Me')
ORDER BY tb1.averageRating DESC, tb1.numVotes DESC
LIMIT 5