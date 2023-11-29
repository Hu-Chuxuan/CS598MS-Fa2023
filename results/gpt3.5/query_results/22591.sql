SELECT tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear = 2018
AND tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('Phantom Thread', 'The Darkest Hour', 'The Hurt Locker', 'Dunkirk', 'Darkest Hour')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5