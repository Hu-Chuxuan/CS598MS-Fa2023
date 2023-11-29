SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres NOT LIKE '%Thriller%'
AND genres NOT LIKE '%Action%'
AND genres NOT LIKE '%Horror%'
AND primaryTitle != 'New Town Killers (2008)'
AND averageRating >= 5.0
AND numVotes > 1000
ORDER BY averageRating DESC
LIMIT 10