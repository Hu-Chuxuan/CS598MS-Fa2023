SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.startYear = 1982
AND tb.primaryTitle != 'Poltergeist'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5