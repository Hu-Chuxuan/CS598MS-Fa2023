SELECT tb.primaryTitle AS Recommended_Movies
FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Animation%'
AND tb.startYear >= 2016
AND tb.primaryTitle NOT IN ('Black Panther (2018)', 'Justice League  (2017)', 'Batman ')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5