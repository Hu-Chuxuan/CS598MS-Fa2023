SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND NOT genres LIKE '%Sad%'
AND genres LIKE '%Documentary%'
AND NOT (primaryTitle = 'Bio-Dome (1996)' OR primaryTitle = 'This Is 40 (2012)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5