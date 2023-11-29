SELECT tb.primaryTitle AS recommended_movie, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.genres NOT LIKE '%Horror%'
AND tb.genres NOT LIKE '%Thriller%'
AND tb.genres NOT LIKE '%Crime%'
AND tb.genres NOT LIKE '%Mystery%'
AND tb.genres NOT LIKE '%War%'
AND tb.genres NOT LIKE '%Fantasy%'
AND tb.genres NOT LIKE '%Sci-Fi%'
AND tb.genres NOT LIKE '%Family%'
AND tb.genres NOT LIKE '%Animation%'
AND tb.genres NOT LIKE '%Music%'
AND tb.genres NOT LIKE '%Sport%'
AND tb.genres NOT LIKE '%Documentary%'
AND tb.genres NOT LIKE '%Biography%'
AND tb.genres NOT LIKE '%History'
AND tb.genres NOT LIKE '%Musical'
AND tb.genres NOT LIKE '%Western'
AND tb.genres NOT LIKE '%Film-Noir'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5