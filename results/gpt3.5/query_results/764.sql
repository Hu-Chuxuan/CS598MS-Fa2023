SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear < 1991
AND tb.originalTitle LIKE '%Hannibal Lecture%'
AND tb.originalTitle LIKE '%serial killer%'
AND tb.originalTitle NOT LIKE '%The Silence of the Lambs%'
AND tb.originalTitle NOT LIKE '%Red Dragon%'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5