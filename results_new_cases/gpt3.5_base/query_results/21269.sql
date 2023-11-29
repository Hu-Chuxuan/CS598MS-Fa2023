SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Animation%'
AND tb.startYear >= 2016
AND tb.primaryTitle NOT IN ('The Secret Life of Pets', 'Moana', 'Taxi Driver', 'The Curious Case of Benjamin Button', 'Cruel Intentions', 'Mr. & Mrs. Smith', 'Fight Club', 'The Mask', 'Troy')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5