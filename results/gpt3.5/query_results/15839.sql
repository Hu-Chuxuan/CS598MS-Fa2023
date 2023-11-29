SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres NOT LIKE '%Horror%'
AND tb.startYear >= 1990
AND tb.startYear <= 2000
AND tb.runtimeMinutes <= 120
AND tr.averageRating >= 6.0
AND tr.numVotes >= 1000
AND tb.primaryTitle != 'Casper  (1995)'
AND (tb.genres LIKE '%Family%' OR tb.genres LIKE '%Comedy%')
ORDER BY tr.averageRating DESC
LIMIT 5