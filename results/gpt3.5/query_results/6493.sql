SELECT tb.primaryTitle AS recommendation_title, tb.startYear AS recommendation_year, tr.averageRating AS recommendation_rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1970
AND tb.startYear <= 1985
AND tb.genres LIKE '%Comedy%'
AND tr.averageRating >= 7
AND tb.tconst NOT IN ('tt0071230', 'tt0107048', 'tt0087332', 'tt0080388')
ORDER BY tr.numVotes DESC
LIMIT 5