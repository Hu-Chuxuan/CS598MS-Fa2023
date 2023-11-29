SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Family%'
AND tb.startYear > 1984
AND tb.tconst NOT IN ('The Greatest Showman (2017)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5