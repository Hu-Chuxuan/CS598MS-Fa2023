SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.startYear IN ('2015', '2013', '1988', '2014')
AND tb.titleType = 'movie'
AND tb.primaryTitle NOT IN ('Mission: Impossible – Rogue Nation', 'Oblivion', 'Rain Man', 'Edge of Tomorrow')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5