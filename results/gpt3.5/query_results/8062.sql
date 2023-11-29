SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2016
AND (tb.primaryTitle NOT IN ('Mother! (2017)', 'Airplane! (1980)', 'Pitch Perfect 3 (2017)') AND tr.averageRating >= 6)
ORDER BY tr.numVotes DESC
LIMIT 5