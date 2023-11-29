SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear > 2017
AND primaryTitle NOT IN ('The Incredibles', 'Moana', 'Coco', 'The Boss Baby', 'Inside Out', 'Ice Age', 'Despicable Me')
ORDER BY numVotes DESC
LIMIT 5