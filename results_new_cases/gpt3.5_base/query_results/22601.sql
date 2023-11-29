SELECT tb.primaryTitle AS recommended_movie, tb.startYear
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Drama%'
AND tb.startYear < 1960
AND tb.primaryTitle NOT IN ('Rebecca', 'Touch of Evil', 'Citizen Kane', 'Vertigo', 'To Catch a Thief', 'The Magnificent Ambersons', 'The Maltese Falcon')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5