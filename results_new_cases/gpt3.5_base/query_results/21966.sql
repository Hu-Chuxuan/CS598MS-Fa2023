SELECT tb.primaryTitle AS RecommendedMovie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' 
AND tb.genres LIKE '%Comedy%'
AND tb.genres NOT LIKE '%Horror%'
AND tb.startYear >= 2000
AND tr.averageRating >= 7
AND tb.primaryTitle NOT IN ('Edward Scissorhands (1990)', 'Blow  (2001)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5