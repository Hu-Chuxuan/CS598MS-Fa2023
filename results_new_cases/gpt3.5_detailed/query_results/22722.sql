SELECT tb.primaryTitle AS recommended_movies
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%War%'
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('Dunkirk', 'Darkest Hour', 'Atonement', 'Lars and the Real Girl', 'Meet the Fockers', 'What About Bob?', 'The Best Exotic Marigold Hotel', 'The Grand Budapest Hotel')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5