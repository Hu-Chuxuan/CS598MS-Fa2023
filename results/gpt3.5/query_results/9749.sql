SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%romance%'
AND tb.startYear >= 2000
AND tb.primaryTitle != 'Bridget Jones\'s Diary  (2001)'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5